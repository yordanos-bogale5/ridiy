import { Component, OnInit, ViewChild } from '@angular/core';
import { GoogleMap } from '@angular/google-maps';
import { ActivatedRoute, Router } from '@angular/router';
import { TranslateService } from '@ngx-translate/core';
import { GooglePlacesComponent } from '../../../../@components/google-places.component';
import { NzMessageService } from 'ng-zorro-antd/message';
import { DispatcherService, PointWithAddress } from '../dispatcher.service';
import { HttpClient } from '@angular/common/http';
import { DispatcherStateService } from '../dispatcher-state.service';

// TypeScript interfaces for location data
interface LocationPoint {
  lat: number;
  lng: number;
}

@Component({
  standalone: false,
  selector: 'app-dispatcher-locations-select',
  templateUrl: './dispatcher-locations-select.component.html',
  styles: [],
})
export class DispatcherLocationsSelectComponent implements OnInit {
  points: PointWithAddress[] = [];
  drivers: any[] = [];
  isGoogleMapsLoaded = false;
  manualPickupAddress = '';
  manualDestinationAddress = '';

  @ViewChild(GoogleMap, { static: false }) map!: GoogleMap;
  @ViewChild(GooglePlacesComponent, { static: false })
  places!: GooglePlacesComponent;

  constructor(
    private messageService: NzMessageService,
    private translate: TranslateService,
    private route: ActivatedRoute,
    private router: Router,
    private dispatcherService: DispatcherService,
    private http: HttpClient,
    private dispatcherState: DispatcherStateService,
  ) {}

  ngOnInit(): void {
    // Restore state if available
    const state = this.dispatcherState.getAll();
    if (state.points) {
      this.points = [...state.points];
    }
    // Check if Google Maps is available
    this.checkGoogleMapsAvailability();
  }

  checkGoogleMapsAvailability() {
    if (typeof google !== 'undefined' && google.maps) {
      this.isGoogleMapsLoaded = true;
    } else {
      // Try again after a short delay
      setTimeout(() => this.checkGoogleMapsAvailability(), 500);
    }
  }

  async addManualLocation(address: string, type: 'pickup' | 'destination') {
    if (!address?.trim()) {
      return;
    }
    const loadingId = this.messageService.loading('Geocoding address...', { nzDuration: 0 }).messageId;
    try {
      let location: LocationPoint | null = null;
      if (this.isGoogleMapsLoaded && typeof google !== 'undefined') {
        try {
          location = await this.geocodeWithGoogleMaps(address.trim());
        } catch {}
      }
      if (!location) {
        try {
          location = await this.geocodeWithNominatim(address.trim());
        } catch {}
      }
      if (!location) {
        location = {
          lat: type === 'pickup' ? 37.7749 : 37.7849,
          lng: type === 'pickup' ? -122.4194 : -122.4094
        };
        this.messageService.warning('Could not geocode address. Using default coordinates.');
      }
      const point: PointWithAddress = {
        location: location,
        address: address.trim()
      };
      this.points.push(point);
      this.dispatcherState.set('points', this.points);
      // Clear the input
      if (type === 'pickup') {
        this.manualPickupAddress = '';
      } else {
        this.manualDestinationAddress = '';
      }
      this.messageService.remove(loadingId);
      this.messageService.success(`${type === 'pickup' ? 'Pickup' : 'Destination'} location added: ${address}`);
    } catch (error) {
      this.messageService.remove(loadingId);
      this.messageService.error('Failed to add location. Please try again.');
    }
  }

  private async geocodeWithGoogleMaps(address: string): Promise<LocationPoint | null> {
    return new Promise((resolve, reject) => {
      if (!this.isGoogleMapsLoaded || typeof google === 'undefined') {
        reject('Google Maps not available');
        return;
      }

      const geocoder = new google.maps.Geocoder();
      geocoder.geocode({ address: address }, (results, status) => {
        if (status === google.maps.GeocoderStatus.OK && results && results.length > 0) {
          const location = results[0].geometry.location;
          resolve({
            lat: location.lat(),
            lng: location.lng()
          });
        } else {
          reject(`Geocoding failed: ${status}`);
        }
      });
    });
  }

