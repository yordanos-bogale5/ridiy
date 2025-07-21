import { Logger, Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { DataSourceOptions } from 'typeorm';
import { CarColorEntity } from './entities/taxi/car-color.entity';
import { CarModelEntity } from './entities/taxi/car-model.entity';
import { TaxiSupportRequestActivityEntity } from './entities/taxi/taxi-support-request-activity.entity';
import { TaxiSupportRequestEntity } from './entities/taxi/taxi-support-request.entity';
import { CouponEntity } from './entities/coupon.entity';
import { DriverTransactionEntity } from './entities/taxi/driver-transaction.entity';
import { DriverWalletEntity } from './entities/taxi/driver-wallet.entity';
import { DriverEntity } from './entities/taxi/driver.entity';
import { FeedbackParameterEntity } from './entities/taxi/feedback-parameter.entity';
import { FeedbackEntity } from './entities/taxi/feedback.entity';
import { FleetTransactionEntity } from './entities/taxi/fleet-transaction.entity';
import { FleetWalletEntity } from './entities/taxi/fleet-wallet.entity';
import { FleetEntity } from './entities/taxi/fleet.entity';
import { MediaEntity } from './entities/media.entity';
import { OperatorRoleEntity } from './entities/operator-role.entity';
import { OperatorEntity } from './entities/operator.entity';
import { OrderMessageEntity } from './entities/taxi/request-message.entity';
import { TaxiOrderEntity } from './entities/taxi/taxi-order.entity';
import { PaymentGatewayEntity } from './entities/payment-gateway.entity';
import { ProviderTransactionEntity } from './entities/provider-transaction.entity';
import { ProviderWalletEntity } from './entities/provider-wallet.entity';
import { RegionEntity } from './entities/taxi/region.entity';
import { RiderAddressEntity } from './entities/rider-address.entity';
import { CustomerEntity } from './entities/customer.entity';
import { RiderTransactionEntity } from './entities/rider-transaction.entity';
import { RiderWalletEntity } from './entities/rider-wallet.entity';
import { ServiceCategoryEntity } from './entities/taxi/service-category.entity';
import { ServiceEntity } from './entities/taxi/service.entity';
import { PaymentEntity } from './entities/payment.entity';
import { ServiceOptionEntity } from './entities/taxi/service-option.entity';
import { GiftCodeEntity } from './entities/gift-code.entity';
import { GiftBatchEntity } from './entities/gift-batch.entity';
import { SOSEntity } from './entities/taxi/sos.entity';
import { SOSActivityEntity } from './entities/taxi/sos-activity.entity';
import { AnnouncementEntity } from './entities/announcement.entity';
import { ZonePriceEntity } from './entities/taxi/zone-price.entity';
import { GatewayToUserEntity } from './entities/gateway-to-user.entity';
import { OrderCancelReasonEntity } from './entities/taxi/order-cancel-reason.entity';
import { SavedPaymentMethodEntity } from './entities/saved-payment-method.entity';
import { RiderReviewEntity } from './entities/taxi/rider-review.entity';
import { PayoutAccountEntity } from './entities/payout-account.entity';
import { PayoutMethodEntity } from './entities/payout-method.entity';
import { TaxiPayoutSessionEntity } from './entities/taxi/taxi-payout-session.entity';
import { ParkSpotEntity } from './entities/parking/park-spot.entity';
import { ParkOrderEntity } from './entities/parking/park-order.entity';
import { ParkingFeedbackEntity } from './entities/parking/parking-feedback.entity';
import { ParkingFeedbackParameterEntity } from './entities/parking/parking-feedback-parameter.entity';
import { ParkingCustomerNotificationEntity } from './entities/parking/parking-customer-notification.entity';
import { ParkingProviderNotificationEntity } from './entities/parking/parking-provider-notification.entity';
import { RegionCategoryEntity } from './entities/taxi/region-category.entity';
import { ShopOrderEntity } from './entities/shop/shop-order.entity';
import { ShopOrderCartEntity } from './entities/shop/shop-order-cart.entity';
import { ShopOrderCartProductEntity } from './entities/shop/shop-order-cart-product.entity';
import { ShopProductPresetEntity } from './entities/shop/shop-product-preset.entity';
import { ProductVariantEntity } from './entities/shop/product-variant.entity';
import { ProductEntity } from './entities/shop/product.entity';
import { ProductOptionEntity } from './entities/shop/product-option.entity';
import { ProductCategoryEntity } from './entities/shop/product.category.entity';
import { ShopEntity } from './entities/shop/shop.entity';
import { ShopCategoryEntity } from './entities/shop/shop-category.entity';
import { ShopDeliveryZoneEntity } from './entities/shop/shop-delivery-zone.entity';
import { ShopFeedbackEntity } from './entities/shop/shop-feedback.entity';
import { CustomerSessionEntity } from './entities/customer-session.entity';
import { RequestActivityEntity } from './entities/taxi/request-activity.entity';
import { ZonePriceCategoryEntity } from './entities/taxi/zone-price-category.entity';
import { ShopSessionEntity } from './entities/shop/shop-session.entity';
import { OperatorSessionEntity } from './entities/operator-session.entity';
import { DriverSessionEntity } from './entities/taxi/driver-session.entity';
import { FleetStaffEntity } from './entities/taxi/fleet-staff.entity';
import { FleetStaffSessionEntity } from './entities/taxi/fleet-staff-session.entity';
import { ShopSupportRequestEntity } from './entities/shop/shop-support-request.entity';
import { ShopSupportRequestActivityEntity } from './entities/shop/shop-support-request-activity.entity';
import { TaxiOrderNoteEntity } from './entities/taxi/taxi-order-note.entity';
import { ShopFeedbackParameterEntity } from './entities/shop/shop-feedback-parameter.entity';
import { ParkingLoginSessionEntity } from './entities/parking/parking-login-session.entity';
import { ShopNoteEntity } from './entities/shop/shop-note.entity';
import { ShopLoginSessionEntity } from './entities/shop/shop-login-session.entity';
import { ShopOrderNoteEntity } from './entities/shop/shop-order-note.entity';
import { ShopOrderStatusHistoryEntity } from './entities/shop/shop-order-status-history.entity';
import { ShopTransactionEntity } from './entities/shop/shop-transaction.entity';
import { ShopPayoutSessionEntity } from './entities/shop/shop-payout-session.entity';
import { ParkingPayoutSessionEntity } from './entities/parking/parking-payout-session.entity';
import { TaxiPayoutSessionPayoutMethodDetailEntity } from './entities/taxi/taxi-payout-session-payout-method-detail.entity';
import { ShopPayoutSessionPayoutMethodDetailEntity } from './entities/shop/shop-payout-session-payout-method-detail.entity';
import { ParkingPayoutSessionPayoutMethodDetailEntity } from './entities/parking/parking-payout-session-payout-method-detail.entity';
import { ShopWalletEntity } from './entities/shop/shop-wallet.entity';
import { ParkingWalletEntity } from './entities/parking/parking-wallet.entity';
import { ParkingTransactionEntity } from './entities/parking/parking-transaction.entity';
import { ParkSpotNoteEntity } from './entities/parking/park-spot-note.entity';
import { ParkOrderNoteEntity } from './entities/parking/park-order-note.entity';
import { ParkOrderActivityEntity } from './entities/parking/park-order-activity.entity';
import { ParkingSupportRequestEntity } from './entities/parking/parking-support-request.entity';
import { ParkingSupportRequestActivityEntity } from './entities/parking/parking-support-request-activity.entity';
import { CustomerNoteEntity } from './entities/customer-note.entity';
import { CampaignCodeEntity } from './entities/campaign-code.entity';
import { CampaignEntity } from './entities/campaign.entity';
import { SOSReasonEntity } from './entities/taxi/sos-reason.entity';
import { DriverToDriverDocumentEntity } from './entities/taxi/driver-to-driver-document.entity';
import { DriverDocumentEntity } from './entities/taxi/driver-document.entity';
import { DriverDocumentRetentionPolicyEntity } from './entities/taxi/driver-document-retention-policy.entity';
import { DriverNoteEntity } from './entities/taxi/driver-note.entity';
import { SMSEntity } from './entities/sms.entity';
import { ShopDocumentEntity } from './entities/shop/shop-document.entity';
import { ShopToShopDocumentEntity } from './entities/shop/shop-to-shop-document.entity';
import { ShopDocumentRetentionPolicyEntity } from './entities/shop/shop-document-retention-policy.entity';
import { CustomerFavoriteProductEntity } from './entities/shop/customer-favorite-product.entity';
import { ShopSubcategoryEntity } from './entities/shop/shop-subcategory.entity';
import { ShopNotificationEntity } from './entities/shop/shop-notification.entity';
import { ShopCustomerSupportRequestEntity } from './entities/shop/shop-customer-support-request.entity';
import { ShopCustomerSupportRequestActivityEntity } from './entities/shop/shop-customer-support-request-activity.entity';
import { CartEntity } from './entities/shop/cart.entity';
import { CartProductEntity } from './entities/shop/cart-product.entity';
import { CartGroupEntity } from './entities/shop/cart-group.entity';
import { SMSProviderEntity } from './entities/sms-provider.entity';
import { TaxiOrderShopEntity } from './entities/taxi/taxi-order-shop.entity';
import { DriverServicesServiceEntity } from './entities/taxi/driver-services-service.entity';

import { OnModuleInit } from '@nestjs/common';
import { DataSource } from 'typeorm';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { DriverShiftRuleEntity, RewardEntity } from './entities';

@Module({
  imports: [
    ConfigModule,
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      useFactory: async (configService: ConfigService) => {
        const logger = new Logger(DatabaseModule.name);
        logger.log('Initializing database connection...');

        // Ensure database exists
        await DatabaseModule.ensureDatabaseExists(configService);

        // Get current tables count
        const dataSource = new DataSource({
          type: 'mysql',
          host: configService.get('MYSQL_HOST', 'localhost'),
          port: 3306,
          username: configService.get('MYSQL_USER', 'root'),
          password: configService.get('MYSQL_PASS', 'defaultpassword'),
          database: configService.get('MYSQL_DB', 'ridy'),
        });
        if (!dataSource.isInitialized) {
          await dataSource.initialize();
        }
        const currentTables = await dataSource.query(
          `SELECT COUNT(*) as count FROM information_schema.tables WHERE table_schema = ?`,
          [configService.get('MYSQL_DB', 'ridy')],
        );
        logger.log(`Current tables count: ${currentTables[0].count}`);
        await dataSource.destroy();

        const config: DataSourceOptions = {
          type: 'mysql',
          host: configService.get('MYSQL_HOST', 'localhost'),
          port: 3306,
          username: configService.get('MYSQL_USER', 'root'),
          password: configService.get('MYSQL_PASS', 'defaultpassword'),
          database: configService.get('MYSQL_DB', 'ridy'),
          entities: entities,
          legacySpatialSupport: false,
          migrations: [`${__dirname}/migrations/*.js`],
          migrationsRun: true,
          synchronize:
            configService.get('NODE_ENV') === 'dev' ||
            configService.get('FORCE_SYNC_DB', false) ||
            currentTables[0].count < 10,
          // logging: configService.get('NODE_ENV') === 'dev',
          logging: true, // Disable logging by default
        };

        logger.log('Database connection configured');
        return config;
      },
      inject: [ConfigService],
    }),
  ],
})
export class DatabaseModule implements OnModuleInit {
  private readonly logger = new Logger(DatabaseModule.name);

