import { Component, OnInit } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { Router } from '@angular/router';
import { CurrentConfigService } from './cms/current-config.service';
import { ThemeService } from './@services/theme.service';

@Component({
  standalone: false,
  selector: 'app-root',
  template: '<router-outlet *ngIf="isLoaded"></router-outlet>',
})
export class AppComponent implements OnInit {
  isDarkMode = false;
  isCollapsed = false;
  isLoaded = false;

  constructor(
    public translate: TranslateService,
    private currentConfigService: CurrentConfigService,
    private router: Router,
    private themeService: ThemeService,
  ) {
    translate.use(localStorage.getItem('lang') ?? 'en');
  }

  ngOnInit(): void {
    this.themeService.updateTheme();
    this.loadConfiguration();
  }

  async loadConfiguration() {
    try {
      // Use the provided Google Maps API key directly
      const googleMapsApiKey = 'AIzaSyDJOJm4_qAUIAU5jVpJoAhHwbSPL9KwJBc';

      await this.loadScript(
        `https://maps.googleapis.com/maps/api/js?key=${googleMapsApiKey}&libraries=drawing,places&callback=initMap`,
      );

      // Navigate to dispatcher after Google Maps is loaded
      this.router.navigateByUrl('home/dispatcher');
      this.isLoaded = true;
    } catch (error) {
      // Even if Google Maps fails, still go to dispatcher
      this.router.navigateByUrl('home/dispatcher');
      this.isLoaded = true;
    }
  }

  loadScript(name: string) {
    return new Promise<void>((resolve, reject) => {
      // Check if Google Maps is already loaded
      if (typeof google !== 'undefined' && google.maps) {
        console.log('Google Maps already loaded');
        resolve();
        return;
      }

      const script = document.createElement('script');
      script.type = 'text/javascript';
      script.src = name;

      // Set up the callback function
      (window as unknown as any).initMap = () => {
        console.log('Google Maps initMap callback called');
        resolve();
      };

      // Handle script load errors
      script.onerror = (error) => {
        console.error('Failed to load Google Maps script:', error);
        reject(error);
      };

      // Handle successful script load (backup in case initMap doesn't fire)
      script.onload = () => {
        console.log('Google Maps script loaded');
        // Give it a moment for the API to initialize
        setTimeout(() => {
          if (typeof google !== 'undefined' && google.maps) {
            resolve();
          }
        }, 1000);
      };

      document.getElementsByTagName('head')[0].appendChild(script);
    });
  }
}