  private async geocodeWithNominatim(address: string): Promise<LocationPoint | null> {
    try {
      const url = `https://nominatim.openstreetmap.org/search?format=json&q=${encodeURIComponent(address)}&limit=1`;
      const response = await this.http.get<any[]>(url).toPromise();

      if (response && response.length > 0) {
        const result = response[0];
        return {
          lat: parseFloat(result.lat),
          lng: parseFloat(result.lon)
        };
      }
      return null;
    } catch (error) {
      console.error('Nominatim geocoding error:', error);
      return null;
    }
  }

  getAddress(place: any) {
    if (this.map) {
      this.map.panTo(place.geometry.location);
    }
  }

  removeLastPoint() {
    if (this.points.length > 0) {
      const removedPoint = this.points.pop();
      this.messageService.success(`Removed location: ${removedPoint?.address}`);
    } else {
      this.messageService.warning('No locations to remove');
    }
  }

  mapClicked(event: google.maps.MapMouseEvent) {
    if (!event.latLng) return;
    const geocoder = new google.maps.Geocoder();
    const id = this.messageService.loading('Determining address...', { nzDuration: 0 }).messageId;
    geocoder.geocode({ location: event.latLng }, (results, status) => {
      if (status === google.maps.GeocoderStatus.OK && results && results.length > 0) {
        this.points.push({
          location: event.latLng?.toJSON(),
          address: results[0].formatted_address,
        });
        this.dispatcherState.set('points', this.points);
        this.messageService.remove(id);
        this.messageService.success(`Location added: ${results[0].formatted_address}`);
      } else {
        this.messageService.remove(id);
        this.messageService.error('Could not determine address for this location');
      }
    });
  }

  goToServiceSelection() {
    if (this.points.length === 0) {
      this.messageService.error('Please add at least one location before proceeding');
      return;
    }
    this.dispatcherState.set('points', this.points);
    try {
      const serializedPoints = this.dispatcherService.serializePoints(this.points);
      const currentParams = this.route.snapshot.queryParams;
      const hasRider = currentParams.riderId;
      const hasGuest = currentParams.guestPhoneNumber && currentParams.guestPhoneCountryCode;
      if (!hasRider && !hasGuest) {
        this.messageService.error('Missing passenger information. Please go back and enter passenger details.');
        return;
      }
      const navigationParams = {
        points: serializedPoints,
        ...currentParams
      };
      this.router.navigate(['../service-select'], {
        relativeTo: this.route,
        queryParams: navigationParams,
      });
    } catch (error) {
      this.messageService.error('Failed to proceed. Please try again.');
    }
  }

  centerMap() {
    if (!this.isGoogleMapsLoaded || !this.map) {
      return;
    }

    if (this.drivers.length == 0) {
      this.map.zoom = 1;
      return;
    }
    if (this.drivers.length == 1) {
      this.map.center = this.drivers[0].location;
      this.map.zoom = 16;
      return;
    }
    const latlngbounds = new google.maps.LatLngBounds();
    for (const location of this.drivers) {
      latlngbounds.extend(location.location);
    }
    const placeBounds = new google.maps.LatLngBounds(
      new google.maps.LatLng(
        latlngbounds.getSouthWest().lat() - 2,
        latlngbounds.getSouthWest().lng() - 2,
      ),
      new google.maps.LatLng(
        latlngbounds.getNorthEast().lat() + 2,
        latlngbounds.getNorthEast().lng() + 2,
      ),
    );
    if (this.places) {
      this.places.setBounds(placeBounds);
    }
    this.map.fitBounds(latlngbounds);
  }


}
