import { Column, Entity, ManyToMany, PrimaryGeneratedColumn } from 'typeorm';
import { ServiceOptionIcon } from '../enums/service-option-icon.enum';
import { ServiceOptionType } from '../enums/service-option-type.enum';
import { TaxiOrderEntity } from './taxi-order.entity';
import { ServiceEntity } from './service.entity';

@Entity('service_option')
export class ServiceOptionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @Column({
    nullable: true,
  })
  description?: string;

  @Column('enum', {
    enum: ServiceOptionType,
  })
  type!: ServiceOptionType;

  @Column('float', {
    precision: 12,
    scale: 2,
    nullable: true,
  })
  additionalFee?: number;

  @Column('enum', {
    enum: ServiceOptionIcon,
  })
  icon!: ServiceOptionIcon;

  @ManyToMany(() => ServiceEntity, (service) => service.options)
  services!: ServiceEntity;

  @ManyToMany(() => TaxiOrderEntity, (request) => request.options)
  requests!: TaxiOrderEntity[];
}
