import { MigrationInterface, QueryRunner } from 'typeorm';

export class connectTaxiOrderEntityToFleet1678085941522
  implements MigrationInterface
{
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query('ALTER TABLE `request` ADD `fleetId` int NULL');
      await queryRunner.query(
        'ALTER TABLE `request` ADD FOREIGN KEY (`fleetId`) REFERENCES `fleet` (`id`)',
      );
    } catch (error) {
      console.error(error);
    }
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query('ALTER TABLE `request` DROP COLUMN `fleetId`');
    } catch (error) {
      console.error(error);
    }
  }
}
