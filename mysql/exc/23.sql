create database nct;
use nct;

CREATE TABLE IF NOT EXISTS `nct`.`infrCodeGroup` (
  `ifcgseq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcgSeqAnother` VARCHAR(45) NULL,
  `ifcgName` VARCHAR(45) NOT NULL,
  `ifcgNameEng` VARCHAR(45) NULL,
  `ifcgUseNy` TINYINT NULL,
  `ifcgOrder` TINYINT NULL,
  `ifcgReferenceV1` VARCHAR(45) NULL,
  `ifcgReferenceV2` VARCHAR(45) NULL,
  `ifcgReferenceV3` VARCHAR(45) NULL,
  `ifcgReferenceE1` INT NULL,
  `ifcgReferenceE2` INT NULL,
  `ifcgReferenceE3` INT NULL,
  `ifcgDesc` VARCHAR(45) NULL,
  `igcgDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifcgseq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`infrCode` (
  `ifcdseq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcdSeqAnother` VARCHAR(45) NULL,
  `ifcdName` VARCHAR(45) NOT NULL,
  `ifcdNameEng` VARCHAR(45) NULL,
  `ifcdName_copy1` VARCHAR(45) NULL,
  `ifcdNameLng1` VARCHAR(45) NULL,
  `ifcdNameLng2` VARCHAR(45) NULL,
  `ifcdNameLng3` VARCHAR(45) NULL,
  `ifcdNameLng4` VARCHAR(45) NULL,
  `ifcdNameLng5` VARCHAR(45) NULL,
  `ifcdUseNy` TINYINT NULL,
  `ifcdOrder` TINYINT NULL,
  `ifcdReferenceV1` VARCHAR(45) NULL,
  `ifcdReferenceV2` VARCHAR(45) NULL,
  `ifcdReferenceV3` VARCHAR(45) NULL,
  `ifcdReferenceE1` INT NULL,
  `ifcdReferenceE2` INT NULL,
  `ifcdReferenceE3` INT NULL,
  `ifcdDesc` VARCHAR(255) NULL,
  `ifcdDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifcgseq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifcdseq`, `ifcgseq`),
  INDEX `fk_infrCode_infrCodeGroup_idx` (`ifcgseq` ASC) VISIBLE,
  CONSTRAINT `fk_infrCode_infrCodeGroup`
    FOREIGN KEY (`ifcgseq`)
    REFERENCES `nct`.`infrCodeGroup` (`ifcgseq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

select * from infrcodegroup;

INSERT INTO `nct`.`infrcodegroup`
(

`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`igcgDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'회원보안질문.구분',
1,
14,
0,
now(),
now(),
now(),
now()
);
truncate infrcodegroup;
INSERT INTO `nct`.`infrcode`
(

`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifcgseq`)
VALUES
(


"기타",
1,
3,
0,
now(),
now(),
now(),
now(),
7

);
-- alter table infrCode AUTO_INCREMENT = 17;

update infrcode set ifcgSeq= 6 where ifcgSeq=5;
select * from infrcode;
select

a.ifcgSeq
,a.ifcgName
,b.ifcdSeq
,b.ifcdName
,b.ifcdOrder
from infrCodeGroup a
left join infrCode b on b.ifcgSeq=a.ifcgSeq
order by a.ifcgSeq,b.ifcdOrder;

delete from infrcode as b where ifcgseq=4;
select * from infrcode;