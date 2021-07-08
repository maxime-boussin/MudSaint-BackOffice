<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20191209223508 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE stuff_stats_element DROP FOREIGN KEY FK_FF4FDCBEB9ADB388');
        $this->addSql('ALTER TABLE weapon DROP FOREIGN KEY FK_6933A7E6D7C6E955');
        $this->addSql('ALTER TABLE stuff_stats_element DROP FOREIGN KEY FK_FF4FDCBE950A1740');
        $this->addSql('ALTER TABLE stuff DROP FOREIGN KEY FK_5941F83EC54C8C93');
        $this->addSql('DROP TABLE stats_element');
        $this->addSql('DROP TABLE stuff');
        $this->addSql('DROP TABLE stuff_stats_element');
        $this->addSql('DROP TABLE stuff_type');
        $this->addSql('DROP TABLE user');
        $this->addSql('ALTER TABLE race ADD bonus_element_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE race ADD CONSTRAINT FK_DA6FBBAFE0764845 FOREIGN KEY (bonus_element_id) REFERENCES element (id)');
        $this->addSql('CREATE INDEX IDX_DA6FBBAFE0764845 ON race (bonus_element_id)');
        $this->addSql('DROP INDEX UNIQ_6933A7E6D7C6E955 ON weapon');
        $this->addSql('ALTER TABLE weapon ADD element_id INT NOT NULL, ADD image VARCHAR(255) DEFAULT NULL, ADD stats LONGTEXT NOT NULL COMMENT \'(DC2Type:array)\', DROP hit_element_id, DROP sell_price, DROP buy_price, CHANGE damages damages LONGTEXT NOT NULL COMMENT \'(DC2Type:array)\'');
        $this->addSql('ALTER TABLE weapon ADD CONSTRAINT FK_6933A7E61F1F2A24 FOREIGN KEY (element_id) REFERENCES element (id)');
        $this->addSql('CREATE INDEX IDX_6933A7E61F1F2A24 ON weapon (element_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE stats_element (id INT AUTO_INCREMENT NOT NULL, elements_id INT NOT NULL, weapon_id INT DEFAULT NULL, amount INT NOT NULL, INDEX IDX_D8FA1F6495B82273 (weapon_id), INDEX IDX_D8FA1F64DB6D46DE (elements_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE stuff (id INT AUTO_INCREMENT NOT NULL, type_id INT NOT NULL, sell_price VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_unicode_ci`, buy_price INT DEFAULT NULL, INDEX IDX_5941F83EC54C8C93 (type_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE stuff_stats_element (stuff_id INT NOT NULL, stats_element_id INT NOT NULL, INDEX IDX_FF4FDCBE950A1740 (stuff_id), INDEX IDX_FF4FDCBEB9ADB388 (stats_element_id), PRIMARY KEY(stuff_id, stats_element_id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE stuff_type (id INT AUTO_INCREMENT NOT NULL, label VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE user (id INT AUTO_INCREMENT NOT NULL, weapon_id INT DEFAULT NULL, mount_id INT DEFAULT NULL, username VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, last_update DATETIME NOT NULL, level INT NOT NULL, experience INT NOT NULL, gold VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, cristal INT NOT NULL, INDEX IDX_8D93D649538228B8 (mount_id), INDEX IDX_8D93D64995B82273 (weapon_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('ALTER TABLE stats_element ADD CONSTRAINT FK_D8FA1F6495B82273 FOREIGN KEY (weapon_id) REFERENCES weapon (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('ALTER TABLE stats_element ADD CONSTRAINT FK_D8FA1F64DB6D46DE FOREIGN KEY (elements_id) REFERENCES element (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('ALTER TABLE stuff ADD CONSTRAINT FK_5941F83EC54C8C93 FOREIGN KEY (type_id) REFERENCES stuff_type (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('ALTER TABLE stuff_stats_element ADD CONSTRAINT FK_FF4FDCBE950A1740 FOREIGN KEY (stuff_id) REFERENCES stuff (id) ON UPDATE NO ACTION ON DELETE CASCADE');
        $this->addSql('ALTER TABLE stuff_stats_element ADD CONSTRAINT FK_FF4FDCBEB9ADB388 FOREIGN KEY (stats_element_id) REFERENCES stats_element (id) ON UPDATE NO ACTION ON DELETE CASCADE');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_8D93D649538228B8 FOREIGN KEY (mount_id) REFERENCES mount (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_8D93D64995B82273 FOREIGN KEY (weapon_id) REFERENCES weapon (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('ALTER TABLE race DROP FOREIGN KEY FK_DA6FBBAFE0764845');
        $this->addSql('DROP INDEX IDX_DA6FBBAFE0764845 ON race');
        $this->addSql('ALTER TABLE race DROP bonus_element_id');
        $this->addSql('ALTER TABLE weapon DROP FOREIGN KEY FK_6933A7E61F1F2A24');
        $this->addSql('DROP INDEX IDX_6933A7E61F1F2A24 ON weapon');
        $this->addSql('ALTER TABLE weapon ADD sell_price INT NOT NULL, ADD buy_price INT NOT NULL, DROP image, DROP stats, CHANGE damages damages INT NOT NULL, CHANGE element_id hit_element_id INT NOT NULL');
        $this->addSql('ALTER TABLE weapon ADD CONSTRAINT FK_6933A7E6D7C6E955 FOREIGN KEY (hit_element_id) REFERENCES stats_element (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_6933A7E6D7C6E955 ON weapon (hit_element_id)');
    }
}
