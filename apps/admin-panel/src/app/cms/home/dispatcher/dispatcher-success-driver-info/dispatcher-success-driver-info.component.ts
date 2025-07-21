import { Component, OnInit } from '@angular/core';
import { DispatcherStateService } from '../dispatcher-state.service';

@Component({
  standalone: false,
  selector: 'app-dispatcher-success-driver-info',
  templateUrl: './dispatcher-success-driver-info.component.html',
  styles: [],
})
export class DispatcherSuccessDriverInfoComponent implements OnInit {
  orderId: string;
  selectedService: any;
  points: any[];
  riderId: string;

  constructor(
    private dispatcherState: DispatcherStateService,
  ) {}

  ngOnInit(): void {
    // Restore state if available
    const state = this.dispatcherState.getAll();
    this.orderId = state.orderId;
    this.selectedService = state.selectedService;
    this.points = state.points;
    this.riderId = state.riderId;
    // Optionally restore other state as needed
  }
}
