import {
  Column,
  CreateDateColumn,
  Entity,
  JoinColumn,
  ManyToMany,
  ManyToOne,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { DriverEntity } from './driver.entity';
import { FeedbackParameterEntity } from './feedback-parameter.entity';
import { TaxiOrderEntity } from './taxi-order.entity';

@Entity('request_review')
export class FeedbackEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn({ nullable: true })
  reviewTimestamp!: Date;

  @Column('tinyint')
  score!: number;

  @Column({ name: 'review', nullable: true })
  description?: string;

  @ManyToOne(() => DriverEntity, (driver) => driver.feedbacks)
  driver!: DriverEntity;

  @Column()
  driverId!: number;

  @OneToOne(() => TaxiOrderEntity, (order) => order.review)
  @JoinColumn()
  request?: TaxiOrderEntity;

  @Column({ nullable: true })
  requestId?: number;

  @ManyToMany(
    () => FeedbackParameterEntity,
    (feedbackParameter) => feedbackParameter.feedbacks,
  )
  parameters!: FeedbackParameterEntity[];
}
