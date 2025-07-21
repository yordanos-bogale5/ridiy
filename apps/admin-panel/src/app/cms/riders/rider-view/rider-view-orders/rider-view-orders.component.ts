import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  OrderStatus,
  RiderOrdersQuery,
} from '../../../../../generated/graphql';
import { TableService } from '../../../../@services/table-service';
import { TagColorService } from '../../../../@services/tag-color/tag-color.service';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

@Component({
  standalone: false,
  selector: 'app-rider-view-orders',
  templateUrl: './rider-view-orders.component.html',
})
export class RiderViewOrdersComponent implements OnInit {
  query?: Observable<ApolloQueryResult<RiderOrdersQuery>>;
  statuses = Object.keys(OrderStatus).map((key) => ({ text: key, value: key }));

  constructor(
    private route: ActivatedRoute,
    public tagColor: TagColorService,
    public tableService: TableService,
  ) {}

  ngOnInit(): void {
    this.query = this.route.data.pipe(map((data) => data.orders));
  }
}
