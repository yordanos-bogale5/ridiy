import { AfterViewInit, Component, OnDestroy, OnInit } from '@angular/core';
import { UntypedFormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import {
  CreateReviewParameterGQL,
  CreateServiceOptionGQL,
  ReviewParameterViewQuery,
  ServiceOptionIcon,
  ServiceOptionType,
  ServiceOptionViewQuery,
  UpdateReviewParameterGQL,
  UpdateServiceOptionGQL,
} from '../../../../../generated/graphql';
import { NzMessageService } from 'ng-zorro-antd/message';
import { firstValueFrom, Subscription } from 'rxjs';

@Component({
  standalone: false,
  selector: 'app-service-option-view',
  templateUrl: './service-option-view.component.html',
})
export class ServiceOptionViewComponent implements OnInit, OnDestroy {
  form;
  subscription?: Subscription;
  types = Object.keys(ServiceOptionType);
  icons = Object.keys(ServiceOptionIcon);
  type = ServiceOptionType;

  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private fb: UntypedFormBuilder,
    private createGQL: CreateServiceOptionGQL,
    private updateGQL: UpdateServiceOptionGQL,
    private msg: NzMessageService,
  ) {
    this.form = this.fb.group({
      id: [null],
      name: [null, Validators.required],
      icon: [null, Validators.required],
      type: [null, Validators.required],
      additionalFee: [null],
    });
  }

  ngOnInit(): void {
    this.subscription = this.route.data.subscribe((data) => {
      if (data.serviceOption != null) {
        const val: ServiceOptionViewQuery = data.serviceOption.data;
        const serviceOption = val.serviceOption;
        if (serviceOption != null) {
          this.form.patchValue(serviceOption);
        }
      }
    });
  }

  ngOnDestroy(): void {
    this.subscription?.unsubscribe();
  }

  async onSubmit() {
    try {
      console.log(this.form.value);
      const { id, name, icon, type, additionalFee } = this.form.value;
      if (id == null) {
        await firstValueFrom(
          this.createGQL.mutate({
            input: {
              name,
              icon,
              type,
              additionalFee: parseFloat(additionalFee),
            },
          }),
        );
      } else {
        await firstValueFrom(
          this.updateGQL.mutate({
            id,
            update: {
              name,
              icon,
              type,
              additionalFee: parseFloat(additionalFee),
            },
          }),
        );
      }
      this.router.navigate(['management/service-options'], {
        relativeTo: this.route.root,
      });
    } catch (error: any) {
      this.msg.error(error.message);
    }
  }
}
