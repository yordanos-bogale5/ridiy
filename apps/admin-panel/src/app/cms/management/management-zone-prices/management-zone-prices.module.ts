import { NgModule } from '@angular/core';
import { ManagementZonePricesRoutingModule } from './management-zone-prices-routing.module';
import { ZonePricesListComponent } from './zone-prices-list/zone-prices-list.component';
import { ZonePriceViewComponent } from './zone-price-view/zone-price-view.component';
import { TagColorService } from '../../../@services/tag-color/tag-color.service';
import { SharedModule } from '../../../@components/shared.module';

@NgModule({
  declarations: [ZonePricesListComponent, ZonePriceViewComponent],
  imports: [ManagementZonePricesRoutingModule, SharedModule],
  providers: [TagColorService],
})
export class ManagementZonePricesModule {}
