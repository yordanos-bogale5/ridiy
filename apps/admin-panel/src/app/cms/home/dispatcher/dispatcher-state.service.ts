import { Injectable } from '@angular/core';

export interface DispatcherState {
  guestPhoneNumber?: string;
  guestPhoneCountryCode?: string;
  riderId?: string;
  existingRider?: any;
  points?: any[];
  addresses?: string[];
  selectedService?: any;
  orderId?: string;
  // Add more fields as needed for your flow
}

@Injectable({ providedIn: 'root' })
export class DispatcherStateService {
  private state: DispatcherState = {};

  set<K extends keyof DispatcherState>(key: K, value: DispatcherState[K]) {
    this.state[key] = value;
  }

  get<K extends keyof DispatcherState>(key: K): DispatcherState[K] {
    return this.state[key];
  }

  getAll(): DispatcherState {
    return { ...this.state };
  }

  setAll(newState: Partial<DispatcherState>) {
    this.state = { ...this.state, ...newState };
  }

  clear() {
    this.state = {};
  }
} 