  constructor(private dataSource: DataSource) {}

  async onModuleInit() {
    this.logger.log('Running database migrations...');

    // Run migrations on the injected DataSource
    const migrations = await this.dataSource.runMigrations();

    this.logger.log(`Completed ${migrations.length} migrations`);
  }

  private static async ensureDatabaseExists(
    configService: ConfigService,
  ): Promise<void> {
    const dbName = configService.get('MYSQL_DB', 'ridy');
    const tempConnection = new DataSource({
      type: 'mysql',
      host: configService.get('MYSQL_HOST', 'localhost'),
      port: 3306,
      username: configService.get('MYSQL_USER', 'root'),
      password: configService.get('MYSQL_PASS', 'defaultpassword'),
      // Don't specify database for initial connection
    });

    try {
      await tempConnection.initialize();
      await tempConnection.query(`CREATE DATABASE IF NOT EXISTS \`${dbName}\``);
      Logger.log(`Database '${dbName}' ensured to exist`);
    } catch (error) {
      Logger.error('Failed to create database:', error);
      throw error;
    } finally {
      if (tempConnection.isInitialized) {
        await tempConnection.destroy();
      }
    }
  }
}

export const entities = [
  MediaEntity,
  OperatorEntity,
  OperatorRoleEntity,
  OperatorSessionEntity,
  DriverEntity,
  DriverSessionEntity,
  ProviderTransactionEntity,
  ProviderWalletEntity,
  TaxiSupportRequestActivityEntity,
  TaxiSupportRequestEntity,
  CarModelEntity,
  CarColorEntity,
  DriverTransactionEntity,
  DriverWalletEntity,
  FeedbackParameterEntity,
  FeedbackEntity,
  FleetEntity,
  FleetWalletEntity,
  FleetTransactionEntity,
  FleetStaffEntity,
  FleetStaffSessionEntity,
  TaxiOrderEntity,
  OrderMessageEntity,
  OrderCancelReasonEntity,
  PaymentGatewayEntity,
  PaymentEntity,
  ServiceEntity,
  ServiceCategoryEntity,
  CouponEntity,
  RegionEntity,
  RegionCategoryEntity,
  CustomerEntity,
  RiderWalletEntity,
  RiderTransactionEntity,
  RiderAddressEntity,
  ServiceOptionEntity,
  GiftBatchEntity,
  GiftCodeEntity,
  SOSEntity,
  SOSActivityEntity,
  AnnouncementEntity,
  ZonePriceEntity,
  GatewayToUserEntity,
  SavedPaymentMethodEntity,
  RiderReviewEntity,
  PayoutMethodEntity,
  PayoutAccountEntity,
  TaxiPayoutSessionEntity,
  ShopPayoutSessionEntity,
  ShopDocumentEntity,
  ShopToShopDocumentEntity,
  ShopDocumentRetentionPolicyEntity,
  ParkingPayoutSessionEntity,
  ParkSpotEntity,
  ParkOrderEntity,
  ParkingFeedbackEntity,
  ParkingFeedbackParameterEntity,
  ParkingCustomerNotificationEntity,
  ParkingProviderNotificationEntity,
  ShopOrderEntity,
  ShopNoteEntity,
  ShopOrderCartEntity,
  ShopOrderCartProductEntity,
  ShopProductPresetEntity,
  ProductVariantEntity,
  ProductEntity,
  ProductOptionEntity,
  ProductCategoryEntity,
  ShopEntity,
  ShopCategoryEntity,
  ShopDeliveryZoneEntity,
  ShopFeedbackEntity,
  ShopFeedbackParameterEntity,
  ShopSessionEntity,
  CustomerSessionEntity,
  RequestActivityEntity,
  ZonePriceCategoryEntity,
  ShopSupportRequestEntity,
  ShopSupportRequestActivityEntity,
  TaxiOrderNoteEntity,
  ParkingLoginSessionEntity,
  ShopLoginSessionEntity,
  ShopOrderNoteEntity,
  ShopOrderStatusHistoryEntity,
  ShopTransactionEntity,
  ShopWalletEntity,
  ParkingWalletEntity,
  ParkingTransactionEntity,
  ParkSpotNoteEntity,
  ParkOrderNoteEntity,
  ParkOrderActivityEntity,
  ParkingSupportRequestEntity,
  ParkingSupportRequestActivityEntity,
  ShopSupportRequestEntity,
  ShopSupportRequestActivityEntity,
  CustomerNoteEntity,
  CampaignEntity,
  CampaignCodeEntity,
  SOSReasonEntity,
  DriverToDriverDocumentEntity,
  DriverDocumentEntity,
  DriverDocumentRetentionPolicyEntity,
  DriverNoteEntity,
  SMSEntity,
  SMSProviderEntity,
  TaxiPayoutSessionPayoutMethodDetailEntity,
  ShopPayoutSessionPayoutMethodDetailEntity,
  ShopSubcategoryEntity,
  ShopNotificationEntity,
  ParkingPayoutSessionPayoutMethodDetailEntity,
  CustomerFavoriteProductEntity,
  ShopCustomerSupportRequestEntity,
  ShopCustomerSupportRequestActivityEntity,
  CartEntity,
  CartProductEntity,
  CartGroupEntity,
  TaxiOrderShopEntity,
  DriverServicesServiceEntity,
  DriverShiftRuleEntity,
  RewardEntity,
];
