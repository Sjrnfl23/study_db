INSERT INTO `nct`.`infrmemberaddress`
(
`ifmaDefaultNy`,
`ifmaTypeCd`,

`ifmaAddress1`,
`ifmaAddress2`,

`ifmpDelNy`,

`regDateTime`,
`regDateTimeSvr`,

`modDateTime`,
`modDateTimeSvr`,
`ifmmseq`)
VALUES
(
1
,1
,"서울시 화곡로 32길 101로"
,"xx아파트 1001동 401호"
,0
,now()
,now()
,now()
,now()

,2);

INSERT INTO `nct`.`infrmemberaddressonline`
(
`ifaoTypeCd`,
`ifaoDefaultNy`,
`ifaoSnsTypeCd`,
`ifaoUrl`,

`ifmpDelNy`,
`regIp`,
`regSeq`,

`modIp`,
`modSeq`,

`ifmmseq`)
VALUES
(
1
,1
,3
,"www.twiter/vhfhfl"
,0
,now()
,now()
,now()
,now()
,2
);

INSERT INTO `nct`.`infrmemberhobby`
(
`ifmhHobbyCd`,
`ifmhUseNy`,
`ifmhOrder`,
`ifmhDelNy`,

`regDateTime`,
`regDateTimeSvr`,

`modDateTime`,
`modDateTimeSvr`,
`ifmmseq`)
VALUES
(
40
,1
,1
,0
,now()
,now()
,now()
,now()
,1
);

