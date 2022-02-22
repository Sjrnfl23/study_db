CREATE TABLE IF NOT EXISTS `nct`.`infrNationalty` (
  `ifnaseq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifnaName` TINYINT NULL,
  `ifnaNameKor` VARCHAR(45) NULL,
  `ifnaNameEng` VARCHAR(45) NULL COMMENT '대한민국 | 대한민국 | South_korea',
  `ifnaCode2Char` CHAR(2) NULL,
  `ifnaCode3Char` CHAR(3) NULL,
  `ifnaUseNy` TINYINT NULL,
  `ifnaOrderNy` TINYINT NULL,
  `ifnaDesc` VARCHAR(255) NULL,
  `ifnaDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifnaseq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

INSERT INTO `nct`.`infrnationalty`
(
`ifnaName`,
`ifnaCode2Char`,
`ifnaCode3Char`,
`ifnaUseNy`,
`ifnaOrderNy`,
`ifnaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
"미국",
"US",
"USA",
1,
2,
0,
now(),
now(),
now(),
now()
);
select * from infrnationalty;
desc infrnationalty;
CREATE TABLE IF NOT EXISTS `nct`.`infrmember` (
  `ifmmseq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmmAdminNy` TINYINT NULL,
  `ifmmDomancyNy` VARCHAR(45) NULL,
  `ifmmName` VARCHAR(45) NOT NULL,
  `ifmmId` VARCHAR(45) NOT NULL,
  `ifmmPassword` VARCHAR(100) NULL,
  `ifmmPwdModDate` DATETIME NULL COMMENT '패스워드 수정일',
  `ifmmGenderCd` TINYINT NULL,
  `ifmmDob` DATE NULL,
  `ifmmSavedCd` TINYINT NULL COMMENT '회원정보저장기간',
  `ifmmMarriageCd` TINYINT NULL,
  `ifmmMarrigeDate` DATE NULL,
  `ifmmChildrenNum` TINYINT NULL,
  `ifmmFavoriteColor` VARCHAR(45) NULL,
  `ifmmRecommenderSeq` BIGINT NULL,
  `ifmmEmailConsentNy` VARCHAR(45) NULL,
  `ifmSmsConsentNy` VARCHAR(45) NULL,
  `ifmmPushConsentNy` TINYINT NULL,
  `ifmmDesc` VARCHAR(255) NULL,
  `ifmmDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifmmseq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

INSERT INTO `nct`.`infrmember`
(
`ifmmAdminNy`,
`ifmmName`,
`ifmmId`,
`ifmmPassword`,
`ifmmPwdModDate`,
`ifmmGenderCd`,
`ifmmDob`,
`ifmmSavedCd`,
`ifmmMarriageCd`,
`ifmmMarrigeDate`,
`ifmmChildrenNum`,
`ifmmFavoriteColor`,
`ifmmRecommenderSeq`,
`ifmmEmailConsentNy`,
`ifmSmsConsentNy`,
`ifmmPushConsentNy`,
`ifmmDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
0,
"인병준",
"qudwnsdl21",
"FDF3HJF3KSDI39FDJ391DS291",
now(),
1,
"2021-02-05",
1,
1,
"2021-03-31",
2,
"#ffffff",
34,
1,
1,
1,
0,
now(),
now(),
now(),
now()
);
select * from infrmember;

CREATE TABLE IF NOT EXISTS `nct`.`infrMemberJoinQna` (
  `ifjqseq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifjqQuestionCd` TINYINT NULL,
  `ifjqAnswer` VARCHAR(45) NULL,
  `ifjqDelNy` TINYINT NOT NULL,
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
  `ifmmseq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifjqseq`),
  INDEX `fk_infrMemberPhone_sample_copy11_idx` (`ifmmseq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberPhone_sample_copy1101`
    FOREIGN KEY (`ifmmseq`)
    REFERENCES `nct`.`infrmember` (`ifmmseq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`infrMemberHobby` (
  `ifmhseq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmhHobbyCd` TINYINT NULL,
  `ifmhUseNy` TINYINT NULL,
  `ifmhOrder` TINYINT NULL,
  `ifmhDelNy` TINYINT NOT NULL,
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
  `ifmmseq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmhseq`),
  INDEX `fk_infrMemberPhone_sample_copy11_idx` (`ifmmseq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberPhone_sample_copy11010`
    FOREIGN KEY (`ifmmseq`)
    REFERENCES `nct`.`infrmember` (`ifmmseq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

