UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='1' WHERE CDPARAMETRO='516';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='1800000' WHERE CDPARAMETRO='519';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='ignorarErrosItens:N|ignorarErrosPedidos:N|inserirApenasPedidoCompleto:S|gravarPedidosComErro:N' WHERE CDPARAMETRO='520';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO ='ser="http://services.senior.com.br"' WHERE CDPARAMETRO='521';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO ='ser:GravarPedidos_15' WHERE CDPARAMETRO='522';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO ='parameters' WHERE CDPARAMETRO='523';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='{"Content-Type":"N","envioPedidoIndividual":"S","usaReenvioPedidoIntegracaoWebServiceSOAP":"N"}' WHERE CDPARAMETRO='525';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='2' WHERE CDPARAMETRO='559';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='{"dirBackup":"/wmw/dados/xml/hom/importacao","nuDiasPermanenciaBackup":"30"}' WHERE CDPARAMETRO='1221';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='S' WHERE CDPARAMETRO='1262';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='WMW' WHERE CDPARAMETRO='1269';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='S' WHERE CDPARAMETRO='1333';


CREATE TABLE TMPINTE028CPG
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    SEQINT         NUMERIC(8),
    CODEMP         NUMERIC(4)    NOT NULL,
    CODCPG         VARCHAR(6)  NOT NULL,
    DESCPG         VARCHAR(50),
    ABRCPG         VARCHAR(10),
    APLCPG         CHAR(1),
    PERENC         NUMERIC(5, 2),
    PGTANT         CHAR(1),
    PRZMED         NUMERIC(3),
    QTDPAR         NUMERIC(3),
    ACRFIN         NUMERIC(5, 2),
    VENDSC         NUMERIC(5, 2),
    PERDSC         NUMERIC(5, 2),
    PERCOM         NUMERIC(5, 2),
    REDCOM         NUMERIC(5, 2),
    TIPPAR         NUMERIC(1),
    SITCPG         CHAR(1),
    CODTPR         VARCHAR(4),
    SITWMW         CHAR(1),
    CONSTRAINT PK_TMPINTE028CPG
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODCPG)
);

CREATE TABLE TMPINTE085CTO
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    CODCLI         NUMERIC(9)    NOT NULL,
    SEQCTO         NUMERIC(5)    NOT NULL,
    NOMCTO         VARCHAR(150),
    DATNAS         DATE,
    NIVCTO         CHAR(1),
    SETCTO         VARCHAR(30),
    CARCTO         VARCHAR(50),
    FONCTO         VARCHAR(20),
    RAMCTO         NUMERIC(4),
    FONCT2         VARCHAR(20),
    RAMCT2         NUMERIC(4),
    FONCT3         VARCHAR(20),
    RAMCT3         NUMERIC(4),
    FAXCTO         VARCHAR(20),
    INTNET         VARCHAR(100),
    INDEXP         NUMERIC(1),
    SITCTO         VARCHAR(1),
    CODNIV         NUMERIC(4),
    CONSTRAINT PK_TMPINTE085CTO
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODCLI, SEQCTO)
)
;

CREATE TABLE TMPINTE085ENT
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    CODCLI         NUMERIC(9)    NOT NULL,
    SEQENT         NUMERIC(5)    NOT NULL,
    ENDENT         VARCHAR(100),
    CPLENT         VARCHAR(200),
    CEPENT         NUMERIC(8),
    CIDENT         VARCHAR(60),
    ESTENT         VARCHAR(2),
    BAIENT         VARCHAR(75),
    CGCENT         NUMERIC(14),
    NENENT         VARCHAR(60),
    TIPEND         CHAR(1),
    PRXENT         VARCHAR(120),
    CODROE         VARCHAR(3),
    SITREG         VARCHAR(1),
    CONSTRAINT PK_TMPINTE085ENT
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODCLI, SEQENT)
)
;

CREATE TABLE TMPINTE085CLI
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    CODCLI         NUMERIC(9)    NOT NULL,
    NOMCLI         VARCHAR(100),
    APECLI         VARCHAR(50),
    MARCLI         VARCHAR(20),
    SENCLI         VARCHAR(10),
    TIPCLI         CHAR(1),
    TIPMER         CHAR(1),
    CLICON         CHAR(1),
    CODRAM         VARCHAR(5),
    INSEST         VARCHAR(25),
    INSMUN         VARCHAR(16),
    CGCCPF         NUMERIC(14),
    CODGRE         NUMERIC(9),
    ZONFRA         NUMERIC(1),
    CODSUF         VARCHAR(10),
    ENDCLI         VARCHAR(100),
    CPLEND         VARCHAR(200),
    CLIPRX         VARCHAR(120),
    ZIPCOD         VARCHAR(14),
    CEPCLI         NUMERIC(8),
    CEPINI         NUMERIC(8),
    BAICLI         VARCHAR(75),
    CIDCLI         VARCHAR(60),
    SIGUFS         VARCHAR(2),
    CODPAI         VARCHAR(4),
    TEMENT         CHAR(1),
    ENDENT         VARCHAR(100),
    CPLENT         VARCHAR(200),
    CEPENT         NUMERIC(8),
    INIENT         NUMERIC(8),
    CIDENT         VARCHAR(60),
    ESTENT         VARCHAR(2),
    INSENT         VARCHAR(25),
    CGCENT         NUMERIC(14),
    TEMCOB         CHAR(1),
    ENDCOB         VARCHAR(100),
    CPLCOB         VARCHAR(200),
    CEPCOB         NUMERIC(8),
    INICOB         NUMERIC(8),
    CIDCOB         VARCHAR(60),
    ESTCOB         VARCHAR(2),
    CGCCOB         NUMERIC(14),
    FONCLI         VARCHAR(20),
    FONCL2         VARCHAR(20),
    FONCL3         VARCHAR(20),
    FONCL4         VARCHAR(20),
    FONCL5         VARCHAR(20),
    FAXCLI         VARCHAR(20),
    CXAPST         NUMERIC(6),
    INTNET         VARCHAR(100),
    CODROE         VARCHAR(3),
    SEQROE         NUMERIC(4),
    CODFOR         NUMERIC(9),
    CLIREP         NUMERIC(9),
    CLITRA         NUMERIC(9),
    DATFIM         DATE,
    HORFIM         NUMERIC(5),
    DATVCT         DATE,
    DATATU         DATE,
    HORATU         NUMERIC(5),
    SITCLI         CHAR(1),
    CODMOT         NUMERIC(6),
    BLOCRE         CHAR(1),
    OBSMOT         VARCHAR(250),
    TRIICM         CHAR(1),
    TRIIPI         CHAR(1),
    BAIENT         VARCHAR(75),
    BAICOB         VARCHAR(75),
    CLIFOR         CHAR(1),
    IDECLI         VARCHAR(20),
    TRIPIS         CHAR(1),
    TRICOF         CHAR(1),
    INDEXP         NUMERIC(1),
    RETCOF         CHAR(1),
    RETCSL         CHAR(1),
    RETPIS         CHAR(1),
    RETOUR         CHAR(1),
    CODSRO         VARCHAR(3),
    DATSUF         DATE,
    CEPFRE         NUMERIC(8),
    RETPRO         CHAR(1),
    RETIRF         CHAR(1),
    LIMRET         CHAR(1),
    CALFUN         CHAR(1),
    EENCLI         VARCHAR(18),
    EENENT         VARCHAR(18),
    EENCOB         VARCHAR(18),
    PERAIN         NUMERIC(4, 2),
    NENCLI         VARCHAR(60),
    NENENT         VARCHAR(60),
    NENCOB         VARCHAR(60),
    TIPACE         NUMERIC(1),
    EMANFE         VARCHAR(100),
    CODRTR         NUMERIC(1),
    REGEST         NUMERIC(1),
    NATRET         NUMERIC(2),
    NATPIS         NUMERIC(5),
    NATCOF         NUMERIC(5),
    NUMIDF         VARCHAR(40),
    CALSEN         CHAR(1),
    TIPEMP         NUMERIC(2),
    CONFIN         CHAR(1),
    ROTANX         NUMERIC(2),
    NUMANX         NUMERIC(10),
    NATIRP         NUMERIC(2),
    NATCSL         NUMERIC(2),
    SEQHAS         NUMERIC(9),
    ENTPAA         CHAR(1),
    CLATRI         NUMERIC(2),
    DATSPC         DATE,
    CIDSPC         VARCHAR(60),
    INFSPC         NUMERIC(1),
    USUSPC         NUMERIC(10),
    MSGPDV         VARCHAR(250),
    INDNIF         NUMERIC(1),
    TIPVIN         NUMERIC(1),
    FONENT         VARCHAR(20),
    EMAENT         VARCHAR(60),
    ZIPENT         VARCHAR(14),
    CODTAF         VARCHAR(60),
    VLRLAT         VARCHAR(100),
    VLRLON         VARCHAR(100),
    DATCAD         DATE,
    CONSTRAINT PK_TMPINTE085CLI
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODCLI)
)
;

CREATE TABLE TMPINTE085HCL
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    CODCLI         NUMERIC(9)    NOT NULL,
    CODEMP         NUMERIC(4)    NOT NULL,
    CODFIL         NUMERIC(5)    NOT NULL,
    SALDUP         NUMERIC(15, 2),
    SALOUT         NUMERIC(15, 2),
    SALCRE         NUMERIC(15, 2),
    VLRLIM         NUMERIC(15, 2),
    LIMAPR         CHAR(1),
    DATUPE         DATE,
    DATUFA         DATE,
    VLRMFA         NUMERIC(15, 2),
    DATATR         DATE,
    VLRATR         NUMERIC(15, 2),
    MAIATR         NUMERIC(4),
    MEDATR         NUMERIC(4),
    DATPMR         DATE,
    PRZMRT         NUMERIC(5),
    CATCLI         NUMERIC(3),
    CODCCA         VARCHAR(3),
    PERDS1         NUMERIC(5, 2),
    PERDS2         NUMERIC(5, 2),
    PERCOM         NUMERIC(5, 2),
    CODREP         NUMERIC(9),
    CODRVE         VARCHAR(3),
    CODTPR         VARCHAR(4),
    CODCPG         VARCHAR(6),
    CODFPG         NUMERIC(2),
    CODTRA         NUMERIC(9),
    CODRED         NUMERIC(9),
    EXILCP         CHAR(1),
    CODVEN         NUMERIC(9),
    INDEXP         NUMERIC(1),
    CIFFOB         CHAR(1),
    CODTAB         VARCHAR(4),
    PERDS3         NUMERIC(5, 2),
    PERDS4         NUMERIC(5, 2),
    PEROF1         NUMERIC(5, 2),
    PEROF2         NUMERIC(5, 2),
    SEQCOB         NUMERIC(5),
    SEQENT         NUMERIC(5),
    CODTIC         VARCHAR(3),
    CODTRD         VARCHAR(3),
    CODSTR         VARCHAR(3),
    CONFIN         CHAR(1),
    INDPRE         CHAR(1),
    PERDIF         NUMERIC(7, 4),
    TIPTCC         NUMERIC(2),
    PERISR         NUMERIC(6, 4),
    ZERDIF         CHAR(1),
    EPCPED         CHAR(1),
    ECPCNP         CHAR(1),
    CONSTRAINT PK_TMPINTE085HCL
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODCLI, CODEMP, CODFIL)
)
;

CREATE TABLE TMPINTE090REP
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    SEQINT         NUMERIC(8),
    CODREP         NUMERIC(9)    NOT NULL,
    NOMREP         VARCHAR(100),
    APEREP         VARCHAR(50),
    TIPREP         VARCHAR(1),
    CGCCPF         NUMERIC(14),
    INTNET         VARCHAR(100),
    EENREP         VARCHAR(18),
    ENDREP         VARCHAR(100),
    NENREP         VARCHAR(60),
    CPLEND         VARCHAR(200),
    ZIPCOD         VARCHAR(14),
    CEPREP         NUMERIC(8),
    BAIREP         VARCHAR(75),
    CIDREP         VARCHAR(60),
    SIGUFS         VARCHAR(2),
    FONREP         VARCHAR(20),
    FONRE2         VARCHAR(20),
    FONRE3         VARCHAR(20),
    FAXREP         VARCHAR(20),
    CXAPST         NUMERIC(6),
    CODCDI         NUMERIC(3),
    SITWMW         VARCHAR(1),
    SITREP         VARCHAR(1),
    REPCLI         NUMERIC(22, 9),
    REPFOR         NUMERIC(22, 9),
    CONSTRAINT PK_TMPINTE090REP
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODREP)
)
;

CREATE TABLE TMPINTE090HRP
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    CODREP         NUMERIC(9)    NOT NULL,
    CODEMP         NUMERIC(4)    NOT NULL,
    CODRVE         VARCHAR(3),
    REPSUP         NUMERIC(9),
    CATREP         VARCHAR(3),
    CONSTRAINT PK_TMPINTE090HRP
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODREP, CODEMP)
)
;

CREATE TABLE TMPINTE066FPG
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    SEQINT         NUMERIC(8),
    CODEMP         NUMERIC(8)    NOT NULL,
    CODFPG         VARCHAR(20) NOT NULL,
    DESFPG         VARCHAR(100),
    ABRFPG         VARCHAR(50),
    VENMFP         NUMERIC(15, 2),
    TIPFPG         NUMERIC(2),
    SITFPG         CHAR(1),
    SITWMW         CHAR(1),
    CONSTRAINT PK_TMPINTE066FPG
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODFPG)
)
;

CREATE TABLE TMPINTE301TCR
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    CODEMP         NUMERIC(4)    NOT NULL,
    CODFIL         NUMERIC(4)    NOT NULL,
    NUMTIT         VARCHAR(15) NOT NULL,
    CODTPT         VARCHAR(3)  NOT NULL,
    CODTNS         VARCHAR(5),
    CODNTG         NUMERIC(4),
    SITTIT         VARCHAR(2),
    SITANT         VARCHAR(2),
    DATEMI         DATE,
    DATENT         DATE,
    CODCLI         NUMERIC(9),
    CODSAC         NUMERIC(14),
    CODREP         NUMERIC(9),
    CODCRP         VARCHAR(3),
    OBSTCR         VARCHAR(250),
    VCTORI         DATE,
    VLRORI         NUMERIC(15, 2),
    CODFPG         NUMERIC(2),
    VCTPRO         DATE,
    PROJRS         CHAR(1),
    CODMPT         VARCHAR(3),
    DATPPT         DATE,
    VLRABE         NUMERIC(15, 2),
    CODMOE         VARCHAR(3),
    COTEMI         NUMERIC(19, 10),
    CODFRJ         VARCHAR(3),
    COTFRJ         NUMERIC(19, 10),
    PERCOM         NUMERIC(7, 4),
    COMREC         NUMERIC(5, 2),
    VLRBCO         NUMERIC(15, 2),
    VLRCOM         NUMERIC(15, 2),
    DATDSC         DATE,
    TOLDSC         NUMERIC(4),
    PERDSC         NUMERIC(5, 2),
    VLRDSC         NUMERIC(15, 2),
    ANTDSC         CHAR(1),
    PRDDSC         CHAR(1),
    PERJRS         NUMERIC(5, 2),
    TIPJRS         CHAR(1),
    JRSDIA         NUMERIC(9, 2),
    TOLJRS         NUMERIC(4),
    DATCJM         DATE,
    PERMUL         NUMERIC(5, 2),
    TOLMUL         NUMERIC(4),
    CHEBAN         VARCHAR(3),
    CHEAGE         VARCHAR(7),
    CHECTA         VARCHAR(14),
    CHENUM         VARCHAR(10),
    CODPOR         VARCHAR(4),
    CODCRT         VARCHAR(2),
    TITBAN         VARCHAR(20),
    VLRORM         NUMERIC(15, 2),
    NUMARB         NUMERIC(9),
    CODOCR         VARCHAR(3),
    CODIN1         VARCHAR(3),
    CODIN2         VARCHAR(3),
    PORANT         VARCHAR(4),
    CRTANT         VARCHAR(2),
    ULTPGT         DATE,
    DATNEG         DATE,
    JRSNEG         NUMERIC(15, 2),
    MULNEG         NUMERIC(15, 2),
    DSCNEG         NUMERIC(15, 2),
    OUTNEG         NUMERIC(15, 2),
    USUNEG         NUMERIC(10),
    CPGNEG         VARCHAR(6),
    TAXNEG         NUMERIC(13, 10),
    COTNEG         NUMERIC(19, 10),
    VLRDCA         NUMERIC(15, 2),
    VLRDCB         NUMERIC(15, 2),
    VLROUD         NUMERIC(15, 2),
    NOTDEB         NUMERIC(1),
    NUMPRJ         NUMERIC(8),
    CODFPJ         NUMERIC(4),
    CTAFIN         NUMERIC(7),
    CTARED         NUMERIC(7),
    CODCCU         VARCHAR(9),
    QTDDUP         NUMERIC(2),
    QTDBLO         NUMERIC(2),
    DATUCM         DATE,
    COTUCM         NUMERIC(19, 10),
    FILNFV         NUMERIC(4),
    CODSNF         VARCHAR(3),
    NUMNFV         NUMERIC(9),
    FILCTR         NUMERIC(4),
    NUMCTR         NUMERIC(9),
    SEQIMO         NUMERIC(3),
    FILNFF         NUMERIC(4),
    NUMNFF         NUMERIC(9),
    FILPED         NUMERIC(4),
    NUMPED         NUMERIC(8),
    FILNFC         NUMERIC(4),
    FORNFC         NUMERIC(9),
    NUMNFC         NUMERIC(9),
    SNFNFC         VARCHAR(3),
    FILNDB         NUMERIC(4),
    NUMNDB         VARCHAR(15),
    TPTNDB         VARCHAR(3),
    TIPEFE         CHAR(1),
    TNSPRE         VARCHAR(5),
    DATPRE         DATE,
    VLRPRE         NUMERIC(15, 2),
    CTRFRE         NUMERIC(4),
    CTRNRE         NUMERIC(9),
    PEDFRE         NUMERIC(4),
    PEDNRE         NUMERIC(8),
    CODBAR         VARCHAR(50),
    USUSIT         NUMERIC(10),
    NUMECO         NUMERIC(9),
    NUMACE         VARCHAR(15),
    FILCCR         NUMERIC(4),
    NUMCCR         NUMERIC(8),
    SITPEF         NUMERIC(1),
    USUGER         NUMERIC(10),
    DATGER         DATE,
    HORGER         NUMERIC(5),
    CATTEF         VARCHAR(100),
    NSUTEF         VARCHAR(100),
    NUMPVC         NUMERIC(9),
    NUMRVC         NUMERIC(9),
    PARCAR         NUMERIC(4),
    ROTSAP         NUMERIC(3),
    NUMDFS         NUMERIC(15),
    CODEQU         NUMERIC(3),
    NUMCFI         NUMERIC(9),
    CROECF         NUMERIC(6),
    CATEXT         VARCHAR(100),
    CODOPE         NUMERIC(4),
    CARCOV         VARCHAR(100),
    CARPRE         VARCHAR(50),
    CODCNV         NUMERIC(4),
    EMPCTO         NUMERIC(4),
    CODPCO         NUMERIC(4),
    FILCTO         NUMERIC(4),
    CPTPCO         DATE,
    LOCTIT         VARCHAR(50),
    INDADC         CHAR(1),
    DSCPON         NUMERIC(4, 2),
    LIBCCL         NUMERIC(1),
    JURVEN         CHAR(1),
    VLRINT         NUMERIC(15, 2),
    SEQCOB         NUMERIC(5),
    FILPFI         NUMERIC(4),
    NUMPFI         VARCHAR(15),
    CODFIN         NUMERIC(4),
    FILAGR         NUMERIC(4),
    DATAGR         DATE,
    CHVAGR         NUMERIC(10),
    REATCR         DATE,
    INDTCF         CHAR(1),
    NUMMAL         VARCHAR(30),
    ORISUB         NUMERIC(9),
    CTPNEG         CHAR(1),
    BANCAR         VARCHAR(20),
    NSUHST         VARCHAR(100),
    CONSTRAINT PK_TMPINTE301TCR
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODFIL, NUMTIT, CODTPT)
)
;

CREATE TABLE TMPINTE070FIL
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    SEQINT         NUMERIC(8),
    CODEMP         NUMERIC(4)    NOT NULL,
    CODFIL         NUMERIC(4)    NOT NULL,
    NOMFIL         VARCHAR(100),
    INTNET         VARCHAR(100),
    SIGFIL         VARCHAR(30),
    NUMCGC         NUMERIC(15),
    INSEST         VARCHAR(25),
    INSMUN         VARCHAR(16),
    ENDFIL         VARCHAR(100),
    NENFIL         VARCHAR(60),
    CPLEND         VARCHAR(100),
    BAIFIL         VARCHAR(100),
    CEPFIL         NUMERIC(8),
    CIDFIL         VARCHAR(100),
    SIGUFS         VARCHAR(100),
    NUMFON         VARCHAR(100),
    NUMFAX         VARCHAR(100),
    CXAPST         VARCHAR(100),
    SITWMW         CHAR(1),
    CONSTRAINT PK_TMPINTE070FIL
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODFIL)
)
;

CREATE TABLE TMPINTE007UFS
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    SEQINT         NUMERIC(8),
    SIGUFS         VARCHAR(2)  NOT NULL,
    NOMUFS         VARCHAR(20),
    CODPAI         VARCHAR(4),
    ABRUFS         VARCHAR(5),
    CONSTRAINT PK_TMPINTE007UFS
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, SIGUFS)
)
;

CREATE TABLE TMPINTE210EST
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    CODEMP         NUMERIC(4)    NOT NULL,
    CODPRO         VARCHAR(14) NOT NULL,
    CODDER         VARCHAR(7) ,
    CODDEP         VARCHAR(10) NOT NULL,
    QTDEST         NUMERIC(14, 5),
    DATNFC         DATE,
    QTDNFC         NUMERIC(14, 5),
    PRENFC         NUMERIC(14, 5),
    PREMED         NUMERIC(14, 5),
    QTDDIS         NUMERIC(14, 5),
    QTDBLO         NUMERIC(14, 5),
    CONSTRAINT PK_TMPINTE210EST
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODPRO, CODDER, CODDEP)
)
;

CREATE TABLE TMPINTE205DEP
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    SEQINT         NUMERIC(8),
    CODEMP         NUMERIC(4)    NOT NULL,
    CODDEP         VARCHAR(10) NOT NULL,
    DESDEP         VARCHAR(30),
    ABRDEP         VARCHAR(15),
    TIPDEP         NUMERIC(1),
    PRIBUS         NUMERIC(6),
    CODFIL         NUMERIC(5),
    DEPCPR         CHAR(1),
    ESTNEG         CHAR(1),
    DISXPL         CHAR(1),
    INDCLT         CHAR(1),
    CODCCU         VARCHAR(9),
    SITDEP         CHAR(1),
    OBSDEP         VARCHAR(250),
    SEQDEP         NUMERIC(4),
    DEPVEN         CHAR(1),
    MSGESN         CHAR(1),
    DEPVIR         CHAR(1),
    SITWMW         CHAR(1),
    INTWMW         CHAR(1),
    CONSTRAINT PK_TMPINTE205DEP
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODDEP)
)
;

CREATE TABLE TMPINTE075DER
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    CODEMP         NUMERIC(4)    NOT NULL,
    CODPRO         VARCHAR(14) NOT NULL,
    CODDER         VARCHAR(7) ,
    DESDER         VARCHAR(50),
    DESCPL         VARCHAR(90),
    DESFIS         VARCHAR(255),
    ITEFIS         VARCHAR(60),
    CODBAR         NUMERIC(14),
    CODAGR         NUMERIC(4),
    SEQCMD         NUMERIC(7),
    PRECUS         NUMERIC(15, 6),
    PESBRU         NUMERIC(11, 5),
    VOLDER         NUMERIC(11, 5),
    INDVOL         CHAR(1),
    PESLIQ         NUMERIC(11, 5),
    TIPCN2         CHAR(1),
    VLRCN2         NUMERIC(13, 6),
    CODREF         VARCHAR(40),
    CODEMB         NUMERIC(4),
    QTDEMB         NUMERIC(12, 5),
    SITDER         CHAR(1),
    DEPPAD         VARCHAR(10),
    CODBA2         VARCHAR(30),
	CONSTRAINT PK_TMPINTE075DER
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODPRO, CODDER)
)
;

CREATE TABLE TMPINTE075PRO
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    SEQINT         NUMERIC(8),
    CODEMP         NUMERIC(4)    NOT NULL,
    CODPRO         VARCHAR(14) NOT NULL,
    DESPRO         VARCHAR(100),
    CPLPRO         VARCHAR(50),
    DESNFV         VARCHAR(99),
    CODFAM         VARCHAR(6),
    UNIMED         VARCHAR(3),
    UNIME2         VARCHAR(3),
    UNIME3         VARCHAR(3),
    TIPPRO         CHAR(1),
    CODORI         VARCHAR(3),
    NUMORI         NUMERIC(4),
    CODMDP         VARCHAR(8),
    CODMOD         VARCHAR(14),
    CODROT         VARCHAR(14),
    CODAGE         VARCHAR(5),
    CODAGP         VARCHAR(5),
    CODAGU         VARCHAR(5),
    CODAGC         VARCHAR(5),
    CODAGF         VARCHAR(5),
    CODCLF         VARCHAR(3),
    CODSTR         VARCHAR(3),
    PERIPI         NUMERIC(5, 2),
    RECIPI         CHAR(1),
    TEMICM         CHAR(1),
    CODTIC         VARCHAR(3),
    CODTRD         VARCHAR(3),
    CODTST         VARCHAR(3),
    CODSTP         VARCHAR(3),
    CODSTC         VARCHAR(3),
    RECICM         CHAR(1),
    BXAORP         CHAR(1),
    CODPR2         VARCHAR(14),
    DERPR2         VARCHAR(7),
    CODPR3         VARCHAR(14),
    DERPR3         VARCHAR(7),
    CODPR4         VARCHAR(14),
    DERPR4         VARCHAR(7),
    PROSTQ         CHAR(1),
    SITPRO         CHAR(1),
    ROTPRO         CHAR(1),
    USOCUS         CHAR(1),
    INDMIS         CHAR(1),
    INDVEN         CHAR(1),
    INDCPR         CHAR(1),
    INDREQ         CHAR(1),
    INDKIT         CHAR(1),
    MATDIR         CHAR(1),
    INDPPC         CHAR(1),
    INDFPR         CHAR(1),
    DATGER         VARCHAR(20),
    DEPPAD         VARCHAR(10),
    CTRVLD         CHAR(1),
    CTRLOT         CHAR(1),
    LOTBAS         CHAR(1),
    CTRSEP         CHAR(1),
    QTDMVE         NUMERIC(12, 5),
    CODREF         VARCHAR(40),
    CODPIN         VARCHAR(20),
    EXGCCL         CHAR(1),
    EMIGTR         CHAR(1),
    RECPIS         CHAR(1),
    TRIPIS         CHAR(1),
    TRICOF         CHAR(1),
    CODFIF         VARCHAR(10),
    CODFIE         VARCHAR(60),
    CODFIM         VARCHAR(10),
    RECCOF         CHAR(1),
    UNIPAD         VARCHAR(3),
    CODMAR         VARCHAR(10),
    CODCLC         VARCHAR(10),
    CODAGM         VARCHAR(5),
    GERORP         CHAR(1),
    PERIRF         NUMERIC(4, 2),
    PERPIS         NUMERIC(4, 2),
    PERCOF         NUMERIC(4, 2),
    PERCSL         NUMERIC(4, 2),
    CONMON         CHAR(1),
    CODAGA         VARCHAR(5),
    INDOCT         CHAR(1),
    INDSPR         CHAR(1),
    CODEND         VARCHAR(20),
    PESBRU         NUMERIC(11, 5),
    PESLIQ         NUMERIC(11, 5),
    VOLPRO         NUMERIC(11, 5),
    PROIMP         VARCHAR(20),
    BASREC         CHAR(1),
    CTRVIS         CHAR(1),
    INDFRT         CHAR(1),
    FRTEQP         CHAR(1),
    GRPFRT         VARCHAR(4),
    TIPMFR         CHAR(1),
    UNIFRT         CHAR(1),
    CSTIPI         VARCHAR(2),
    CSTPIS         VARCHAR(2),
    CSTCOF         VARCHAR(2),
    TPRPIS         VARCHAR(4),
    TPRCOF         VARCHAR(4),
    TPRIPI         VARCHAR(4),
    REGTRI         CHAR(1),
    IDEPRO         VARCHAR(20),
    INDAFE         CHAR(1),
    CSTIPC         VARCHAR(2),
    CSTPIC         VARCHAR(2),
    CSTCOC         VARCHAR(2),
    ORIMER         CHAR(1),
    LARPRO         NUMERIC(11, 5),
    ALTPRO         NUMERIC(11, 5),
    COMPRO         NUMERIC(11, 5),
    QTDVOL         NUMERIC(4),
    ITEFIS         VARCHAR(60),
    DESFIS         VARCHAR(255),
    CODBIC         VARCHAR(3),
    UNIBCP         VARCHAR(3),
    CODENQ         VARCHAR(20),
    CODCES         VARCHAR(7),
    CONSTRAINT PK_TMPINTE075PRO
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODPRO)
)
;

CREATE TABLE TMPINTE012FAM
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    SEQINT         NUMERIC(8),
    CODEMP         NUMERIC(4)    NOT NULL,
    CODFAM         VARCHAR(6)  NOT NULL,
    DESFAM         VARCHAR(50),
    TIPPRO         CHAR(1),
    CODORI         VARCHAR(3),
    DEPPAD         VARCHAR(10),
    CTRVLD         CHAR(1),
    CTRLOT         CHAR(1),
    CTRSEP         CHAR(1),
    UNIMED         VARCHAR(3),
    UNIME2         VARCHAR(3),
    UNIME3         VARCHAR(3),
    UTIDEC         CHAR(1),
    QTDDEC         NUMERIC(1),
    TEMCTE         CHAR(1),
    NUMORI         NUMERIC(4),
    QTDMLT         NUMERIC(12, 5),
    QTDMIN         NUMERIC(12, 5),
    QTDMAX         NUMERIC(12, 5),
    QTDGOP         NUMERIC(12, 5),
    CODAGE         VARCHAR(5),
    CODAGP         VARCHAR(5),
    CODAGU         VARCHAR(5),
    CODAGC         VARCHAR(5),
    CODAGT         VARCHAR(5),
    CODAGF         VARCHAR(5),
    CODCLF         VARCHAR(3),
    CODSTR         VARCHAR(3),
    RECIPI         CHAR(1),
    RECCOF         CHAR(1),
    TEMICM         CHAR(1),
    CODTIC         VARCHAR(3),
    CODTRD         VARCHAR(3),
    CODTST         VARCHAR(3),
    CODSTP         VARCHAR(3),
    CODSTC         VARCHAR(3),
    RECICM         CHAR(1),
    MATDIR         CHAR(1),
    CODNTG         NUMERIC(4),
    INDKIT         CHAR(1),
    SOMIIM         CHAR(1),
    RECPIS         CHAR(1),
    INDEXP         NUMERIC(1),
    SOMIIL         CHAR(1),
    CODMAR         VARCHAR(10),
    CODCLC         VARCHAR(10),
    NIVCBN         NUMERIC(4),
    PERIRF         NUMERIC(4, 2),
    PERPIS         NUMERIC(8, 4),
    PERCOF         NUMERIC(8, 4),
    PERCSL         NUMERIC(4, 2),
    PEROUR         NUMERIC(4, 2),
    SOMIPS         CHAR(1),
    SOMICO         CHAR(1),
    SOMIPL         CHAR(1),
    SOMICL         CHAR(1),
    INDOCT         CHAR(1),
    INDSPR         CHAR(1),
    PRECUS         NUMERIC(15, 6),
    SITFAM         CHAR(1),
    PROIMP         NUMERIC(2),
    INTAGR         CHAR(1),
    CSTIPI         VARCHAR(2),
    CSTPIS         VARCHAR(2),
    CSTCOF         VARCHAR(2),
    CSTIPC         VARCHAR(2),
    CSTPIC         VARCHAR(2),
    CSTCOC         VARCHAR(2),
    VARPRO         CHAR(1),
    PERPIM         NUMERIC(8, 4),
    PERCIM         NUMERIC(8, 4),
    MGCMIN         NUMERIC(15, 6),
    MGCLIM         NUMERIC(15, 6),
    PERVEN         NUMERIC(24, 12),
    PREREF         NUMERIC(24, 12),
    CODBIC         VARCHAR(3),
    INDVOL         CHAR(1),
    CODPRI         VARCHAR(4),
    CODPRC         VARCHAR(4),
    SITWMW         CHAR(1),
    CONSTRAINT PK_TMPINTE012FAM
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODFAM)
)
;

CREATE TABLE TMPINTE083ORI
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    SEQINT         NUMERIC(8),
    CODEMP         NUMERIC(4)    NOT NULL,
    CODORI         VARCHAR(3)  NOT NULL,
    DESORI         VARCHAR(40) NOT NULL,
    NUMORI         NUMERIC(4)    NOT NULL,
    TIPPRO         CHAR(1)         NOT NULL,
    DEPPAD         VARCHAR(10),
    BXAAGR         CHAR(1),
    BXAMOV         CHAR(1),
    INDQBX         CHAR(1),
    BXAEST         CHAR(1),
    RESCMP         CHAR(1),
    MOVPAR         CHAR(1),
    MOPGRD         CHAR(1),
    GEROPR         CHAR(1),
    CTRVLD         CHAR(1),
    CTRSEP         CHAR(1),
    CTRLOT         CHAR(1),
    GERLOT         CHAR(1),
    LOTPAD         VARCHAR(50),
    CTRQLD         CHAR(1),
    CTRRFG         CHAR(1),
    ENTEPI         CHAR(1),
    CTRGOP         CHAR(1),
    GERFIL         CHAR(1),
    GERPED         CHAR(1),
    AGRIPD         CHAR(1),
    AGRNBC         CHAR(1),
    DISNEC         CHAR(1),
    GERRLA         CHAR(1),
    SITCAL         CHAR(1),
    CODPVP         VARCHAR(8),
    CNFNEC         CHAR(1),
    INIPVP         CHAR(1),
    ORPDER         CHAR(1),
    MLTPED         CHAR(1),
    INCPRO         CHAR(1),
    GERSOL         CHAR(1),
    GERAGR         CHAR(1),
    MOVOPD         CHAR(1),
    QTDBAS         NUMERIC(11, 4),
    USAFRQ         CHAR(1),
    USAFIX         CHAR(1),
    USAAUX         CHAR(1),
    MOVPRL         CHAR(1),
    OPDORP         CHAR(1),
    OBRPRV         CHAR(1),
    DISXPL         CHAR(1),
    SERXPL         CHAR(1),
    ACEPRV         CHAR(1),
    CODREG         NUMERIC(4),
    CODMS1         VARCHAR(8),
    CODMS2         VARCHAR(8),
    CODMS3         VARCHAR(8),
    CODMS4         VARCHAR(8),
    PRDTSP         VARCHAR(5),
    PRDTEP         VARCHAR(5),
    NOTFOR         NUMERIC(5, 2),
    AGRNBP         CHAR(1),
    DEPIQL         VARCHAR(10),
    GOPEOP         CHAR(1),
    TOLEXC         NUMERIC(9, 3),
    CODESO         VARCHAR(5),
    TIPINT         NUMERIC(1),
    CODMAR         VARCHAR(10),
    ABTPRV         CHAR(1),
    UTITCI         CHAR(1),
    INDCEE         CHAR(1),
    GERORP         CHAR(1),
    GERVER         CHAR(1),
    VERMAN         CHAR(1),
    DEFDAT         NUMERIC(1),
    INDSPR         CHAR(1),
    TELEMO         CHAR(1),
    INDSMT         CHAR(1),
    TELEIQ         CHAR(1),
    MOVINP         CHAR(1),
    SUSINP         CHAR(1),
    PROIMP         NUMERIC(2),
    USUGER         NUMERIC(10),
    DATGER         DATE,
    HORGER         NUMERIC(5),
    USUALT         NUMERIC(10),
    DATALT         DATE,
    HORALT         NUMERIC(5),
    CONINI         CHAR(1),
    INPSGQ         CHAR(1),
    CTRVIS         CHAR(1),
    DATVIS         DATE,
    HORVIS         NUMERIC(5),
    INDFRT         CHAR(1),
    FRTEQP         CHAR(1),
    GRPFRT         VARCHAR(4),
    GERIPM         CHAR(1),
    OBRDEF         CHAR(1),
    VARPRO         CHAR(1),
    FINOEO         CHAR(1),
    PROMON         CHAR(1),
    INDECA         CHAR(1),
    VOLAUT         CHAR(1),
    INDICP         CHAR(1),
    CMPCOB         CHAR(1),
    MODFAB         CHAR(1),
    TIPFTE         CHAR(1),
    MOMBXA         CHAR(1),
    FRMBXA         CHAR(1),
    INDENC         CHAR(1),
    INDACO         CHAR(1),
    INDM21         CHAR(1),
    CONSTRAINT PK_TMPINTE083ORI
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODORI)
)
;

CREATE TABLE TMPINTE081TPR
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    CODEMP         NUMERIC(4)    NOT NULL,
    CODTPR         VARCHAR(4)  NOT NULL,
    DATINI         DATE         NOT NULL,
    DATFIM         DATE,
    USAQTD         CHAR(1),
    TOLMAI         NUMERIC(5, 2),
    TOLMEN         NUMERIC(5, 2),
    PERDSC         NUMERIC(5, 2),
    PERCOM         NUMERIC(5, 2),
    DATREA         DATE,
    PERREA         NUMERIC(8, 5),
    SITREG         CHAR(1),
    MINREA         NUMERIC(15, 2),
    INDEXP         NUMERIC(1),
    VLTMAI         NUMERIC(21, 10),
    VLTMEN         NUMERIC(21, 10),
    ACRFIN         NUMERIC(5, 2),
    VENDSC         NUMERIC(5, 2),
    CONSTRAINT PK_TMPINTE081TPR
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODTPR, DATINI)
)
;

CREATE TABLE TMPINTE081TAB
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    SEQINT         NUMERIC(8),
    CODEMP         NUMERIC(4)    NOT NULL,
    CODTPR         VARCHAR(4)  NOT NULL,
    DESTPR         VARCHAR(250),
    ABRTPR         VARCHAR(15),
    CODMOE         VARCHAR(3),
    ESPCLI         CHAR(1),
    APLTPV         NUMERIC(1),
    INDEXP         NUMERIC(1),
    CODCLI         NUMERIC(9),
    CODTPB         VARCHAR(4),
    TABBLD         CHAR(1),
    CODAGG         CHAR(1),
    TABPRM         CHAR(1),
    TIPFPR         NUMERIC(1),
    CODFAM         VARCHAR(6),
    UNIMED         VARCHAR(3),
    TPRBAS         VARCHAR(4),
    TABDEV         CHAR(1),
    SITREG         CHAR(1),
    SITWMW         CHAR(1),
    CONSTRAINT PK_TMPINTE081TAB
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODTPR)
)
;

CREATE TABLE TMPINTE140NFV
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    CODEMP         NUMERIC(4)    NOT NULL,
    CODFIL         NUMERIC(4)    NOT NULL,
    CODSNF         VARCHAR(3)  NOT NULL,
    NUMNFV         NUMERIC(9)    NOT NULL,
    TIPNFS         NUMERIC(2),
    CODEDC         VARCHAR(3),
    TNSPRO         VARCHAR(5),
    TNSSER         VARCHAR(5),
    NOPPRO         VARCHAR(5),
    NOPSER         VARCHAR(5),
    DATEMI         DATE,
    CODCLI         NUMERIC(9),
    SEQENT         NUMERIC(5),
    SEQCOB         NUMERIC(5),
    CODROE         VARCHAR(3),
    SEQROE         NUMERIC(4),
    CODRAI         NUMERIC(7),
    CODREP         NUMERIC(9),
    CODCPG         VARCHAR(6),
    CODFPG         NUMERIC(2),
    CODMOE         VARCHAR(3),
    DATMOE         DATE,
    COTMOE         NUMERIC(19, 10),
    FECMOE         CHAR(1),
    CODFCR         VARCHAR(3),
    DATFCR         DATE,
    DATSAI         DATE,
    HORSAI         NUMERIC(5),
    CODTRA         NUMERIC(9),
    CODRED         NUMERIC(9),
    CODVIA         VARCHAR(3),
    PLAVEI         VARCHAR(10),
    QTDEMB         NUMERIC(6),
    CODEMB         NUMERIC(4),
    NUMEMB         VARCHAR(30),
    CODMS1         NUMERIC(4),
    CODMS2         NUMERIC(4),
    CODMS3         NUMERIC(4),
    CODMS4         NUMERIC(4),
    OBSNFV         VARCHAR(999),
    PESBRU         NUMERIC(14, 5),
    PESLIQ         NUMERIC(14, 5),
    NUMROM         VARCHAR(10),
    MEITRA         VARCHAR(20),
    TERTRA         VARCHAR(20),
    DATSMT         DATE,
    DATCTM         DATE,
    LOCEMB         VARCHAR(20),
    LOCDES         VARCHAR(20),
    DATCMC         DATE,
    HORCMC         NUMERIC(5),
    PERDS1         NUMERIC(5, 2),
    PERDS2         NUMERIC(5, 2),
    PERDS3         NUMERIC(5, 2),
    PERDS4         NUMERIC(5, 2),
    VLRFRE         NUMERIC(15, 2),
    CIFFOB         CHAR(1),
    VLRSEG         NUMERIC(15, 2),
    VLREMB         NUMERIC(15, 2),
    VLRENC         NUMERIC(15, 2),
    VLROUT         NUMERIC(15, 2),
    VLRDAR         NUMERIC(15, 2),
    VLRFRD         NUMERIC(15, 2),
    VLROUD         NUMERIC(15, 2),
    VLRBPR         NUMERIC(15, 2),
    VLRDPR         NUMERIC(15, 2),
    VLRBSE         NUMERIC(15, 2),
    VLRDSE         NUMERIC(15, 2),
    VLRDS1         NUMERIC(15, 2),
    VLRDS2         NUMERIC(15, 2),
    VLRDS3         NUMERIC(15, 2),
    VLRDS4         NUMERIC(15, 2),
    VLRDZF         NUMERIC(15, 2),
    VLRBFU         NUMERIC(15, 2),
    VLRFUN         NUMERIC(15, 2),
    VLRBIP         NUMERIC(15, 2),
    VLRIPI         NUMERIC(15, 2),
    VLRBID         NUMERIC(15, 2),
    VLRIPD         NUMERIC(15, 2),
    VLRBIC         NUMERIC(15, 2),
    VLRICM         NUMERIC(15, 2),
    VLRBSI         NUMERIC(15, 2),
    VLRSIC         NUMERIC(15, 2),
    VLRBSD         NUMERIC(15, 2),
    VLRISD         NUMERIC(15, 2),
    VLRBSP         NUMERIC(15, 2),
    VLRSTP         NUMERIC(15, 2),
    VLRBSC         NUMERIC(15, 2),
    VLRSTC         NUMERIC(15, 2),
    VLRBIS         NUMERIC(15, 2),
    VLRISS         NUMERIC(15, 2),
    VLRBIR         NUMERIC(15, 2),
    VLRIRF         NUMERIC(15, 2),
    VLRBIN         NUMERIC(15, 2),
    VLRINS         NUMERIC(15, 2),
    VLRBCO         NUMERIC(15, 2),
    VLRCOM         NUMERIC(15, 2),
    VLRLPR         NUMERIC(15, 2),
    VLRLSE         NUMERIC(15, 2),
    VLRLOU         NUMERIC(15, 2),
    VLRLIQ         NUMERIC(15, 2),
    VLRFIN         NUMERIC(15, 2),
    QTDITP         NUMERIC(3),
    QTDITS         NUMERIC(3),
    QTDDUP         NUMERIC(4),
    QTDBLO         NUMERIC(4),
    QTDEMI         NUMERIC(2),
    PREIMP         NUMERIC(9),
    SITNFV         CHAR(1),
    CODMOT         NUMERIC(6),
    OBSMOT         VARCHAR(250),
    NFVBLO         CHAR(1),
    USUBLO         NUMERIC(10),
    DATBLO         DATE,
    HORBLO         NUMERIC(5),
    VERCAL         NUMERIC(4),
    INTIMP         CHAR(1),
    NUMLOT         NUMERIC(9),
    INDSIG         CHAR(1),
    USUGER         NUMERIC(10),
    DATGER         DATE,
    HORGER         NUMERIC(5),
    PERFRE         NUMERIC(5, 2),
    PERSEG         NUMERIC(5, 2),
    PEREMB         NUMERIC(5, 2),
    PERENC         NUMERIC(5, 2),
    PEROUT         NUMERIC(5, 2),
    CPTFAT         DATE,
    CODSAC         NUMERIC(14),
    PERICF         NUMERIC(5, 2),
    ICMFRE         NUMERIC(15, 2),
    NUMGTR         NUMERIC(6),
    VLRBPI         NUMERIC(15, 2),
    VLRPIS         NUMERIC(15, 2),
    PEROF1         NUMERIC(5, 2),
    PEROF2         NUMERIC(5, 2),
    REMDES         CHAR(1),
    TIPRDE         CHAR(1),
    CGCRDE         NUMERIC(14),
    INSRDE         VARCHAR(25),
    ESTRDE         VARCHAR(2),
    MUNRDE         VARCHAR(60),
    UFSVEI         VARCHAR(2),
    KMTDIS         NUMERIC(8, 2),
    FORCAL         NUMERIC(1),
    INDSIN         CHAR(1),
    PRCNFV         NUMERIC(2),
    CODCL1         NUMERIC(9),
    CODCL2         NUMERIC(9),
    SECCAT         NUMERIC(15, 2),
    VLRADE         NUMERIC(15, 2),
    VLRTCO         NUMERIC(15, 2),
    VLRPDG         NUMERIC(15, 2),
    VLRBCR         NUMERIC(15, 2),
    VLRCOR         NUMERIC(15, 2),
    VLRBCL         NUMERIC(15, 2),
    VLRCSL         NUMERIC(15, 2),
    VLRBPT         NUMERIC(15, 2),
    VLRPIT         NUMERIC(15, 2),
    VLRBCT         NUMERIC(15, 2),
    VLRCRT         NUMERIC(15, 2),
    VLRBOR         NUMERIC(15, 2),
    VLROUR         NUMERIC(15, 2),
    INTPAT         CHAR(1),
    VLRBII         NUMERIC(15, 2),
    VLRIIM         NUMERIC(15, 2),
    CODMAR         VARCHAR(10),
    CODSRO         VARCHAR(3),
    CODLIP         VARCHAR(5),
    VLRRIS         NUMERIC(15, 2),
    VLROCL         NUMERIC(15, 2),
    VLROPT         NUMERIC(15, 2),
    VLROCT         NUMERIC(15, 2),
    VLROOR         NUMERIC(15, 2),
    NUMRDE         VARCHAR(20),
    NUMDDE         VARCHAR(20),
    INDCON         CHAR(1),
    CODTME         NUMERIC(4),
    CODTIP         NUMERIC(4),
    TRAMTR         NUMERIC(9),
    CODMTR         NUMERIC(6),
    TRAREB         NUMERIC(9),
    PLAREB         VARCHAR(10),
    VOLNFV         NUMERIC(14, 5),
    CODEQU         NUMERIC(3),
    NUMCFI         NUMERIC(9),
    CROECF         NUMERIC(6),
    VLRFEI         NUMERIC(15, 2),
    VLRSEI         NUMERIC(15, 2),
    VLROUI         NUMERIC(15, 2),
    BCOIMP         NUMERIC(15, 2),
    COFIMP         NUMERIC(15, 2),
    BPIIMP         NUMERIC(15, 2),
    PISIMP         NUMERIC(15, 2),
    NUMCPE         NUMERIC(9),
    NUMNSU         NUMERIC(10),
    DATNSU         DATE,
    HORNSU         NUMERIC(5),
    DATIMP         DATE,
    HORIMP         NUMERIC(5),
    DATAGE         DATE,
    DATCEX         DATE,
    VLRBPF         NUMERIC(15, 2),
    VLRPIF         NUMERIC(15, 2),
    VLRBCF         NUMERIC(15, 2),
    VLRCFF         NUMERIC(15, 2),
    DATVIS         DATE,
    HORVIS         NUMERIC(5),
    DIAFIX         NUMERIC(2),
    VLRBSF         NUMERIC(15, 2),
    VLRSIF         NUMERIC(15, 2),
    SEQPCO         NUMERIC(3),
    SEQPEN         NUMERIC(3),
    SNFNCF         VARCHAR(3),
    NUMNCF         NUMERIC(9),
    SOMFRE         CHAR(1),
    PERDS5         NUMERIC(5, 2),
    VLRDS5         NUMERIC(15, 2),
    UFSEBQ         VARCHAR(2),
    PROPRE         VARCHAR(60),
    TOTCID         NUMERIC(15, 2),
    NUMPIN         VARCHAR(15),
    NUMINT         VARCHAR(20),
    VLRMER         NUMERIC(15, 2),
    SERIMP         VARCHAR(10),
    FILFIX         NUMERIC(4),
    NUMFIX         NUMERIC(9),
    INDROR         CHAR(1),
    QTDBPI         NUMERIC(15, 3),
    QTDBCO         NUMERIC(15, 3),
    QTDBIP         NUMERIC(15, 3),
    QTDBPF         NUMERIC(15, 3),
    QTDBCF         NUMERIC(15, 3),
    BASOIR         NUMERIC(15, 2),
    VLROIR         NUMERIC(15, 2),
    VLRSUB         NUMERIC(15, 2),
    TEMAVA         CHAR(1),
    DATIZF         DATE,
    NUMCUR         VARCHAR(40),
    SEQRET         NUMERIC(4),
    CODTAB         VARCHAR(4),
    TRARE2         NUMERIC(9),
    PLARE2         VARCHAR(10),
    TRARE3         NUMERIC(9),
    PLARE3         VARCHAR(10),
    VLRBIF         NUMERIC(15, 2),
    HOREMI         NUMERIC(5),
    VLRDED         NUMERIC(15, 2),
    DATINV         DATE,
    VLRICD         NUMERIC(15, 2),
    CONSTRAINT PK_TMPINTE140NFV
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODFIL, CODSNF, NUMNFV)
)
;

CREATE TABLE TMPINTE140IPV
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    CODEMP         NUMERIC(4)    NOT NULL,
    CODFIL         NUMERIC(4)    NOT NULL,
    CODSNF         VARCHAR(3)  NOT NULL,
    NUMNFV         NUMERIC(9)    NOT NULL,
    SEQIPV         NUMERIC(3)    NOT NULL,
    TNSPRO         VARCHAR(5),
    NOPPRO         VARCHAR(5),
    FILPED         NUMERIC(4),
    NUMPED         NUMERIC(8),
    SEQIPD         NUMERIC(4),
    FILCTR         NUMERIC(4),
    NUMCTR         NUMERIC(9),
    DATCPT         DATE,
    SEQCVP         NUMERIC(3),
    CODPRO         VARCHAR(14),
    CODDER         VARCHAR(7),
    CPLIPV         VARCHAR(250),
    CODFAM         VARCHAR(6),
    CODCLF         VARCHAR(3),
    CODSTR         VARCHAR(3),
    CODTIC         VARCHAR(3),
    CODTRD         VARCHAR(3),
    CODTST         VARCHAR(3),
    CODSTP         VARCHAR(3),
    CODSTC         VARCHAR(3),
    CODDEP         VARCHAR(10),
    CODLOT         VARCHAR(50),
    QTDFAT         NUMERIC(14, 5),
    QTDDEV         NUMERIC(14, 5),
    UNIMED         VARCHAR(3),
    UNIEMI         VARCHAR(3),
    VLRFUM         NUMERIC(15, 2),
    QTDFRE         NUMERIC(14, 5),
    FORFRE         NUMERIC(9),
    PESBRU         NUMERIC(14, 5),
    PESLIQ         NUMERIC(14, 5),
    CODTPR         VARCHAR(4),
    PREUNI         NUMERIC(21, 10),
    PREBAS         NUMERIC(21, 10),
    PERDSC         NUMERIC(5, 2),
    PEROFE         NUMERIC(10, 5),
    PERACR         NUMERIC(10, 5),
    PERIPI         NUMERIC(8, 4),
    PERICM         NUMERIC(5, 2),
    PERFUN         NUMERIC(4, 2),
    PERCOM         NUMERIC(5, 2),
    SALCAN         CHAR(1),
    NUMPRJ         NUMERIC(8),
    CODFPJ         NUMERIC(4),
    CTAFIN         NUMERIC(7),
    CTARED         NUMERIC(7),
    CODCCU         VARCHAR(9),
    VLRFRE         NUMERIC(15, 2),
    VLRSEG         NUMERIC(15, 2),
    VLREMB         NUMERIC(15, 2),
    VLRENC         NUMERIC(15, 2),
    VLROUT         NUMERIC(15, 2),
    VLRDAR         NUMERIC(15, 2),
    VLRFRD         NUMERIC(15, 2),
    VLROUD         NUMERIC(15, 2),
    VLRBRU         NUMERIC(15, 2),
    VLRDSC         NUMERIC(15, 2),
    VLRDS1         NUMERIC(15, 2),
    VLRDS2         NUMERIC(15, 2),
    VLRDS3         NUMERIC(15, 2),
    VLRDS4         NUMERIC(15, 2),
    VLROFE         NUMERIC(15, 2),
    VLRDZF         NUMERIC(15, 2),
    VLRBFU         NUMERIC(15, 2),
    VLRFUN         NUMERIC(15, 2),
    VLRBIP         NUMERIC(15, 2),
    VLRIPI         NUMERIC(15, 2),
    VLRBID         NUMERIC(15, 2),
    VLRIPD         NUMERIC(15, 2),
    VLRBIC         NUMERIC(15, 2),
    VLRICM         NUMERIC(15, 2),
    VLRDFA         NUMERIC(15, 2),
    VLRBSI         NUMERIC(15, 2),
    VLRICS         NUMERIC(15, 2),
    VLRBSD         NUMERIC(15, 2),
    VLRISD         NUMERIC(15, 2),
    VLRBSP         NUMERIC(15, 2),
    VLRSTP         NUMERIC(15, 2),
    VLRBSC         NUMERIC(15, 2),
    VLRSTC         NUMERIC(15, 2),
    VLRBCO         NUMERIC(15, 2),
    VLRCOM         NUMERIC(15, 2),
    VLRIIP         NUMERIC(15, 2),
    VLRIIC         NUMERIC(15, 2),
    VLROIP         NUMERIC(15, 2),
    VLROIC         NUMERIC(15, 2),
    VLRLPR         NUMERIC(15, 2),
    VLRLOU         NUMERIC(15, 2),
    VLRLIQ         NUMERIC(15, 2),
    VLRFIN         NUMERIC(15, 2),
    SEQNFI         NUMERIC(4),
    FILNFC         NUMERIC(4),
    CODFOR         NUMERIC(9),
    NUMNFC         NUMERIC(9),
    SNFNFC         VARCHAR(3),
    SEQIPC         NUMERIC(3),
    NUMFCC         NUMERIC(6),
    USUGER         NUMERIC(10),
    DATGER         DATE,
    HORGER         NUMERIC(5),
    SERCCL         VARCHAR(3),
    NUMCCL         VARCHAR(15),
    UNIVEN         VARCHAR(3),
    QTDVEN         NUMERIC(14, 5),
    PREVEN         NUMERIC(21, 10),
    VLRBPI         NUMERIC(15, 2),
    VLRPIS         NUMERIC(15, 2),
    PREBRU         NUMERIC(21, 10),
    VLRBCR         NUMERIC(15, 2),
    VLRCOR         NUMERIC(15, 2),
    PERIIM         NUMERIC(5, 2),
    VLRBII         NUMERIC(15, 2),
    VLRIIM         NUMERIC(15, 2),
    CODMAR         VARCHAR(10),
    PERDS1         NUMERIC(5, 2),
    PERDS2         NUMERIC(5, 2),
    PERDS3         NUMERIC(5, 2),
    PERDS4         NUMERIC(5, 2),
    VLRRIS         NUMERIC(15, 2),
    CODBEM         VARCHAR(20),
    PERPIT         NUMERIC(4, 2),
    VLRBPT         NUMERIC(15, 2),
    VLRPIT         NUMERIC(15, 2),
    PERCRT         NUMERIC(4, 2),
    VLRBCT         NUMERIC(15, 2),
    VLRCRT         NUMERIC(15, 2),
    PERCSL         NUMERIC(4, 2),
    VLRBCL         NUMERIC(15, 2),
    VLRCSL         NUMERIC(15, 2),
    PEROUR         NUMERIC(4, 2),
    VLRBOR         NUMERIC(15, 2),
    VLROUR         NUMERIC(15, 2),
    PERIRF         NUMERIC(4, 2),
    VLRBIR         NUMERIC(15, 2),
    VLRIRF         NUMERIC(15, 2),
    DESIMP         VARCHAR(250),
    VLRFEI         NUMERIC(15, 2),
    VLRSEI         NUMERIC(15, 2),
    VLROUI         NUMERIC(15, 2),
    BCOIMP         NUMERIC(15, 2),
    COFIMP         NUMERIC(15, 2),
    BPIIMP         NUMERIC(15, 2),
    PISIMP         NUMERIC(15, 2),
    PEDCPE         NUMERIC(8),
    IPDCPE         NUMERIC(4),
    OBSIPV         VARCHAR(999),
    VLRBPF         NUMERIC(15, 2),
    PERPIF         NUMERIC(8, 4),
    VLRPIF         NUMERIC(15, 2),
    VLRBCF         NUMERIC(15, 2),
    PERCFF         NUMERIC(8, 4),
    VLRCFF         NUMERIC(15, 2),
    VLRBSF         NUMERIC(15, 2),
    VLRSIF         NUMERIC(15, 2),
    CSTIPI         VARCHAR(2),
    CSTPIS         VARCHAR(2),
    CSTCOF         VARCHAR(2),
    PERDS5         NUMERIC(5, 2),
    VLRDS5         NUMERIC(15, 2),
    CODDFS         NUMERIC(6),
    VLRAJS         NUMERIC(15, 2),
    PREREP         NUMERIC(14, 5),
    VLRCID         NUMERIC(15, 2),
    TOTCID         NUMERIC(15, 2),
    CODMS1         NUMERIC(4),
    CODMS2         NUMERIC(4),
    CODMS3         NUMERIC(4),
    CODMS4         NUMERIC(4),
    QTDBPI         NUMERIC(15, 3),
    ALIPIS         NUMERIC(15, 4),
    QTDBCO         NUMERIC(15, 3),
    ALICOF         NUMERIC(15, 4),
    QTDBIP         NUMERIC(15, 3),
    ALIIPI         NUMERIC(15, 4),
    QTDBPF         NUMERIC(15, 3),
    ALIPIF         NUMERIC(15, 4),
    QTDBCF         NUMERIC(15, 3),
    ALICFF         NUMERIC(15, 4),
    VLRSUB         NUMERIC(15, 2),
    NATPIS         NUMERIC(5),
    NATCOF         NUMERIC(5),
    ORIMER         CHAR(1),
    NUMCUR         VARCHAR(40),
    CODREP         NUMERIC(9),
    PROMON         CHAR(1),
    PROENT         CHAR(1),
    PERMGC         NUMERIC(14, 5),
    VARSER         CHAR(1),
    RETMAT         CHAR(1),
    TIPCUR         NUMERIC(1),
    EMPCTO         NUMERIC(4),
    CODPCO         NUMERIC(4),
    FILCTO         NUMERIC(4),
    CPTPCO         DATE,
    CODFIN         NUMERIC(4),
    MOTDES         NUMERIC(2),
    VLRICD         NUMERIC(15, 2),
    PERSEN         NUMERIC(4, 2),
    VLRBSN         NUMERIC(15, 2),
    VLRSEN         NUMERIC(15, 2),
    CODFCI         VARCHAR(36),
    CODBIC         VARCHAR(3),
    VLRIBS         NUMERIC(15, 2),
    VLRISN         NUMERIC(15, 2),
    PERISN         NUMERIC(5, 2),
    NROSEV         VARCHAR(40),
    NUMDRB         VARCHAR(11),
    NUMRDE         VARCHAR(12),
    NATEXP         CHAR(1),
    CHVNEX         VARCHAR(50),
    DTIGAR         DATE,
    DTFGAR         DATE,
    VLRAIP         NUMERIC(15, 2),
    PERAIP         NUMERIC(15, 2),
    NUMLAN         NUMERIC(9),
    VLRIDV         NUMERIC(15, 2),
    CODCNV         NUMERIC(4),
    VLRPMC         NUMERIC(11, 2),
    PERDCN         NUMERIC(5, 2),
    VLRDCN         NUMERIC(11, 2),
    PERDIF         NUMERIC(7, 4),
    BASIDF         NUMERIC(15, 2),
    PERIDF         NUMERIC(5, 2),
    VLRIDF         NUMERIC(15, 2),
    ABTDES         CHAR(1),
    TIPGAR         VARCHAR(2),
    SEQREM         NUMERIC(10),
    NUMREC         NUMERIC(9),
    SEQREI         NUMERIC(10),
    CODENQ         NUMERIC(3),
    ICMAOR         NUMERIC(5, 2),
    ICMVOR         NUMERIC(15, 2),
    ICMADE         NUMERIC(5, 2),
    ICMVDE         NUMERIC(15, 2),
    ICMBDE         NUMERIC(15, 2),
    ICMAFC         NUMERIC(7, 4),
    ICMVFC         NUMERIC(15, 2),
    CODCES         VARCHAR(7),
    BASIEF         NUMERIC(15, 2),
    PERIEF         NUMERIC(5, 2),
    VLRIEF         NUMERIC(15, 2),
    CODBNF         VARCHAR(10),
    CONSTRAINT PK_TMPINTE140IPV
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODFIL, CODSNF, NUMNFV, SEQIPV)
)
;

CREATE TABLE TMPINTE120IPD
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    SEQINT         NUMERIC(8),
    CODEMP         NUMERIC(4)    NOT NULL,
    CODFIL         NUMERIC(4)    NOT NULL,
    NUMPED         NUMERIC(8)    NOT NULL,
    SEQIPD         NUMERIC(4)    NOT NULL,
    TNSPRO         VARCHAR(5),
    PEDCLI         VARCHAR(20),
    SEQPCL         VARCHAR(10),
    PEDPRV         CHAR(1),
    CODPRO         VARCHAR(14),
    CODDER         VARCHAR(7),
    CPLIPD         VARCHAR(250),
    CODFAM         VARCHAR(6),
    CODAGR         NUMERIC(4),
    CODTIC         VARCHAR(3),
    CODTRD         VARCHAR(3),
    CODTST         VARCHAR(3),
    CODSTP         VARCHAR(3),
    CODSTC         VARCHAR(3),
    CODDEP         VARCHAR(10),
    CODLOT         VARCHAR(50),
    RESEST         CHAR(1),
    QTDPED         NUMERIC(14, 5),
    QTDAEN         NUMERIC(14, 5),
    QTDPOC         NUMERIC(14, 5),
    QTDFAT         NUMERIC(14, 5),
    QTDCAN         NUMERIC(14, 5),
    QTDABE         NUMERIC(14, 5),
    QTDRAE         NUMERIC(14, 5),
    QTDNLP         NUMERIC(14, 5),
    QTDRES         NUMERIC(14, 5),
    UNIMED         VARCHAR(3),
    CODMCP         VARCHAR(3),
    DATMFP         DATE,
    COTMFP         NUMERIC(19, 10),
    DATMOE         DATE,
    COTMOE         NUMERIC(19, 10),
    FECMOE         CHAR(1),
    CODTPR         VARCHAR(4),
    PREUNI         NUMERIC(21, 10),
    CODMOE         VARCHAR(3),
    PREFIX         CHAR(1),
    PERDSC         NUMERIC(5, 2),
    PEROFE         NUMERIC(10, 5),
    PERACR         NUMERIC(10, 5),
    PERIPI         NUMERIC(8, 4),
    PERICM         NUMERIC(5, 2),
    PERCOM         NUMERIC(5, 2),
    DATENT         DATE,
    DATANE         DATE,
    DATPOC         DATE,
    CODPVP         VARCHAR(8),
    NUMPRJ         NUMERIC(8),
    CODFPJ         NUMERIC(4),
    CTAFIN         NUMERIC(7),
    CTARED         NUMERIC(7),
    CODCCU         VARCHAR(9),
    VLRFRE         NUMERIC(15, 2),
    VLRSEG         NUMERIC(15, 2),
    VLREMB         NUMERIC(15, 2),
    VLRENC         NUMERIC(15, 2),
    VLROUT         NUMERIC(15, 2),
    VLRDAR         NUMERIC(15, 2),
    VLRFRD         NUMERIC(15, 2),
    VLROUD         NUMERIC(15, 2),
    VLRBRU         NUMERIC(15, 2),
    VLRDSC         NUMERIC(15, 2),
    VLRDS1         NUMERIC(15, 2),
    VLRDS2         NUMERIC(15, 2),
    VLRDS3         NUMERIC(15, 2),
    VLRDS4         NUMERIC(15, 2),
    VLROFE         NUMERIC(15, 2),
    VLRDZF         NUMERIC(15, 2),
    VLRBIP         NUMERIC(15, 2),
    VLRIPI         NUMERIC(15, 2),
    VLRBIC         NUMERIC(15, 2),
    VLRICM         NUMERIC(15, 2),
    VLRBSI         NUMERIC(15, 2),
    VLRICS         NUMERIC(15, 2),
    VLRBSP         NUMERIC(15, 2),
    VLRSTP         NUMERIC(15, 2),
    VLRBSC         NUMERIC(15, 2),
    VLRSTC         NUMERIC(15, 2),
    VLRBCO         NUMERIC(15, 2),
    VLRCOM         NUMERIC(15, 2),
    VLRLPR         NUMERIC(15, 2),
    VLRLOU         NUMERIC(15, 2),
    VLRLIQ         NUMERIC(15, 2),
    VLRFIN         NUMERIC(15, 2),
    SITIPD         NUMERIC(1),
    CODMOT         NUMERIC(6),
    OBSMOT         VARCHAR(250),
    GERNEC         NUMERIC(1),
    GERCGA         CHAR(1),
    RESMAN         CHAR(1),
    INDAED         CHAR(1),
    NUMCTR         NUMERIC(6),
    DATCPT         DATE,
    SEQCVP         NUMERIC(4),
    USUGER         NUMERIC(10),
    DATGER         DATE,
    HORGER         NUMERIC(5),
    QTDPPF         NUMERIC(14, 5),
    CMPKIT         CHAR(1),
    FILOCP         NUMERIC(4),
    NUMOCP         NUMERIC(8),
    SEQIPO         NUMERIC(4),
    UNIVEN         VARCHAR(3),
    QTDVEN         NUMERIC(14, 5),
    PREVEN         NUMERIC(21, 10),
    PREBRU         NUMERIC(21, 10),
    FILCTR         NUMERIC(4),
    CTRCVS         NUMERIC(9),
    CPTCVS         DATE,
    SEQCVS         NUMERIC(3),
    CODAVC         NUMERIC(9),
    CODFXA         VARCHAR(15),
    CODPGR         VARCHAR(5),
    IDXGRD         NUMERIC(6),
    CODMAR         VARCHAR(10),
    CODCLC         VARCHAR(10),
    PERDS1         NUMERIC(5, 2),
    PERDS2         NUMERIC(5, 2),
    PERDS3         NUMERIC(5, 2),
    PERDS4         NUMERIC(5, 2),
    FILPRD         NUMERIC(4),
    VLRRIS         NUMERIC(15, 2),
    INDPCE         CHAR(1),
    INDPCR         CHAR(1),
    PERPIT         NUMERIC(4, 2),
    VLRBPT         NUMERIC(15, 2),
    VLRPIT         NUMERIC(15, 2),
    PERCRT         NUMERIC(4, 2),
    VLRBCT         NUMERIC(15, 2),
    VLRCRT         NUMERIC(15, 2),
    PERCSL         NUMERIC(4, 2),
    VLRBCL         NUMERIC(15, 2),
    VLRCSL         NUMERIC(15, 2),
    PEROUR         NUMERIC(4, 2),
    VLRBOR         NUMERIC(15, 2),
    VLROUR         NUMERIC(15, 2),
    PERIRF         NUMERIC(4, 2),
    VLRBIR         NUMERIC(15, 2),
    VLRIRF         NUMERIC(15, 2),
    FILNFC         NUMERIC(4),
    FORNFC         NUMERIC(9),
    NUMNFC         NUMERIC(9),
    SNFNFC         VARCHAR(3),
    SEQIPC         NUMERIC(3),
    NCTLCL         VARCHAR(20),
    NRECLI         VARCHAR(20),
    NOSICL         NUMERIC(10),
    NOSFCL         NUMERIC(10),
    NOCCL1         VARCHAR(20),
    NOCCL2         VARCHAR(20),
    NOCCL3         VARCHAR(20),
    CODAGC         VARCHAR(5),
    CTRCVP         NUMERIC(9),
    CPTCVP         DATE,
    SEQCTR         NUMERIC(3),
    INDAPE         NUMERIC(1),
    OBSIPD         VARCHAR(999),
    SEQISP         NUMERIC(3),
    EMPOCP         NUMERIC(4),
    VLRBPF         NUMERIC(15, 2),
    PERPIF         NUMERIC(8, 4),
    VLRPIF         NUMERIC(15, 2),
    VLRBCF         NUMERIC(15, 2),
    PERCFF         NUMERIC(8, 4),
    VLRCFF         NUMERIC(15, 2),
    PERDS5         NUMERIC(5, 2),
    VLRDS5         NUMERIC(15, 2),
    AGRNEC         VARCHAR(25),
    AGRPAI         VARCHAR(25),
    ORIRES         CHAR(1),
    QTDBPF         NUMERIC(15, 3),
    ALIPIF         NUMERIC(15, 4),
    QTDBCF         NUMERIC(15, 3),
    ALICFF         NUMERIC(15, 4),
    QTDBIP         NUMERIC(15, 3),
    ALIIPI         NUMERIC(15, 4),
    INDIPM         CHAR(1),
    FILREM         NUMERIC(4),
    SNFREM         VARCHAR(3),
    NFVREM         NUMERIC(9),
    IPVREM         NUMERIC(3),
    CODCNV         NUMERIC(4),
    CODREP         NUMERIC(9),
    PROMON         CHAR(1),
    PROENT         CHAR(1),
    PERMGC         NUMERIC(14, 5),
    VARSER         CHAR(1),
    RETMAT         CHAR(1),
    SENAPR         VARCHAR(50),
    USUAPR         NUMERIC(10),
    DATAPR         DATE,
    HORAPR         NUMERIC(5),
    TIPCUR         NUMERIC(1),
    CODFIN         NUMERIC(4),
    CODBAR         VARCHAR(50),
    INDBRD         CHAR(1),
    BRDMAN         CHAR(1),
    DSCPRM         CHAR(1),
    PERJUR         NUMERIC(5, 2),
    PERDIF         NUMERIC(7, 4),
    BASIDF         NUMERIC(15, 2),
    PERIDF         NUMERIC(5, 2),
    VLRIDF         NUMERIC(15, 2),
    CODSTR         VARCHAR(3),
    FILNCO         NUMERIC(4),
    SNFNCO         VARCHAR(3),
    NUMNCO         NUMERIC(9),
    SEQNCO         NUMERIC(3),
    MOTDES         NUMERIC(2),
    VLRICD         NUMERIC(15, 2),
    SEQREM         NUMERIC(10),
    NUMREC         NUMERIC(9),
    SEQREI         NUMERIC(10),
    ICMAOR         NUMERIC(5, 2),
    ICMVOR         NUMERIC(15, 2),
    ICMADE         NUMERIC(5, 2),
    ICMVDE         NUMERIC(15, 2),
    ICMBDE         NUMERIC(15, 2),
    ICMAFC         NUMERIC(7, 4),
    ICMVFC         NUMERIC(15, 2),
    SEQHAS         NUMERIC(9),
    DATALT         DATE,
    HORALT         NUMERIC(5),
    USUALT         NUMERIC(10),
    VLRTOT         NUMERIC(15, 2),
    ITECAN         CHAR(1),
    DSCVAR         NUMERIC(15, 2),
    ACRVAR         NUMERIC(15, 2),
    PDSVAR         NUMERIC(5, 2),
    PACVAR         NUMERIC(10, 5),
    FILORI         NUMERIC(4),
    OBSENT         VARCHAR(250),
    FORENT         CHAR(1),
    NUMINT         VARCHAR(20),
    ICMBFC         NUMERIC(15, 2),
    BASFCP         NUMERIC(15, 2),
    ALIFCP         NUMERIC(7, 4),
    VLRFCP         NUMERIC(15, 2),
    BSTFCP         NUMERIC(15, 2),
    ASTFCP         NUMERIC(7, 4),
    VSTFCP         NUMERIC(15, 2),
    CMPMTG         CHAR(1),
    CONSTRAINT PK_TMPINTE120IPD
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODFIL, NUMPED, SEQIPD)
)
;

CREATE TABLE TMPINTE120PED
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9)    NOT NULL,
    SEQINT         NUMERIC(8),
    CODEMP         NUMERIC(4)    NOT NULL,
    CODFIL         NUMERIC(4)    NOT NULL,
    NUMPED         NUMERIC(8)    NOT NULL,
    TIPPED         NUMERIC(1),
    PRCPED         NUMERIC(2),
    TNSPRO         VARCHAR(5),
    TNSSER         VARCHAR(5),
    DATEMI         DATE,
    HOREMI         NUMERIC(5),
    DATPRV         DATE,
    HORPRV         NUMERIC(5),
    OBSPED         VARCHAR(999),
    CODCLI         NUMERIC(9),
    CATCLI         NUMERIC(3),
    QTDVPF         NUMERIC(3),
    INDAGR         CHAR(1),
    SEQENT         NUMERIC(5),
    SEQCOB         NUMERIC(5),
    SEQCTO         NUMERIC(5),
    PEDCLI         VARCHAR(20),
    CODROE         VARCHAR(3),
    SEQROE         NUMERIC(4),
    CODREP         NUMERIC(9),
    CODMOE         VARCHAR(3),
    CODMCP         VARCHAR(3),
    DATMFP         DATE,
    COTMFP         NUMERIC(19, 10),
    DATMOE         DATE,
    COTMOE         NUMERIC(19, 10),
    FECMOE         CHAR(1),
    CODFCR         VARCHAR(3),
    DATFCR         DATE,
    CODCPG         VARCHAR(6),
    PGTANT         CHAR(1),
    CODFPG         NUMERIC(2),
    QTDABE         NUMERIC(14, 5),
    QTDAEN         NUMERIC(14, 5),
    CODTRA         NUMERIC(9),
    CODRED         NUMERIC(9),
    CODVIA         VARCHAR(3),
    PLAVEI         VARCHAR(10),
    VLRFUM         NUMERIC(15, 2),
    QTDFRE         NUMERIC(14, 5),
    FORFRE         NUMERIC(9),
    VLRFRE         NUMERIC(15, 2),
    CIFFOB         CHAR(1),
    VLRSEG         NUMERIC(15, 2),
    VLREMB         NUMERIC(15, 2),
    VLRENC         NUMERIC(15, 2),
    VLROUT         NUMERIC(15, 2),
    VLRDAR         NUMERIC(15, 2),
    VLRFRD         NUMERIC(15, 2),
    VLROUD         NUMERIC(15, 2),
    PERDS1         NUMERIC(5, 2),
    PERDS2         NUMERIC(5, 2),
    PERDS3         NUMERIC(5, 2),
    PERDS4         NUMERIC(5, 2),
    VLRBPR         NUMERIC(15, 2),
    VLRDPR         NUMERIC(15, 2),
    VLRBSE         NUMERIC(15, 2),
    VLRDSE         NUMERIC(15, 2),
    VLRDS1         NUMERIC(15, 2),
    VLRDS2         NUMERIC(15, 2),
    VLRDS3         NUMERIC(15, 2),
    VLRDS4         NUMERIC(15, 2),
    VLROFE         NUMERIC(15, 2),
    VLRDZF         NUMERIC(15, 2),
    VLRBIP         NUMERIC(15, 2),
    VLRIPI         NUMERIC(15, 2),
    VLRBIC         NUMERIC(15, 2),
    VLRICM         NUMERIC(15, 2),
    VLRBSI         NUMERIC(15, 2),
    VLRSIC         NUMERIC(15, 2),
    VLRBSP         NUMERIC(15, 2),
    VLRSTP         NUMERIC(15, 2),
    VLRBSC         NUMERIC(15, 2),
    VLRSTC         NUMERIC(15, 2),
    VLRBIS         NUMERIC(15, 2),
    VLRISS         NUMERIC(15, 2),
    VLRBIR         NUMERIC(15, 2),
    VLRIRF         NUMERIC(15, 2),
    VLRBIN         NUMERIC(15, 2),
    VLRINS         NUMERIC(15, 2),
    VLRBCO         NUMERIC(15, 2),
    VLRCOM         NUMERIC(15, 2),
    VLRLPR         NUMERIC(15, 2),
    VLRLSE         NUMERIC(15, 2),
    VLRLOU         NUMERIC(15, 2),
    VLRLIQ         NUMERIC(15, 2),
    VLRFIN         NUMERIC(15, 2),
    VLRADT         NUMERIC(15, 2),
    QTDORI         NUMERIC(14, 5),
    VLRORI         NUMERIC(15, 2),
    TEMPAR         CHAR(1),
    CODPOR         VARCHAR(4),
    CODCRT         VARCHAR(2),
    SITPED         NUMERIC(1),
    CODMOT         NUMERIC(6),
    OBSMOT         VARCHAR(250),
    PEDBLO         CHAR(1),
    USUBLO         NUMERIC(10),
    DATBLO         DATE,
    HORBLO         NUMERIC(5),
    INDSIG         CHAR(1),
    VERCAL         NUMERIC(4),
    HORINI         NUMERIC(5),
    HORFIM         NUMERIC(5),
    USUGER         NUMERIC(10),
    DATGER         DATE,
    HORGER         NUMERIC(5),
    PERFRE         NUMERIC(5, 2),
    PERSEG         NUMERIC(5, 2),
    PEREMB         NUMERIC(5, 2),
    PERENC         NUMERIC(5, 2),
    PEROUT         NUMERIC(5, 2),
    CODSAC         NUMERIC(14),
    CODOPE         NUMERIC(9),
    CODVEN         NUMERIC(9),
    PEDPAL         NUMERIC(8),
    ACEPAR         CHAR(1),
    PEROF1         NUMERIC(5, 2),
    PEROF2         NUMERIC(5, 2),
    USUFEC         NUMERIC(10),
    DATFEC         DATE,
    HORFEC         NUMERIC(5),
    CLIREL         NUMERIC(9),
    VLRBCL         NUMERIC(15, 2),
    VLRCSL         NUMERIC(15, 2),
    VLRBPT         NUMERIC(15, 2),
    VLRPIT         NUMERIC(15, 2),
    VLRBCT         NUMERIC(15, 2),
    VLRCRT         NUMERIC(15, 2),
    VLRBOR         NUMERIC(15, 2),
    VLROUR         NUMERIC(15, 2),
    CODMAR         VARCHAR(10),
    CODSRO         VARCHAR(3),
    FILFAT         NUMERIC(4),
    CODCDI         NUMERIC(3),
    CODLIP         VARCHAR(5),
    CEPFRE         NUMERIC(8),
    VLRRIS         NUMERIC(15, 2),
    ANAEMB         CHAR(1),
    NUMEMP         VARCHAR(20),
    QTDANE         NUMERIC(9),
    DATAGE         DATE,
    FILNCO         NUMERIC(4),
    SNFNCO         VARCHAR(3),
    NUMNCO         NUMERIC(9),
    EXPWMS         NUMERIC(1),
    VLRBPF         NUMERIC(15, 2),
    VLRPIF         NUMERIC(15, 2),
    VLRBCF         NUMERIC(15, 2),
    VLRCFF         NUMERIC(15, 2),
    CODAPC         NUMERIC(9),
    SOMFRE         CHAR(1),
    QTDITP         NUMERIC(4),
    QTDITS         NUMERIC(4),
    PERDS5         NUMERIC(5, 2),
    VLRDS5         NUMERIC(15, 2),
    ROTANX         NUMERIC(2),
    NUMANX         NUMERIC(10),
    NUMNSU         NUMERIC(10),
    DATNSU         DATE,
    HORNSU         NUMERIC(5),
    INDEXP         NUMERIC(1),
    FATPED         NUMERIC(1),
    QTDBPF         NUMERIC(15, 3),
    QTDBCF         NUMERIC(15, 3),
    QTDBIP         NUMERIC(15, 3),
    NUMCES         NUMERIC(10),
    VENCAL         CHAR(1),
    DESDEF         VARCHAR(40),
    ANOVEI         VARCHAR(10),
    NUMREN         VARCHAR(20),
    DESMOD         VARCHAR(20),
    TIPDAV         NUMERIC(1),
    VLRECF         NUMERIC(15, 2),
    PERECF         NUMERIC(5, 2),
    TEMAVA         CHAR(1),
    CODTAB         VARCHAR(4),
    SENAPR         VARCHAR(50),
    USUAPR         NUMERIC(10),
    DATAPR         DATE,
    HORAPR         NUMERIC(5),
    SITPAC         NUMERIC(2),
    USUPAC         NUMERIC(10),
    QTDPAC         NUMERIC(2),
    CODSAF         VARCHAR(10),
    DATPRE         DATE,
    INDPRE         CHAR(1),
    CURMIL         VARCHAR(50),
    BASIDF         NUMERIC(15, 2),
    VLRIDF         NUMERIC(15, 2),
    SITMES         NUMERIC(1),
    VLRICD         NUMERIC(15, 2),
    MOTWMS         NUMERIC(6),
    TIPENT         NUMERIC(1),
    FORENT         CHAR(1),
    SEQHAS         NUMERIC(9),
    EQFIMP         NUMERIC(3),
    COOIMP         NUMERIC(9),
    CROECF         NUMERIC(6),
    VLRTOT         NUMERIC(15, 2),
    NUMINT         VARCHAR(20),
    IDEEVT         VARCHAR(50),
    VLRIOR         NUMERIC(15, 2),
    VLRBDE         NUMERIC(15, 2),
    VLRIDE         NUMERIC(15, 2),
    BASFCP         NUMERIC(15, 2),
    VLRFCP         NUMERIC(15, 2),
    BSTFCP         NUMERIC(15, 2),
    VSTFCP         NUMERIC(15, 2),
    ICMBFC         NUMERIC(15, 2),
    ICMVFC         NUMERIC(15, 2),
    CONSTRAINT PK_TMPINTE120PED
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODFIL, NUMPED)
)
;

CREATE TABLE TMPINTE081ITP
(
    CDMATRIZ       VARCHAR(20)  NOT NULL,
    CDFILIAL       VARCHAR(20)  NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6)  NOT NULL,
    NUSEQUENCIA    NUMERIC(9)     NOT NULL,
    CODEMP         NUMERIC(4)     NOT NULL,
    CODTPR         VARCHAR(4)   NOT NULL,
    DATINI         DATE          NOT NULL,
    CODPRO         VARCHAR(14)  NOT NULL,
    CODDER         VARCHAR(7),
    QTDMAX         NUMERIC(11, 2) NOT NULL,
    PREBAS         NUMERIC(21, 10),
    PERDSC         NUMERIC(5, 2),
    PERLIM         NUMERIC(5, 2),
    PERCOM         NUMERIC(5, 2),
    TOLMAI         NUMERIC(5, 2),
    TOLMEN         NUMERIC(5, 2),
    SITREG         CHAR(1),
    INDEXP         NUMERIC(1),
    PROEXT         VARCHAR(30),
    CODREP         NUMERIC(9),
    CODPRB         VARCHAR(14),
    VLTMAI         NUMERIC(21, 10),
    VLTMEN         NUMERIC(21, 10),
    OBSITP         VARCHAR(99),
    UNIMED         VARCHAR(3),
    ACRFIN         NUMERIC(5, 2),
    VENDSC         NUMERIC(5, 2),
    CODAGG         CHAR(1),
    MGCMIN         NUMERIC(15, 6),
    MGCLIM         NUMERIC(15, 6),
    MGCVEN         NUMERIC(15, 6),
    MGCPRO         NUMERIC(15, 6),
    MGCCOM         NUMERIC(15, 6),
    PREREF         NUMERIC(24, 12),
    PRECUS         NUMERIC(21, 10),
    PREPRO         NUMERIC(15, 6),
    INDPRO         CHAR(1),
    DATGER         DATE,
	CONSTRAINT PK_TMPINTE081ITP
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODTPR, CODPRO, CODDER)
)
;

CREATE TABLE TMPINTE075UGF 
(
	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	SEQUGF NUMERIC(9,0) ,
	CODEMP NUMERIC(4,0),
	CODPRO VARCHAR(14), 
	CODDER VARCHAR(7) ,
	SIGUFS VARCHAR(2) ,
	IDENGF NUMERIC(9,0),
	CONSTRAINT PK_TMPINTE075UGF
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, SEQUGF, CODEMP, CODPRO, CODDER, SIGUFS, IDENGF)
)
;

CREATE TABLE TMPINTE075FOT 
(
	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	CODPRO VARCHAR(14), 
	CODDER VARCHAR(7) , 
	IMAGEM BYTEA, 
	SEQLPF NUMERIC(4,0), 
	SEQINT NUMERIC(8,0), 
	DESFOT VARCHAR(240), 
	SITFOT CHAR(1), 
	VERFOT NUMERIC(8,0),
	CONSTRAINT PK_TMPINTE075FOT
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODPRO, CODDER, SEQLPF)
)
;

CREATE TABLE TMPINTE001TNS 
(
	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	SEQINT NUMERIC(8,0), 
	CODEMP NUMERIC(4,0), 
	CODTNS VARCHAR(5), 
	DESTNS VARCHAR(60), 
	DETTNS VARCHAR(1000), 
	COMNAT VARCHAR(5), 
	COMNOP VARCHAR(5), 
	SITTNS CHAR(1),
	CONSTRAINT PK_TMPINTE001TNS
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODTNS)
)
;

CREATE TABLE TMPINTE008CEP 
(
	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	SEQINT NUMERIC(8,0), 
	CEPINI NUMERIC(8,0), 
	CEPFIM NUMERIC(8,0), 
	CODRAI NUMERIC(7,0), 
	NOMCID VARCHAR(60), 
	SIGUFS VARCHAR(2), 
	BAICID VARCHAR(75), 
	ENDCID VARCHAR(100), 
	NOMUFS VARCHAR(20), 
	CODIBG NUMERIC(7,0),
	CONSTRAINT PK_TMPINTE008CEP
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CEPINI, CEPFIM)
)
;

CREATE TABLE TMPINTE008RAI 
(
	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	SEQINT NUMERIC(8,0), 
	CODRAI NUMERIC(7,0), 
	NOMCID VARCHAR(60), 
	SIGUFS VARCHAR(2), 
	LOCGEO VARCHAR(6), 
	NUMFEB NUMERIC(5,0),
	CONSTRAINT PK_TMPINTE008RAI
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODRAI)
)
; 

CREATE TABLE TMPINTE028ICP 
(
	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	CODEMP NUMERIC(4,0), 
	CODCPG VARCHAR(6), 
	SEQICP NUMERIC(2,0), 
	QTDPAR NUMERIC(3,0), 
	DIAPAR NUMERIC(3,0), 
	DIAFIX VARCHAR(1), 
	QTDDSC NUMERIC(3,0), 
	PERDSC NUMERIC(4,2), 
	INDPAG CHAR(1), 
	CODFPG NUMERIC(2,0),
	CONSTRAINT PK_TMPINTE028ICP
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODCPG)
)
; 

CREATE TABLE TMPINTE076MAR 
(
	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	SEQINT NUMERIC(8,0), 
	CODMAR VARCHAR(10), 
	NOMMAR VARCHAR(40), 
	SITMAR CHAR(1),
	CONSTRAINT PK_TMPINTE076MAR
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODMAR)
	
)
; 

CREATE TABLE TMPINTE073TRA 
(
    CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	SEQINT NUMERIC(8,0), 
	CODTRA NUMERIC(9,0), 
	NOMTRA VARCHAR(100), 
	APETRA VARCHAR(50), 
	TIPTRA CHAR(1), 
	INSEST VARCHAR(25), 
	INSMUN VARCHAR(16), 
	CGCCPF NUMERIC(14,0), 
	ENDTRA VARCHAR(100), 
	CPLEND VARCHAR(200), 
	CEPTRA NUMERIC(8,0), 
	BAITRA VARCHAR(75), 
	CIDTRA VARCHAR(60), 
	SIGUFS VARCHAR(2), 
	NOMCTO VARCHAR(150), 
	FONTRA VARCHAR(20), 
	FAXTRA VARCHAR(20), 
	CXAPST NUMERIC(6,0), 
	INTNET VARCHAR(100), 
	CIFFOB CHAR(1), 
	TRACLI NUMERIC(9,0), 
	TRAFOR NUMERIC(9,0), 
	SITTRA CHAR(1), 
	PESMAX NUMERIC(11,2), 
	VOLMAX NUMERIC(11,2), 
	CODGRE NUMERIC(9,0), 
	INDEXP NUMERIC(1,0), 
	EENTRA VARCHAR(18), 
	PAGCLE CHAR(1), 
	NENTRA VARCHAR(60), 
	NRNTRC VARCHAR(14), 
	CODPAI VARCHAR(4), 
	VLRKMT NUMERIC(15,2), 
	PROTRA NUMERIC(1,0),
	CONSTRAINT PK_TMPINTE073TRA
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODTRA)
)
;

CREATE TABLE TMPINTE000GPF 
(
	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	IDENGF NUMERIC(9,0), 
	CODEMP NUMERIC(4,0), 
	STICMS VARCHAR(3), 
	ALICMS NUMERIC(4,2), 
	STICME VARCHAR(3), 
	ALICME NUMERIC(4,2), 
	STPISS VARCHAR(2), 
	ALPISS NUMERIC(4,2), 
	STPISE VARCHAR(2), 
	ALPISE NUMERIC(4,2), 
	STCOFS VARCHAR(2), 
	ALCOFS NUMERIC(4,2), 
	STCOFE VARCHAR(2), 
	ALCOFE NUMERIC(4,2), 
	STIPIS VARCHAR(2), 
	ALIPIS NUMERIC(4,2), 
	STIPIE VARCHAR(2), 
	ALIPIE NUMERIC(5,2), 
	MDCIPI NUMERIC(1,0), 
	ALISSS NUMERIC(6,4), 
	ALISSE NUMERIC(6,4), 
	TABMVA VARCHAR(3), 
	STBPAF VARCHAR(3), 
	SIGUFS VARCHAR(2), 
	TIPTRB NUMERIC(1,0), 
	MDBICM NUMERIC(1,0), 
	ICMESE NUMERIC(4,2), 
	REDICE NUMERIC(8,5), 
	REDSAI NUMERIC(8,5), 
	REDENT NUMERIC(8,5), 
	ICMESS NUMERIC(4,2), 
	REDICS NUMERIC(8,5), 
	TPRPIS VARCHAR(4), 
	TPRCOF VARCHAR(4), 
	TPRIPI VARCHAR(4), 
	ISSERD NUMERIC(6,4), 
	ISSERT NUMERIC(6,4), 
	ISSSRD NUMERIC(6,4), 
	ISSSRT NUMERIC(6,4), 
	MDCCOF NUMERIC(1,0), 
	MDCPIS NUMERIC(1,0), 
	PERDIF NUMERIC(5,2), 
	ICMAFC NUMERIC(5,2), 
	ICMIND NUMERIC(5,2), 
	TIPBDA NUMERIC(2,0), 
	REDICM NUMERIC(8,5), 
	TEMICM CHAR(1), 
	CODBNF VARCHAR(10), 
	CODENQ NUMERIC(3,0), 
	ISTMIN NUMERIC(5,2), 
	ICMNCO NUMERIC(4,2), 
	MARLUC NUMERIC(7,4),
	CONSTRAINT PK_TMPINTE000GPF
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, IDENGF)
)
;

CREATE TABLE TMPINTE130REP
(
    CDMATRIZ       VARCHAR(20),
    CDFILIAL       VARCHAR(20),
    DTHRIMPORTACAO TIMESTAMP(6),
    NUSEQUENCIA    NUMERIC(9, 0),
    SEQINT         NUMERIC(8, 0),
    CODEMP         NUMERIC(4, 0),
    CODPME         NUMERIC(4, 0),
    CPTPME         DATE,
    PROSER         VARCHAR(1),
    SEQDME         NUMERIC(4, 0),
    CODREP         NUMERIC(9, 0),
    CODFIL         NUMERIC(5, 0),
    REPFIL         NUMERIC(9, 0),
    CATREP         VARCHAR(3),
    VLRREP         NUMERIC(15, 5),
    MGCREP         NUMERIC(14, 5),
    PERREP         NUMERIC(14, 5),
    FORAPU         NUMERIC(1, 0),
    USUGER         NUMERIC(10, 0),
    DATGER         DATE,
    HORGER         NUMERIC(5, 0),
    PERQTD         NUMERIC(14, 5),
    CODAGP         VARCHAR(5),
    VARSER         VARCHAR(1),
    METFIL         VARCHAR(1),
	CONSTRAINT PK_TMPINTE130REP
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODPME)
)
;

CREATE TABLE TMPINTE013AGP 
(
	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	SEQINT NUMERIC(8,0), 
	CODEMP NUMERIC(4,0), 
	CODAGP VARCHAR(5), 
	DESAGP VARCHAR(30), 
	ABRAGP VARCHAR(15), 
	TIPAGP CHAR(1), 
	CODFIF VARCHAR(10), 
	CODFIE VARCHAR(60), 
	CODFIM VARCHAR(10), 
	MGCMIN NUMERIC(15,6), 
	MGCLIM NUMERIC(15,6), 
	PERVEN NUMERIC(24,12), 
	PREREF NUMERIC(24,12),
	CONSTRAINT PK_TMPINTE013AGP
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODAGP)
)
;

CREATE TABLE TMPINTE025FER 
(
	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	SEQINT NUMERIC(8,0), 
	DIAFER NUMERIC(2,0), 
	MESFER NUMERIC(2,0), 
	ANOFER NUMERIC(4,0), 
	CEPINI NUMERIC(8,0), 
	CEPFIM NUMERIC(8,0), 
	DESFER VARCHAR(30), 
	FERBAN CHAR(1),
	CONSTRAINT PK_TMPINTE025FER
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, DIAFER, MESFER, ANOFER)
)
;

CREATE TABLE TMPINTE073MOT 
(
	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	SEQINT NUMERIC(8,0), 
	CODTRA NUMERIC(9,0), 
	CODMTR NUMERIC(6,0), 
	NOMMOT VARCHAR(100), 
	CGCCPF NUMERIC(12,0), 
	ENDMOT VARCHAR(100), 
	CPLEND VARCHAR(200), 
	BAIMOT VARCHAR(75), 
	CEPMOT NUMERIC(8,0), 
	CEPINI NUMERIC(8,0), 
	CIDMOT VARCHAR(60), 
	SIGUFS VARCHAR(2), 
	FONMOT VARCHAR(20), 
	FONMO2 VARCHAR(20), 
	FAXMOT VARCHAR(20), 
	CXAPST NUMERIC(6,0), 
	INTNET VARCHAR(100), 
	SITMOT VARCHAR(1), 
	CODMOT NUMERIC(6,0), 
	OBSMOT VARCHAR(250), 
	CODPAI VARCHAR(4), 
	MOTFOR NUMERIC(9,0), 
	NUMCNH VARCHAR(30), 
	VLDCNH DATE, 
	EMICNH DATE, 
	CATCNH VARCHAR(2), 
	NUMRGE VARCHAR(13), 
	ORGRGE VARCHAR(6), 
	DATRGE DATE, 
	DATNAS DATE, 
	CONMOT VARCHAR(1), 
	SITLIS VARCHAR(1), 
	NUMPRO VARCHAR(15), 
	EENMOT VARCHAR(18), 
	NENMOT VARCHAR(60), 
	METMOT NUMERIC(4,0), 
	VCTMET NUMERIC(4,0), 
	PERCOM NUMERIC(5,2), 
	NUMIDF VARCHAR(40),
	CONSTRAINT PK_TMPINTE073MOT
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODTRA, CODMTR)
)
;

CREATE TABLE TMPINTE026RAM 
(
	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	SEQINT NUMERIC(8,0), 
	CODRAM VARCHAR(5), 
	DESRAM VARCHAR(100), 
	ABRRAM VARCHAR(10),
	CONSTRAINT PK_TMPINTE026RAM
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODRAM)
)
;

CREATE TABLE TMPINTE021MOT 
(
	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	SEQINT NUMERIC(8,0), 
	CODMOT NUMERIC(6,0), 
	DESMOT VARCHAR(30), 
	APLMOT NUMERIC(2,0), 
	DESAPL VARCHAR(60), 
	BLOCRE CHAR(1), 
	EXINMA CHAR(1),
	CONSTRAINT PK_TMPINTE021MOT
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODMOT)
)
;

CREATE TABLE TMPINTE015MED 
(	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	SEQINT NUMERIC(8,0), 
	UNIMED VARCHAR(3), 
	DESMED VARCHAR(40), 
	QTDDEC NUMERIC(9,0), 
	CODREG NUMERIC(4,0), 
	INDPES CHAR(1), 
	UNIFIS VARCHAR(6), 
	UNIECF VARCHAR(2),
	CONSTRAINT PK_TMPINTE015MED
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, UNIMED)
)
;

CREATE TABLE TMPINTE015TCU 
(	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	UNIMED VARCHAR(3), 
	UNIME2 VARCHAR(3), 
	TIPCNV CHAR(1), 
	VLRCNV NUMERIC(13,6), 
	CODREG NUMERIC(4,0),
	CONSTRAINT PK_TMPINTE015TCU
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, UNIMED, UNIME2)
)
;

CREATE TABLE TMPINTE002TPT 
(	CDMATRIZ VARCHAR(20), 
	CDFILIAL VARCHAR(20), 
	DTHRIMPORTACAO TIMESTAMP (6), 
	NUSEQUENCIA NUMERIC(9,0), 
	SEQINT NUMERIC(8,0), 
	CODTPT VARCHAR(3), 
	DESTPT VARCHAR(40), 
	ABRTPT VARCHAR(5), 
	RECSOM CHAR(1), 
	PAGSOM CHAR(1), 
	APLTPT CHAR(1), 
	VENCAC CHAR(1), 
	SOMIRF CHAR(1), 
	PAGEEV VARCHAR(3), 
	CODPDV VARCHAR(4), 
	GERDCT CHAR(1), 
	CODIMP VARCHAR(3), 
	TITFIS VARCHAR(2), 
	SITTPT CHAR(1), 
	EXCVAR CHAR(1),
	CONSTRAINT PK_TMPINTE002TPT
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODTPT)
)
;

CREATE TABLE TMPINTE006PAI (
    CDMATRIZ VARCHAR(20) NOT NULL,
    CDFILIAL VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP (6) NOT NULL,
    NUSEQUENCIA NUMERIC(9, 0) NOT NULL,
    SEQINT NUMERIC(8, 0),
    CODPAI VARCHAR(4) NOT NULL,
    NOMPAI VARCHAR(100),
    CODMOE VARCHAR(3),
    MERSUL CHAR(1),
    VISENT CHAR(1),
    PAISIS NUMERIC(3, 0),
	CONSTRAINT PK_TMPINTE006PAI
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODPAI)
)
;

CREATE TABLE TMPINTE140PAR
(
    CDMATRIZ       VARCHAR(20)  NOT NULL ,
    CDFILIAL       VARCHAR(20)  NOT NULL ,
    DTHRIMPORTACAO TIMESTAMP(6)  NOT NULL ,
    NUSEQUENCIA    NUMERIC(9, 0)  NOT NULL ,
    CODEMP         NUMERIC(4, 0)  NOT NULL,
    CODFIL         NUMERIC(5, 0)  NOT NULL,
    CODSNF         VARCHAR(3)   NOT NULL,
    NUMNFV         NUMERIC(9, 0)  NOT NULL,
    CODPAR         NUMERIC(3, 0)  NOT NULL,
    CODCRP         VARCHAR(3)   NULL,
    NUMTIT         VARCHAR(15)  NULL,
    CODTPT         VARCHAR(3)   NULL,
    CODFCR         VARCHAR(3)   NULL,
    DATFCR         DATE          NULL,
    VCTPAR         DATE          NULL,
    VLRPAR         NUMERIC(15, 2) NULL,
    PERDDP         NUMERIC(5, 2)  NULL,
    QTDDDD         NUMERIC(3, 0)  NULL,
    CODPOR         VARCHAR(4)   NULL,
    CODCRT         VARCHAR(2)   NULL,
    CODNTG         NUMERIC(4, 0)  NULL,
    OBSPAR         VARCHAR(250) NULL,
    USUGER         NUMERIC(10, 0) NULL,
    DATGER         DATE          NULL,
    HORGER         NUMERIC(5, 0)  NULL,
    CODFPG         NUMERIC(2, 0)  NULL,
    GERBAI         VARCHAR(1)   NULL,
    TNSBAI         VARCHAR(5)   NULL,
    DATNEG         DATE          NULL,
    DSCNEG         NUMERIC(15, 2) NULL,
    CODSAC         NUMERIC(14, 0) NULL,
    CATEXT         VARCHAR(100) NULL,
    VLRDDP         NUMERIC(15, 2) NULL,
    DSCANT         NUMERIC(4, 2)  NULL,
    DSCPON         NUMERIC(4, 2)  NULL,
    JURVEN         VARCHAR(1)   NULL,
    DATPPT         DATE          NULL,
    LOCTIT         VARCHAR(50)  NULL,
    NUMPFI         VARCHAR(15)  NULL,
    CODFIN         NUMERIC(4, 0)  NULL,
    ENTPAR         VARCHAR(1)   NULL,
    TITBAN         VARCHAR(20)  NULL,
    JRSNEG         NUMERIC(15, 2) NULL,
    MULNEG         NUMERIC(15, 2) NULL,
    OUTNEG         NUMERIC(15, 2) NULL,
	CONSTRAINT PK_TMPINTE140PAR
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODFIL, CODSNF, NUMNFV, CODPAR)
)
;

CREATE TABLE TMPINTE039POR
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9, 0) NOT NULL,
    SEQINT         NUMERIC(8, 0),
    CODEMP         NUMERIC(4, 0) NOT NULL,
    CODPOR         VARCHAR(4)  NOT NULL,
    DESPOR         VARCHAR(30),
    ABRPOR         VARCHAR(10),
    CODBAN         VARCHAR(3),
    CODAGE         VARCHAR(7),
    NUMCCO         VARCHAR(14),
    FLOBAN         NUMERIC(2, 0),
    CODIN1         VARCHAR(3),
    CODIN2         VARCHAR(3),
    NUMARB         NUMERIC(9, 0),
    EXPARB         NUMERIC(5, 0),
    IMPARB         NUMERIC(5, 0),
    INDBPC         CHAR(1),
    BAILOJ         CHAR(1),
    TIPJRS         CHAR(1),
    SISCOB         NUMERIC(2, 0),
    EXINMA         CHAR(1),
	CONSTRAINT PK_TMPINTE039POR
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODPOR)
)
;

CREATE TABLE TMPINTE210DLS
(
    CDMATRIZ       VARCHAR(20)  NOT NULL,
    CDFILIAL       VARCHAR(20)   NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6)  NOT NULL,
    NUSEQUENCIA    DECIMAL(9, 0) NOT NULL,
    SEQINT         NUMERIC(8, 0),
    CODEMP         NUMERIC(4, 0)  NOT NULL,
    CODPRO         VARCHAR(14)   NOT NULL,
    CODDER         VARCHAR(7)    NOT NULL,
    CODDEP         VARCHAR(10)  NOT NULL,
    SEQENT         NUMERIC(4, 0)  NOT NULL,
    NUMSEP         VARCHAR(50)  NOT NULL,
    CODLOT         VARCHAR(50)  NOT NULL,
    DATVLT         VARCHAR(10),
    QTDEST         NUMERIC(14, 5),
	CONSTRAINT PK_TMPINTE210DLS
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODPRO, CODDER, CODDEP, SEQENT, NUMSEP, CODLOT)
)
;

CREATE TABLE TMPINTE440NFC
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9, 0) NOT NULL,
    SEQINT         NUMERIC(8, 0),
    CODEMP         NUMERIC(4, 0) NOT NULL,
    CODFIL         NUMERIC(5, 0) NOT NULL,
    CODFOR         NUMERIC(9, 0) NOT NULL,
    NUMNFC         NUMERIC(9, 0) NOT NULL,
    CODSNF         VARCHAR(3)  NOT NULL,
    TIPNFE         NUMERIC(2, 0),
    CODEDC         VARCHAR(3),
    CODTRI         VARCHAR(5),
    DATENT         DATE,
    TNSPRO         VARCHAR(5),
    TNSSER         VARCHAR(5),
    NOPPRO         VARCHAR(5),
    NOPSER         VARCHAR(5),
    DATEMI         DATE,
    UFSCIC         VARCHAR(2),
    CODCPG         VARCHAR(6),
    CODFPG         NUMERIC(2, 0),
    CODMOE         VARCHAR(3),
    DATMOE         DATE,
    COTMOE         NUMERIC(19, 10),
    FECMOE         VARCHAR(1),
    CODFCR         VARCHAR(3),
    DATFCR         DATE,
    CODTRA         NUMERIC(9, 0),
    CODRED         NUMERIC(9, 0),
    QTDEMB         NUMERIC(6, 0),
    CODEMB         NUMERIC(4, 0),
    NUMEMB         VARCHAR(30),
    CODMS1         NUMERIC(4, 0),
    CODMS2         NUMERIC(4, 0),
    CODMS3         NUMERIC(4, 0),
    CODMS4         NUMERIC(4, 0),
    OBSNFC         VARCHAR(1000),
    PESBRU         NUMERIC(14, 5),
    PESLIQ         NUMERIC(14, 5),
    PERDS1         NUMERIC(5, 2),
    PERDS2         NUMERIC(5, 2),
    PERFIN         NUMERIC(4, 2),
    VLRDZF         NUMERIC(15, 2),
    VLRFRE         NUMERIC(15, 2),
    CIFFOB         VARCHAR(1),
    VLRSEG         NUMERIC(15, 2),
    VLREMB         NUMERIC(15, 2),
    VLRENC         NUMERIC(15, 2),
    VLROUT         NUMERIC(15, 2),
    VLRDAR         NUMERIC(15, 2),
    VLRFRD         NUMERIC(15, 2),
    VLROUD         NUMERIC(15, 2),
    VLRBPR         NUMERIC(15, 2),
    VLRDPR         NUMERIC(15, 2),
    VLRBSE         NUMERIC(15, 2),
    VLRDSE         NUMERIC(15, 2),
    VLRDS1         NUMERIC(15, 2),
    VLRDS2         NUMERIC(15, 2),
    VLRBFU         NUMERIC(15, 2),
    VLRFUN         NUMERIC(15, 2),
    VLRBIP         NUMERIC(15, 2),
    VLRIPI         NUMERIC(15, 2),
    VLRBID         NUMERIC(15, 2),
    VLRIPD         NUMERIC(15, 2),
    VLRBIC         NUMERIC(15, 2),
    VLRICM         NUMERIC(15, 2),
    VLRBSI         NUMERIC(15, 2),
    VLRSIC         NUMERIC(15, 2),
    VLRBSD         NUMERIC(15, 2),
    VLRISD         NUMERIC(15, 2),
    VLRBSP         NUMERIC(15, 2),
    VLRSTP         NUMERIC(15, 2),
    VLRBSC         NUMERIC(15, 2),
    VLRSTC         NUMERIC(15, 2),
    VLRBIS         NUMERIC(15, 2),
    VLRISS         NUMERIC(15, 2),
    VLRBIR         NUMERIC(15, 2),
    VLRIRF         NUMERIC(15, 2),
    VLRBIN         NUMERIC(15, 2),
    VLRINS         NUMERIC(15, 2),
    VLRLPR         NUMERIC(15, 2),
    VLRLSE         NUMERIC(15, 2),
    VLRLOU         NUMERIC(15, 2),
    VLRLIQ         NUMERIC(15, 2),
    VLRINF         NUMERIC(15, 2),
    VLRFIN         NUMERIC(15, 2),
    SITNFC         VARCHAR(1),
    CODMOT         NUMERIC(6, 0),
    VERCAL         NUMERIC(4, 0),
    INTIMP         VARCHAR(1),
    NUMLOT         NUMERIC(9, 0),
    FORISS         NUMERIC(9, 0),
    INDSIG         VARCHAR(1),
    USUGER         NUMERIC(10, 0),
    DATGER         DATE,
    HORGER         NUMERIC(5, 0),
    PERFRE         NUMERIC(5, 2),
    PERSEG         NUMERIC(5, 2),
    PEREMB         NUMERIC(5, 2),
    PERENC         NUMERIC(5, 2),
    PEROUT         NUMERIC(5, 2),
    SEQORM         NUMERIC(5, 0),
    VLRBPI         NUMERIC(15, 2),
    VLRPIS         NUMERIC(15, 2),
    EXPWMS         NUMERIC(1, 0),
    INDSIN         VARCHAR(1),
    PRCNFC         NUMERIC(1, 0),
    VLRBCR         NUMERIC(15, 2),
    VLRCOR         NUMERIC(15, 2),
    VLRBCL         NUMERIC(15, 2),
    VLRCSL         NUMERIC(15, 2),
    VLRBPT         NUMERIC(15, 2),
    VLRPIT         NUMERIC(15, 2),
    VLRBCT         NUMERIC(15, 2),
    VLRCRT         NUMERIC(15, 2),
    VLRBOR         NUMERIC(15, 2),
    VLROUR         NUMERIC(15, 2),
    VLRBII         NUMERIC(15, 2),
    VLRIIM         NUMERIC(15, 2),
    NUMDOI         VARCHAR(20),
    DATDOI         DATE,
    INTPAT         VARCHAR(1),
    VLROCL         NUMERIC(15, 2),
    VLROPT         NUMERIC(15, 2),
    VLROCT         NUMERIC(15, 2),
    VLROOR         NUMERIC(15, 2),
    VLRRIS         NUMERIC(15, 2),
    CODSEL         VARCHAR(3),
    CODSSL         VARCHAR(2),
    PERDS3         NUMERIC(5, 2),
    PERDS4         NUMERIC(5, 2),
    PERDS5         NUMERIC(5, 2),
    VLRDS3         NUMERIC(15, 2),
    VLRDS4         NUMERIC(15, 2),
    VLRDS5         NUMERIC(15, 2),
    BECIPI         NUMERIC(15, 2),
    VECIPI         NUMERIC(15, 2),
    BECICM         NUMERIC(15, 2),
    VECICM         NUMERIC(15, 2),
    VLRBIE         NUMERIC(15, 2),
    VLRIEM         NUMERIC(15, 2),
    VLRFEI         NUMERIC(15, 2),
    VLRSEI         NUMERIC(15, 2),
    VLROUI         NUMERIC(15, 2),
    BCOIMP         NUMERIC(15, 2),
    COFIMP         NUMERIC(15, 2),
    BPIIMP         NUMERIC(15, 2),
    PISIMP         NUMERIC(15, 2),
    NUMCNT         NUMERIC(9, 0),
    IDENFC         VARCHAR(30),
    NUMCTR         NUMERIC(6, 0),
    ROTNAP         NUMERIC(2, 0),
    FILAPR         NUMERIC(5, 0),
    NUMAPR         NUMERIC(10, 0),
    SITAPR         VARCHAR(3),
    PERICF         NUMERIC(5, 2),
    ICMFRE         NUMERIC(15, 2),
    CLIRCB         NUMERIC(9, 0),
    VLRBPF         NUMERIC(15, 2),
    VLRPIF         NUMERIC(15, 2),
    VLRBCF         NUMERIC(15, 2),
    VLRCFF         NUMERIC(15, 2),
    ROTANX         NUMERIC(2, 0),
    NUMANX         NUMERIC(10, 0),
    PLAVEI         VARCHAR(10),
    CODVIA         VARCHAR(3),
    CHVNEL         VARCHAR(50),
    SOMFRE         VARCHAR(1),
    UFSVEI         VARCHAR(2),
    NUMINT         VARCHAR(20),
    FILFIX         NUMERIC(5, 0),
    NUMFIX         NUMERIC(9, 0),
    FILOCP         NUMERIC(5, 0),
    NUMOCP         NUMERIC(8, 0),
    CODEQU         NUMERIC(3, 0),
    NUMCFI         NUMERIC(9, 0),
    TIPNDI         VARCHAR(1),
    LOCDES         VARCHAR(60),
    DATDES         DATE,
    UFSDES         VARCHAR(2),
    CODEXP         NUMERIC(9, 0),
    NUMDFS         NUMERIC(15, 0),
    QTDBPI         NUMERIC(15, 3),
    QTDBCO         NUMERIC(15, 3),
    QTDBIP         NUMERIC(15, 3),
    QTDBPF         NUMERIC(15, 3),
    QTDBCF         NUMERIC(15, 3),
    BASOIR         NUMERIC(15, 2),
    VLROIR         NUMERIC(15, 2),
    VLRSUB         NUMERIC(15, 2),
    TOTCIT         NUMERIC(15, 2),
    VLRIMP         NUMERIC(15, 2),
    USUFEC         NUMERIC(10, 0),
    DATFEC         DATE,
    HORFEC         NUMERIC(5, 0),
    DATINV         DATE,
    FILCES         NUMERIC(5, 0),
    DATCES         DATE,
    SEQCES         NUMERIC(6, 0),
    TIPDEV         NUMERIC(1, 0),
    CODSAF         VARCHAR(10),
    VLRBSN         NUMERIC(15, 2),
    VLRSEN         NUMERIC(15, 2),
    VLRIBS         NUMERIC(15, 2),
    VLRISN         NUMERIC(15, 2),
    VLRAFM         NUMERIC(15, 2),
    TIPITD         NUMERIC(1, 0),
    CGCADQ         NUMERIC(14, 0),
    UFSADQ         VARCHAR(2),
    CODVII         NUMERIC(2, 0),
    VLRINT         NUMERIC(15, 2),
    TIPCTE         NUMERIC(1, 0),
    TIPSER         NUMERIC(1, 0),
    BASIDF         NUMERIC(15, 2),
    VLRIDF         NUMERIC(15, 2),
    REATCP         DATE,
    DISNFC         NUMERIC(1, 0),
    VLRICD         NUMERIC(15, 2),
    CODRAI         NUMERIC(7, 0),
    SOMOCL         NUMERIC(15, 2),
    SOMOPT         NUMERIC(15, 2),
    SOMOCT         NUMERIC(15, 2),
    SOMOOR         NUMERIC(15, 2),
    VALNFC         VARCHAR(1),
    ORIINV         VARCHAR(1),
    QTBCIM         NUMERIC(15, 3),
    QTBPIM         NUMERIC(15, 3),
    BASAPE         NUMERIC(15, 2),
    VLRAPE         NUMERIC(15, 2),
	CONSTRAINT PK_TMPINTE440NFC
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODFIL, CODFOR, NUMNFC, CODSNF)
)
;

CREATE TABLE TMPINTE440PAR
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9, 0) NOT NULL,
    CODEMP         NUMERIC(4, 0) NOT NULL,
    CODFIL         NUMERIC(5, 0) NOT NULL,
    CODFOR         NUMERIC(9, 0) NOT NULL,
    NUMNFC         NUMERIC(9, 0) NOT NULL,
    CODSNF         VARCHAR(3)  NOT NULL,
    CODPAR         NUMERIC(3, 0) NOT NULL,
    CODCRP         VARCHAR(3),
    NUMTIT         VARCHAR(15),
    CODTPT         VARCHAR(3),
    CODFCR         VARCHAR(3),
    DATFCR         DATE,
    VCTPAR         DATE,
    VLRPAR         NUMERIC(15, 2),
    PERDDP         NUMERIC(5, 2),
    QTDDDD         NUMERIC(3, 0),
    CODPOR         VARCHAR(4),
    CODCRT         VARCHAR(2),
    CODNTG         NUMERIC(4, 0),
    OBSPAR         VARCHAR(250),
    USUGER         NUMERIC(10, 0),
    DATGER         DATE,
    HORGER         NUMERIC(5, 0),
    VLRDSC         NUMERIC(15, 2),
    JRSNEG         NUMERIC(15, 2),
    MULNEG         NUMERIC(15, 2),
    OUTNEG         NUMERIC(15, 2),
    DATNEG         DATE,
    CODBAN         VARCHAR(3),
    CODAGE         VARCHAR(7),
    CCBFOR         VARCHAR(14),
    CODFAV         NUMERIC(14, 0),
    CODFPG         NUMERIC(2, 0),
    NUMCPR         VARCHAR(20),
    CODREP         NUMERIC(9, 0),
    NUMCOO         NUMERIC(9, 0),
    CROECF         NUMERIC(6, 0),
    CODEQU         NUMERIC(3, 0),
    VLRINT         NUMERIC(15, 2),
    TIPTCC         NUMERIC(2, 0),
	CONSTRAINT PK_TMPINTE440PAR
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODFIL, CODFOR, NUMNFC, CODSNF, CODPAR)
)
;

CREATE TABLE TMPINTE440IPC
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9, 0) NOT NULL,
    SEQINT         NUMERIC(8, 0),
    CODEMP         NUMERIC(4, 0) NOT NULL,
    CODFIL         NUMERIC(5, 0) NOT NULL,
    CODFOR         NUMERIC(9, 0) NOT NULL,
    NUMNFC         NUMERIC(9, 0) NOT NULL,
    CODSNF         VARCHAR(3)  NOT NULL,
    SEQIPC         NUMERIC(3, 0) NOT NULL,
    TNSPRO         VARCHAR(5),
    NOPPRO         VARCHAR(5),
    FILOCP         NUMERIC(5, 0),
    NUMOCP         NUMERIC(8, 0),
    SEQIPO         NUMERIC(4, 0),
    CODPRO         VARCHAR(14),
    CODDER         VARCHAR(7),
    CPLIPC         VARCHAR(250),
    CODFAM         VARCHAR(6),
    CODCLF         VARCHAR(3),
    CODSTR         VARCHAR(3),
    CODTIC         VARCHAR(3),
    CODTRD         VARCHAR(3),
    CODTST         VARCHAR(3),
    CODSTP         VARCHAR(3),
    CODSTC         VARCHAR(3),
    LAUTEC         VARCHAR(250),
    USULAU         NUMERIC(10, 0),
    DATLAU         DATE,
    HORLAU         NUMERIC(5, 0),
    CODDEP         VARCHAR(10),
    CODLOT         VARCHAR(50),
    QTDREC         NUMERIC(14, 5),
    UNINFC         VARCHAR(3),
    QTDAJB         NUMERIC(14, 5),
    QTDDEV         NUMERIC(14, 5),
    UNIMED         VARCHAR(3),
    QTDEST         NUMERIC(14, 5),
    VLRFUM         NUMERIC(15, 2),
    QTDFRE         NUMERIC(14, 5),
    FORFRE         NUMERIC(9, 0),
    PESBRU         NUMERIC(14, 5),
    PESLIQ         NUMERIC(14, 5),
    CODTPR         VARCHAR(4),
    PREUNI         NUMERIC(21, 10),
    PREEST         NUMERIC(21, 10),
    PREBAS         NUMERIC(21, 10),
    PERDSC         NUMERIC(5, 2),
    PERDS3         NUMERIC(5, 2),
    PERDS4         NUMERIC(5, 2),
    PERDS5         NUMERIC(5, 2),
    PERIPI         NUMERIC(8, 4),
    PERICM         NUMERIC(7, 4),
    PERFUN         NUMERIC(4, 2),
    SALCAN         VARCHAR(1),
    NUMPRJ         NUMERIC(8, 0),
    CODFPJ         NUMERIC(4, 0),
    CTAFIN         NUMERIC(7, 0),
    CTARED         NUMERIC(7, 0),
    CODCCU         VARCHAR(9),
    VLRFRE         NUMERIC(15, 2),
    VLRSEG         NUMERIC(15, 2),
    VLREMB         NUMERIC(15, 2),
    VLRENC         NUMERIC(15, 2),
    VLROUT         NUMERIC(15, 2),
    VLRDAR         NUMERIC(15, 2),
    VLRFRD         NUMERIC(15, 2),
    VLROUD         NUMERIC(15, 2),
    VLRBRU         NUMERIC(15, 2),
    VLRDSC         NUMERIC(15, 2),
    VLRDS1         NUMERIC(15, 2),
    VLRDS2         NUMERIC(15, 2),
    VLRDS3         NUMERIC(15, 2),
    VLRDS4         NUMERIC(15, 2),
    VLRDS5         NUMERIC(15, 2),
    VLRDZF         NUMERIC(15, 2),
    VLRBFU         NUMERIC(15, 2),
    VLRFUN         NUMERIC(15, 2),
    VLRBIP         NUMERIC(15, 2),
    VLRIPI         NUMERIC(15, 2),
    VLRBID         NUMERIC(15, 2),
    VLRIPD         NUMERIC(15, 2),
    VLRBIC         NUMERIC(15, 2),
    VLRICM         NUMERIC(15, 2),
    VLRDFA         NUMERIC(15, 2),
    VLRBSI         NUMERIC(15, 2),
    VLRICS         NUMERIC(15, 2),
    VLRBSD         NUMERIC(15, 2),
    VLRISD         NUMERIC(15, 2),
    VLRBSP         NUMERIC(15, 2),
    VLRSTP         NUMERIC(15, 2),
    VLRBSC         NUMERIC(15, 2),
    VLRSTC         NUMERIC(15, 2),
    VLRIIP         NUMERIC(15, 2),
    VLRIIC         NUMERIC(15, 2),
    VLROIP         NUMERIC(15, 2),
    VLROIC         NUMERIC(15, 2),
    VLRLPR         NUMERIC(15, 2),
    VLRLOU         NUMERIC(15, 2),
    VLRLIQ         NUMERIC(15, 2),
    VLRFIN         NUMERIC(15, 2),
    ACRFIN         NUMERIC(15, 2),
    FILNFV         NUMERIC(5, 0),
    SNFNFV         VARCHAR(3),
    NUMNFV         NUMERIC(9, 0),
    SEQIPV         NUMERIC(3, 0),
    CODFAB         VARCHAR(10),
    USUGER         NUMERIC(10, 0),
    DATGER         DATE,
    HORGER         NUMERIC(5, 0),
    NUMEPI         NUMERIC(9, 0),
    DATVLT         DATE,
    VLRBPI         NUMERIC(15, 2),
    VLRPIS         NUMERIC(15, 2),
    FILCTR         NUMERIC(5, 0),
    NUMCTR         NUMERIC(6, 0),
    DATCPT         VARCHAR(7),
    SEQCCP         NUMERIC(3, 0),
    INTPAT         VARCHAR(1),
    NOTFOR         NUMERIC(5, 2),
    NOTPRO         NUMERIC(5, 2),
    PROFAB         VARCHAR(21),
    SEQISC         NUMERIC(3, 0),
    VLRBCR         NUMERIC(15, 2),
    VLRCOR         NUMERIC(15, 2),
    PERIIM         NUMERIC(5, 2),
    VLRBII         NUMERIC(15, 2),
    VLRIIM         NUMERIC(15, 2),
    VLRRIS         NUMERIC(15, 2),
    CODBEM         VARCHAR(20),
    PERPIT         NUMERIC(7, 4),
    VLRBPT         NUMERIC(15, 2),
    VLRPIT         NUMERIC(15, 2),
    PERCRT         NUMERIC(7, 4),
    VLRBCT         NUMERIC(15, 2),
    VLRCRT         NUMERIC(15, 2),
    PERCSL         NUMERIC(4, 2),
    VLRBCL         NUMERIC(15, 2),
    VLRCSL         NUMERIC(15, 2),
    PEROUR         NUMERIC(4, 2),
    VLRBOR         NUMERIC(15, 2),
    VLROUR         NUMERIC(15, 2),
    PERIRF         NUMERIC(4, 2),
    VLRBIR         NUMERIC(15, 2),
    VLRIRF         NUMERIC(15, 2),
    EMPNFV         NUMERIC(4, 0),
    PERDS1         NUMERIC(5, 2),
    PERDS2         NUMERIC(5, 2),
    BECIPI         NUMERIC(15, 2),
    VECIPI         NUMERIC(15, 2),
    BECICM         NUMERIC(15, 2),
    VECICM         NUMERIC(15, 2),
    PROFOR         VARCHAR(30),
    VLRFEI         NUMERIC(15, 2),
    VLRSEI         NUMERIC(15, 2),
    VLROUI         NUMERIC(15, 2),
    BCOIMP         NUMERIC(15, 2),
    COFIMP         NUMERIC(15, 2),
    BPIIMP         NUMERIC(15, 2),
    PISIMP         NUMERIC(15, 2),
    FILPED         NUMERIC(5, 0),
    NUMPED         NUMERIC(8, 0),
    SEQIPD         NUMERIC(4, 0),
    VLRDM1         NUMERIC(14, 5),
    VLRDM2         NUMERIC(14, 5),
    VLRDM3         NUMERIC(14, 5),
    VLRDM4         NUMERIC(14, 5),
    VLRDM5         NUMERIC(14, 5),
    VLRDM6         NUMERIC(14, 5),
    BEMPRI         VARCHAR(20),
    VLRBPF         NUMERIC(15, 2),
    PERPIF         NUMERIC(8, 4),
    VLRPIF         NUMERIC(15, 2),
    VLRBCF         NUMERIC(15, 2),
    PERCFF         NUMERIC(8, 4),
    VLRCFF         NUMERIC(15, 2),
    CSTIPI         VARCHAR(2),
    CSTPIS         VARCHAR(2),
    CSTCOF         VARCHAR(2),
    CODDFS         NUMERIC(6, 0),
    VLRAJS         NUMERIC(15, 2),
    SEQEVE         NUMERIC(3, 0),
    NUMADI         NUMERIC(3, 0),
    SEQADI         NUMERIC(5, 0),
    DSCADI         NUMERIC(15, 2),
    FABEST         VARCHAR(10),
    QTDBPI         NUMERIC(15, 3),
    ALIPIS         NUMERIC(15, 4),
    QTDBCO         NUMERIC(15, 3),
    ALICOF         NUMERIC(15, 4),
    QTDBIP         NUMERIC(15, 3),
    ALIIPI         NUMERIC(15, 4),
    QTDBPF         NUMERIC(15, 3),
    ALIPIF         NUMERIC(15, 4),
    QTDBCF         NUMERIC(15, 3),
    ALICFF         NUMERIC(15, 4),
    VLRSUB         NUMERIC(15, 2),
    INDVIP         VARCHAR(1),
    ORIMER         VARCHAR(1),
    PERCIT         NUMERIC(5, 2),
    VLRCIT         NUMERIC(15, 2),
    BASCRE         NUMERIC(2, 0),
    PECICM         NUMERIC(7, 4),
    PECIPI         NUMERIC(8, 4),
    TIPCUR         NUMERIC(1, 0),
    PERPIR         NUMERIC(8, 4),
    PERCOR         NUMERIC(8, 4),
    PERPIM         NUMERIC(8, 4),
    PERCIM         NUMERIC(8, 4),
    EMPCTO         NUMERIC(4, 0),
    CODPCO         NUMERIC(4, 0),
    FILCTO         NUMERIC(5, 0),
    CPTPCO         DATE,
    VLRIMP         NUMERIC(15, 2),
    COEFCI         NUMERIC(5, 2),
    CODFCI         VARCHAR(36),
    PERICI         NUMERIC(5, 2),
    PERSEN         NUMERIC(4, 2),
    VLRBSN         NUMERIC(15, 2),
    VLRSEN         NUMERIC(15, 2),
    CODBIC         VARCHAR(3),
    VLRIBS         NUMERIC(15, 2),
    VLRISN         NUMERIC(15, 2),
    PERISN         NUMERIC(7, 4),
    NUMDRB         VARCHAR(20),
    NUMLAN         NUMERIC(9, 0),
    VLRAFM         NUMERIC(15, 2),
    PERDIF         NUMERIC(7, 4),
    BASIDF         NUMERIC(15, 2),
    PERIDF         NUMERIC(5, 2),
    VLRIDF         NUMERIC(15, 2),
    MOTDES         NUMERIC(2, 0),
    VLRICD         NUMERIC(15, 2),
    ABTDES         VARCHAR(1),
    CODENQ         NUMERIC(3, 0),
    ICMAOR         NUMERIC(5, 2),
    ICMVOR         NUMERIC(15, 2),
    ICMADE         NUMERIC(5, 2),
    ICMVDE         NUMERIC(15, 2),
    ICMBDE         NUMERIC(15, 2),
    ICMAFC         NUMERIC(7, 4),
    ICMVFC         NUMERIC(15, 2),
    CODCES         VARCHAR(7),
    ACOIMP         NUMERIC(15, 4),
    APIIMP         NUMERIC(15, 4),
    QTBCIM         NUMERIC(15, 3),
    QTBPIM         NUMERIC(15, 3),
	CONSTRAINT PK_TMPINTE440IPC
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODFIL, CODFOR, NUMNFC, CODSNF, SEQIPC)
)
;

CREATE TABLE TMPINTE130DME
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9, 0) NOT NULL,
    SEQINT         NUMERIC(8, 0),
    CODPME         NUMERIC(4, 0) NOT NULL,
    CPTPME         VARCHAR(7)  NOT NULL,
    PROSER         VARCHAR(1)  NOT NULL,
    SEQDME         NUMERIC(4, 0) NOT NULL,
    DESDME         VARCHAR(100),
    MGCGER         NUMERIC(14, 5),
    PERFRE         NUMERIC(14, 5),
    OBSDME         VARCHAR(250),
    SITDME         CHAR(1)      NOT NULL,
    TIPAPU         NUMERIC(1, 0) NOT NULL,
    SITPME         CHAR(1)      NOT NULL,
    DATCNS         DATE,
	CONSTRAINT PK_TMPINTE130DME
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODPME, CPTPME, PROSER, SEQDME)
)
;

CREATE TABLE TMPINTE130HFI
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9, 0) NOT NULL,
    CODPME         NUMERIC(4, 0) NOT NULL,
    CPTPME         VARCHAR(7)  NOT NULL,
    PROSER         VARCHAR(1)  NOT NULL,
    SEQDME         NUMERIC(4, 0) NOT NULL,
    CODFIL         NUMERIC(5, 0) NOT NULL,
    CODAGP         VARCHAR(5)  NOT NULL,
    VARSER         CHAR(1) 		NOT NULL,
    PERHFI         NUMERIC(14, 5),
    VLRHFI         NUMERIC(15, 5),
    PERREA         NUMERIC(14, 5),
    VLRREA         NUMERIC(15, 5),
    MGCHFI         NUMERIC(14, 5),
    FORAPU         NUMERIC(1, 0),
    PERQTD         NUMERIC(14, 5),
	CONSTRAINT PK_TMPINTE130HFI
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODPME, CPTPME, PROSER, SEQDME, CODFIL, CODAGP, VARSER)
)
;

CREATE TABLE TMPINTE031MOE
(
    CDMATRIZ       VARCHAR(20) NOT NULL,
    CDFILIAL       VARCHAR(20) NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL,
    NUSEQUENCIA    NUMERIC(9, 0) NOT NULL,
    CODMOE         VARCHAR(3)  NOT NULL,
    DESMOE         VARCHAR(30),
    SIGMOE         VARCHAR(5),
    SITUACAO       CHAR(1),
	CONSTRAINT PK_TMPINTE031MOE
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODMOE)
)
;

CREATE TABLE TMPINTE044CCU
(
    CDMATRIZ       VARCHAR(20) NOT NULL ,
    CDFILIAL       VARCHAR(20) NOT NULL ,
    DTHRIMPORTACAO TIMESTAMP(6) NOT NULL ,
    NUSEQUENCIA    NUMERIC(9, 0) NOT NULL ,
    SEQINT         NUMERIC(8, 0),
    CODEMP         NUMERIC(4, 0) NOT NULL ,
    CODCCU         NUMERIC(9, 0) NOT NULL ,
    DESCCU         VARCHAR(80),
    ABRCCU         VARCHAR(20),
    TIPCCU         NUMERIC(1, 0),
    CCUPAI         VARCHAR(9),
    ANASIN         CHAR(1),
    ACERAT         CHAR(1),
    GRUCCU         NUMERIC(1, 0),
    CRIRAT         NUMERIC(1, 0),
    MSKCCU         VARCHAR(40),
    NIVCCU         NUMERIC(2, 0),
	CONSTRAINT PK_TMPINTE044CCU
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODCCU)
)
;

CREATE TABLE TMPINTE075CPR
(
    CDMATRIZ       VARCHAR(20)  NOT NULL,
    CDFILIAL       VARCHAR(20)  NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6)  NOT NULL,
    NUSEQUENCIA    NUMERIC(9, 0)  NOT NULL,
    CODEMP         NUMERIC(4, 0)  NOT NULL,
    CODPRO         VARCHAR(14)  NOT NULL,
    CODCTE         VARCHAR(3)   NOT NULL,
    SEQCCP         NUMERIC(9, 0)  NOT NULL,
    DESCTE         VARCHAR(30)  NULL,
    DESCCP         VARCHAR(250) NULL,
    DESLIV         VARCHAR(250) NULL,
    OBSLIV         VARCHAR(240) NULL,
	CONSTRAINT PK_TMPINTE075CPR
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODEMP, CODPRO, CODCTE, SEQCCP)
)
;

CREATE TABLE TMPINTE420OCP
(
	CDMATRIZ NUMERIC(8),
	CDFILIAL NUMERIC(8),
	CODEMP NUMERIC(8),
	CODFIL NUMERIC(8),
	DTHRIMPORTACAO TIMESTAMP(6),
	NUSEQUENCIA NUMERIC(9),
	NUMOCP NUMERIC(8),
	QTDABE NUMERIC(14,5),
	DATENT DATE,
	SITIPO NUMERIC(8),
	CODPRO VARCHAR(20),
	CODDER VARCHAR(20),
	CODDEP VARCHAR(20),
	SEQIPO NUMERIC(4),
	CONSTRAINT PK_TMPINTE420OCP
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, NUMOCP, CODPRO, CODDER, CODDEP, SEQIPO)
)
;

CREATE TABLE TMPINTE095FOR
(
    CDMATRIZ       VARCHAR(20)  NOT NULL,
    CDFILIAL       VARCHAR(20)  NOT NULL,
    DTHRIMPORTACAO TIMESTAMP(6)  NOT NULL,
    NUSEQUENCIA    NUMERIC(9, 0)  NOT NULL,
    CODFOR NUMERIC(9,0) NOT NULL,
    NOMFOR VARCHAR(100),
    TIPFOR CHAR(1),
    CLIFOR CHAR(1),
	CONSTRAINT PK_TMPINTE095FOR
        PRIMARY KEY (CDMATRIZ, CDFILIAL, DTHRIMPORTACAO, NUSEQUENCIA, CODFOR)
)
;

-- Inserções iniciais nas tabelas de configuração de integração
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E085CLI', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_clientes', 'Exportar_7', 'cliente', '10', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E085HCL', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_clientes', 'Exportar_7', 'historico', '10', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E085CTO', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_clientes', 'Exportar_7', 'contatos', '10', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E085ENT', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_clientes', 'Exportar_7', 'enderecos', '10', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E075PRO', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_produtos', 'Exportar_11', 'produto', '5', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E075DER', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_produtos', 'Exportar_11', 'derivacao', '5', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E075UGF', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_produtos', 'Exportar_11', 'gruposFiscaisProduto', '5', 'derivacao', 'codEmp,codPro,codDer', 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E075FOT', 'Senior', 'sapiens_Synccom_senior_g5_co_int_geral_fotosprodutos', 'Exportar', 'foto', '116', 'produto', 'codPro,codDer', 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E090REP', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_representante', 'Exportar_2', 'representante', '11', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E090HRP', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_representante', 'Exportar_2', 'historico', '11', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E081TAB', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_tabelapreco', 'Exportar_2', 'TabelaPreco', '9', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E081ITP', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_tabelapreco', 'Exportar_2', 'Produto', '9', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E081TPR', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_tabelapreco', 'Exportar_2', 'Validade', '9', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E001TNS', 'Senior', 'sapiens_Synccom_senior_g5_co_int_geral_cfop', 'Exportar_2', 'cFOP', '91', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E070FIL', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_filial', 'Exportar_2', 'filial', '1', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E070EMP', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_empresafilial', 'Exportar_18', 'empresaFilial', '1', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E007UFS', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_estados', 'Exportar', 'estado', '94', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E008CEP', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_cep', 'Exportar_3', 'cep', '90', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E006PAI', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_pais', 'Exportar', 'pais', '93', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E301TCR', 'Senior', 'sapiens_Synccom_senior_g5_co_prj_contasreceber', 'Exportar', 'ContaReceber', '85', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E066FPG', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_formapagamento', 'Exportar_2', 'FormaPagamento', '3', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E028CPG', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_condicaopagamento', 'Exportar_2', 'CondicaoPagamento', '4', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E028ICP', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_condicaopagamento', 'Exportar_2', 'Parcela', '4', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E205DEP', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_deposito', 'Exportar', 'Deposito', '14', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E210EST', 'Senior', 'sapiens_Synccom_senior_g5_co_mcm_est_saldoestoque', 'Exportar_3', 'SaldoEstoque', '167', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E012FAM', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_familias', 'Exportar_3', 'familia', '88', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E076MAR', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_marca', 'Exportar', 'marca', '109', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E083ORI', 'Senior', 'sapiens_Synccom_senior_g5_co_ger_cad_produto_origemProduto', 'Exportar_2', 'OrigensProduto', '157', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E120PED', 'Senior', 'sapiens_Synccom_senior_g5_co_ven_pedido', 'Exportar', 'Pedido', '18', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E120IPD', 'Senior', 'sapiens_Synccom_senior_g5_co_ven_pedido', 'Exportar', 'Produto', '18', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E140NFV', 'Senior', 'sapiens_Synccom_senior_g5_co_ven_notafiscalsaida', 'Exportar_3', 'NotaFiscal', '98', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E140IPV', 'Senior', 'sapiens_Synccom_senior_g5_co_ven_notafiscalsaida', 'Exportar_3', 'Produto', '98', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E140PAR', 'Senior', 'sapiens_Synccom_senior_g5_co_ven_notafiscalsaida', 'Exportar_3', 'Parcela', '98', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E039POR', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_portador', 'Exportar_2', 'portador', '77', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E073TRA', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_transportadoras', 'Exportar_2', 'gridTransportadoras', '53', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E095FOR', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_fornecedores', 'Exportar_7', 'gridFornecedores', '52', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E022CLF', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_ClassificacaoFiscal', 'Exportar_2', 'classificacaoFiscal', '92', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E000GPF', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_grupofiscalproduto', 'Exportar_5', 'GrupoFiscal', '15', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E210DLS', 'Senior', 'sapiens_Synccom_senior_g5_co_mcm_est_saldoestoqueloteserie', 'Exportar', 'saldoEstoqueLote', '196', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E440NFC', 'Senior', 'sapiens_Synccom_senior_g5_co_mcm_cpr_notafiscalentrada', 'Exportar_4', 'NotaFiscalEntrada', '99', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E440IPC', 'Senior', 'sapiens_Synccom_senior_g5_co_mcm_cpr_notafiscalentrada', 'Exportar_4', 'Produto', '99', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E440PAR', 'Senior', 'sapiens_Synccom_senior_g5_co_mcm_cpr_notafiscalentrada', 'Exportar_4', 'Parcela', '99', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E130DME', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_definicaometa', 'Exportar', 'periodo', '55', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E130HFI', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_definicaometa', 'Exportar', 'filial', '55', 'periodo', 'codPme,cptPme,proSer,seqDme', 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E130REP', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_definicaometa', 'Exportar', 'vendedores', '55', 'periodo', 'codPme,cptPme,proSer,seqDme', 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E013AGP', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_agrupamentos', 'Exportar', 'Agrupamento', '89', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E025FER', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_feriado', 'Exportar', 'feriado', '68', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E073MOT', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_motoristas', 'Exportar', 'motorista', '61', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E026RAM', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_ramoatividade', 'Exportar', 'RamoAtividade', '173', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E021MOT', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_motivo', 'Exportar_2', 'Motivo', '96', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E031MOE', 'Senior', 'sapiens_Synccom_senior_g5_co_int_geral_moedas', 'Exportar', 'moeda', '117', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E044CCU', 'Senior', 'sapiens_Synccom_senior_g5_co_ger_cad_centrocusto', 'Exportar_2', 'CentrosCusto', '158', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E015MED', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_unidadedemedida', 'Exportar', 'unidadeDeMedida', '2', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E015TCU', 'Senior', 'sapiens_Synccom_senior_g5_co_cad_unidadedemedida', 'Exportar', 'Conversao', '2', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E075CPR', 'Senior', 'sapiens_Synccom_senior_g5_co_int_padrao_produtocaracteristica', 'ConsultarGeral', 'caracteristicaProduto', '5', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, NMSERVICOSENIOR, DSPORTASERVICOSENIOR, NMTAGPRINCIPALSENIOR, CDINTEGRACAOSENIOR, NMTAGPAI, DSCAMPOSCHAVETAGPAI, DSTIPOINTEGRACAOSENIOR, FLATIVO) VALUES ('E002TPT', 'Senior', 'sapiens_Synccom_senior_g5_co_int_varejo_tipotitulo', 'Exportar', 'tipoTitulo', '78', NULL, NULL, 'T', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, FLATIVO) VALUES ('ITEMPEDIDO', 'Soap', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, FLATIVO) VALUES ('NOVOCLIENTE', 'Soap', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, FLATIVO) VALUES ('NOVOCLIENDERECO', 'Soap', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, FLATIVO) VALUES ('CLIENTEATUA', 'Soap', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, FLATIVO) VALUES ('CLIENTEENDATUA', 'Soap', 'S');
INSERT INTO TBWMWCONFIGENTIDADEINTEG(NMENTIDADE, DSTIPOINTEGRACAO, FLATIVO) VALUES ('CONTATO', 'Soap', 'S');

UPDATE TBWMWCONFIGENTIDADEINTEG SET DSTIPOINTEGRACAO='Soap' WHERE NMENTIDADE='PEDIDO';
UPDATE TBWMWCONFIGENTIDADEINTEG SET FLATIVO='N' WHERE NMENTIDADE='PEDIDOERP';

CREATE OR REPLACE FUNCTION PRTMPINTLIMPEZASENIOR(
    entidades VARCHAR
) RETURNS TEXT
LANGUAGE plpgsql
AS $$
DECLARE
    v_errosinicial         VARCHAR(70)   := 'FATAL - PROBLEMA AO REALIZAR LIMPEZA DE TABELAS TEMPORÁRIAS: ' || CHR(13);
    v_erro                 VARCHAR(4000) := '';
    v_count_erro           INTEGER       := 0;
    v_avisoinicial         VARCHAR(60)   := 'AVISO - NENHUM REGISTRO AFETADO NAS TABELAS: ' || CHR(13);
    v_aviso                VARCHAR(4000) := '';
    v_count_aviso          INTEGER       := 0;
    v_sucesso              VARCHAR(4000) := 'LIMPEZA EFETUADA NAS TABELAS: ' || CHR(13);
    v_count_sucesso        INTEGER       := 0;
    v_dinamica             INTEGER       := 0;
    v_comandosql           TEXT;

    rec RECORD;
    v_retorno TEXT := '';
BEGIN
    FOR rec IN
        SELECT
            cdentidade,
            dsentidade,
            dschaveprimariawmw,
            dsordenacao
        FROM tblvwauxconfigentidade
        WHERE flativo = 'S'
    LOOP
        BEGIN
            v_comandosql := 'DELETE FROM ' || rec.dsentidade || ' WHERE ctid IN (
                SELECT ctid FROM (
                    SELECT
                        ctid,
                        dthrimportacao,
                        ROW_NUMBER() OVER (PARTITION BY ' || rec.dschaveprimariawmw || ' ORDER BY dthrimportacao DESC, nusequencia DESC) AS rn
                    FROM ' || rec.dsentidade || '
                ) sub
                WHERE rn <> 1
            )';

            EXECUTE v_comandosql;

            IF FOUND THEN
                GET DIAGNOSTICS v_dinamica = ROW_COUNT;
                v_sucesso := v_sucesso || rec.dsentidade || ': ' || v_dinamica || ' registros afetados.' || CHR(13);
                v_count_sucesso := v_count_sucesso + 1;
            ELSE
                v_aviso := v_aviso || rec.dsentidade || ';' || CHR(13);
                v_count_aviso := v_count_aviso + 1;
            END IF;

        EXCEPTION
            WHEN OTHERS THEN
                v_erro := v_erro || rec.dsentidade || ': ' || SQLERRM || CHR(13);
                v_count_erro := v_count_erro + 1;
        END;
    END LOOP;

    IF v_count_erro > 0 THEN
        v_retorno := v_errosinicial || v_erro;
        IF v_count_aviso > 0 THEN
            v_retorno := v_retorno || v_avisoinicial || v_aviso;
        END IF;
        IF v_count_sucesso > 0 THEN
            v_retorno := v_retorno || v_sucesso;
        END IF;
    ELSIF v_count_aviso > 0 THEN
        v_retorno := 'OK - ' || v_avisoinicial || v_aviso;
        IF v_count_sucesso > 0 THEN
            v_retorno := v_retorno || v_sucesso;
        END IF;
    ELSE
        v_retorno := 'OK - ' || v_sucesso;
    END IF;

    RETURN v_retorno;
END;
$$;

CREATE TABLE TBLVWAUXCONFIGENTIDADE
(
	CDENTIDADE VARCHAR(30) NOT NULL,
	DSENTIDADE VARCHAR(40) NOT NULL,
	DSCHAVEPRIMARIAWMW VARCHAR(100) NOT NULL,
	DSCHAVEPRIMARIAERP VARCHAR(100) NOT NULL,
	DSORDENACAO VARCHAR(100) NOT NULL,
	FLATIVO CHAR NOT NULL,
	CONSTRAINT PK_TBLVWAUXCONFIGENTIDADE PRIMARY KEY (CDENTIDADE)
);

INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E075FOT', 'TMPINTE075FOT', 'CDMATRIZ, CDFILIAL, CODPRO, CODDER, SEQLPF', 'CDMATRIZ, CODPRO, CODDER, SEQLPF', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E090RCP', 'TMPINTE090RCP', 'CDMATRIZ, CDFILIAL, CODREP, CODCPG', 'CODREP, CODCPG', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E090RTP', 'TMPINTE090RTP', 'CDMATRIZ, CDFILIAL, CODREP, CODTPR', 'CODREP, CODTPR', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E120PED', 'TMPINTE120PED', 'CDMATRIZ, CDFILIAL, CODEMP, CODFIL, NUMPED', 'CODEMP, CODFIL, NUMPED', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E120IPD', 'TMPINTE120IPD', 'CDMATRIZ, CDFILIAL, CODEMP, CODFIL, NUMPED, SEQIPD', 'CODEMP, CODFIL, NUMPED, SEQIPD', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E210EST', 'TMPINTE210EST', 'CDMATRIZ, CDFILIAL, CODEMP, CODPRO, CODDER, CODDEP', 'CODEMP, CODPRO, CODDER, CODDEP', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E000GPF', 'TMPINTE000GPF', 'CDMATRIZ, CDFILIAL, IDENGF', 'IDENGF', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E001TNS', 'TMPINTE001TNS', 'CDMATRIZ, CDFILIAL, CODEMP, CODTNS', 'CODEMP, CODTNS', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E007UFS', 'TMPINTE007UFS', 'CDMATRIZ, CDFILIAL, SIGUFS', 'SIGUFS', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E008RAI', 'TMPINTE008RAI', 'CDMATRIZ, CDFILIAL, CODRAI', 'CODRAI', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E012FAM', 'TMPINTE012FAM', 'CDMATRIZ, CDFILIAL, CODEMP, CODFAM', 'CODEMP, CODFAM', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E013AGP', 'TMPINTE013AGP', 'CDMATRIZ, CDFILIAL, CODEMP, CODAGP', 'CODEMP, CODAGP', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E015MED', 'TMPINTE015MED', 'CDMATRIZ, CDFILIAL, UNIMED', 'UNIMED', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E015TCU', 'TMPINTE015TCU', 'CDMATRIZ, CDFILIAL, UNIMED, UNIME2', 'UNIMED, UNIME2', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E025FER', 'TMPINTE025FER', 'CDMATRIZ, CDFILIAL, DIAFER, MESFER, ANOFER, CEPINI', 'DIAFER, MESFER, ANOFER, CEPINI', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E028CPG', 'TMPINTE028CPG', 'CDMATRIZ, CDFILIAL, CODEMP, CODCPG', 'CODEMP, CODCPG', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E028ICP', 'TMPINTE028ICP', 'CDMATRIZ, CDFILIAL, CODEMP, CODCPG, SEQICP', 'CODEMP, CODCPG, SEQICP', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E066FPG', 'TMPINTE066FPG', 'CDMATRIZ, CDFILIAL, CODEMP, CODFPG', 'CODEMP, CODFPG', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E070FIL', 'TMPINTE070FIL', 'CDMATRIZ, CDFILIAL, CODEMP, CODFIL', 'CODEMP, CODFIL', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E073TRA', 'TMPINTE073TRA', 'CDMATRIZ, CDFILIAL, CODTRA', 'CODTRA', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E075DER', 'TMPINTE075DER', 'CDMATRIZ, CDFILIAL, CODEMP, CODPRO, CODDER', 'CODEMP, CODPRO, CODDER', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E075PRO', 'TMPINTE075PRO', 'CDMATRIZ, CDFILIAL, CODEMP, CODPRO', 'CODEMP, CODPRO', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E075UGF', 'TMPINTE075UGF', 'CDMATRIZ, CDFILIAL, SEQUGF, CODEMP, CODPRO, CODDER, IDENGF, SIGUFS', 'SEQUGF', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E076MAR', 'TMPINTE076MAR', 'CDMATRIZ, CDFILIAL, CODMAR', 'CODMAR', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E081ITF', 'TMPINTE081ITF', 'CDMATRIZ, CDFILIAL, CODEMP, CODTPR, DATINI, CODPRO, CODFXA', 'CODEMP, CODTPR, DATINI, CODPRO, CODFXA', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E081ITP', 'TMPINTE081ITP', 'CDMATRIZ, CDFILIAL, CODEMP, CODTPR, CODPRO, CODDER, QTDMAX', 'CODEMP, CODTPR, DATINI, CODPRO, CODDER, QTDMAX', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC, DATINI DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E081ITS', 'TMPINTE081ITS', 'CDMATRIZ, CDFILIAL, CODEMP, CODTPR, DATINI, CODSER, QTDMAX', 'CODEMP, CODTPR, DATINI, CODSER, QTDMAX', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E081TAB', 'TMPINTE081TAB', 'CDMATRIZ, CDFILIAL, CODEMP, CODTPR', 'CODEMP, CODTPR', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E081TPR', 'TMPINTE081TPR', 'CDMATRIZ, CDFILIAL, CODEMP, CODTPR, DATINI', 'CODEMP, CODTPR, DATINI', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E083ORI', 'TMPINTE083ORI', 'CDMATRIZ, CDFILIAL, CODEMP, CODORI', 'CODEMP, CODORI', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E085CLI', 'TMPINTE085CLI', 'CDMATRIZ, CDFILIAL, CODCLI', 'CODCLI', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E085CTO', 'TMPINTE085CTO', 'CDMATRIZ, CDFILIAL, CODCLI, SEQCTO', 'CODCLI, SEQCTO', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E085HCL', 'TMPINTE085HCL', 'CDMATRIZ, CDFILIAL, CODCLI, CODEMP, CODFIL', 'CODCLI, CODEMP, CODFIL', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E090HRP', 'TMPINTE090HRP', 'CDMATRIZ, CDFILIAL, CODREP, CODEMP', 'CODREP, CODEMP', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E090REP', 'TMPINTE090REP', 'CDMATRIZ, CDFILIAL, CODREP', 'CODREP', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E205DEP', 'TMPINTE205DEP', 'CDMATRIZ, CODFIL, CODEMP, CODDEP', 'CODEMP, CODDEP', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E120OBS', 'TMPINTE120OBS', 'CDMATRIZ, CDFILIAL, CODEMP, CODFIL, NUMPED, SEQOBS', 'CODEMP, CODFIL, NUMPED, SEQOBS', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E301TCR', 'TMPINTE301TCR', 'CDMATRIZ, CDFILIAL, CODEMP, CODFIL, NUMTIT, CODTPT', 'CODEMP, CODFIL, NUMTIT, CODTPT', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E140NFV', 'TMPINTE140NFV', 'CDMATRIZ, CDFILIAL, CODEMP, CODFIL, CODSNF, NUMNFV', 'CODEMP, CODFIL, CODSNF, NUMNFV', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E140IPV', 'TMPINTE140IPV', 'CDMATRIZ, CDFILIAL, CODEMP, CODFIL, CODSNF, NUMNFV, SEQIPV', 'CODEMP, CODFIL, CODSNF, NUMNFV, SEQIPV', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E002TPT', 'TMPINTE002TPT', 'CDMATRIZ, CDFILIAL, CODTPT', 'CODTPT', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E210DLS', 'TMPINTE210DLS', 'CDMATRIZ, CDFILIAL, CODEMP, CODPRO, CODDER	,CODDEP, SEQENT, NUMSEP, CODLOT', 'CODEMP, CODPRO, CODDER, CODDEP, SEQENT, NUMSEP, CODLOT', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E073MOT', 'TMPINTE073MOT', 'CDMATRIZ, CDFILIAL, CODTRA, CODMTR', 'CODTRA, CODMTR', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E021MOT', 'TMPINTE021MOT', 'CDMATRIZ, CDFILIAL, CODMOT', 'CODMOT', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E085ENT', 'TMPINTE085ENT', 'CDMATRIZ, CDFILIAL, CODCLI, SEQENT', 'CODCLI, SEQENT', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E440NFC', 'TMPINTE440NFC', 'CDMATRIZ, CDFILIAL, CODEMP, CODFIL, CODFOR, NUMNFC, CODSNF', 'CODEMP, CODFIL, CODFOR, NUMNFC, CODSNF', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E440IPC', 'TMPINTE440IPC', 'CDMATRIZ, CDFILIAL, CODEMP, CODFIL, CODFOR, NUMNFC, CODSNF, SEQIPC', 'CODEMP, CODFIL, CODFOR, NUMNFC, CODSNF, SEQIPC', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E440PAR', 'TMPINTE440PAR', 'CDMATRIZ, CDFILIAL, CODEMP, CODFIL, CODFOR, NUMNFC, CODSNF, CODPAR', 'CODEMP, CODFIL, CODFOR, NUMNFC, CODSNF, CODPAR', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E130DME', 'TMPINTE130DME', 'CDMATRIZ, CDFILIAL, CODPME, CPTPME, PROSER, SEQDME', 'CDMATRIZ, CODPME, CPTPME, PROSER, SEQDME', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E130HFI', 'TMPINTE130HFI', 'CDMATRIZ, CDFILIAL, CODPME, CPTPME, PROSER, SEQDME, CODFIL, CODAGP, VARSER', 'CDMATRIZ, CODPME, CPTPME, PROSER, SEQDME, CODFIL, CODAGP, VARSER', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E130REP', 'TMPINTE130REP', 'CDMATRIZ, CDFILIAL, CODPME, CPTPME, PROSER, SEQDME, CODFIL, CODAGP, VARSER, CODREP', 'CDMATRIZ, CODPME, CPTPME, PROSER, SEQDME, CODFIL, CODAGP, VARSER, CODREP', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E008CEP', 'TMPINTE008CEP', 'CDMATRIZ, CDFILIAL, CEPINI', 'CEPINI', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');
INSERT INTO TBLVWAUXCONFIGENTIDADE (CDENTIDADE, DSENTIDADE, DSCHAVEPRIMARIAWMW, DSCHAVEPRIMARIAERP, DSORDENACAO, FLATIVO) VALUES ('E039POR', 'TMPINTE039POR', 'CDMATRIZ, CDFILIAL, CODEMP, CODPOR', 'CODEMP, CODPOR', 'DTHRIMPORTACAO DESC, NUSEQUENCIA DESC', 'S');

INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','acePar','acePar','N','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','catCli','catCli','','','','executeSql("select cdCategoria as retorno from tblvwCliente where cdEmpresa = ''" + cdEmpresa + "'' and cdRepresentante = ''" + cdRepresentante + "'' and cdCliente = ''" + cdCliente + "'')"', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','cifFob','cifFob','','','','executeSql("select cdTipoFrete as retorno from tblvwPedido where nuPedido = ''" + nuPedido + "'' and cdRepresentante = ''" + cdRepresentante + "''")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','cdTipoFrete','cifFob','','C','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','cnpjCliente','cnpjCliente','','','','cliente.nuCnpj', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','cdCliente','codCli','','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','cdCondicaoPagamento','codCpg','','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','codEmp','codEmp','','','','matrizFilial.cdMatriz', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','cdTipoPagamento','codFpg','','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','codMcp','codMcp','01','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','codMoe','codMoe','01','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','cdRepresentante','codRep','','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','cdRotaEntrega','codRoe','','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','cdTransportadora','codTra','','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','cdRepresentante','codVen','','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','datAge','datAge','','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','dtTransmissaoPda','datApr','','','dd/MM/yyyy','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','dtEntrega','datEmi','','','dd/MM/yyyy','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','dtEntrega','datPrv','','','dd/MM/yyyy','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','fatPed','fatPed','0','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','fecPed','fecPed','S','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','indSig','indSig','N','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','nuOrdemCompraCliente','nreCli','','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','numInt','numInt','','','','nuPedido +  "|" + cdRepresentante +  "|" + flOrigemPedido', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','observacao.codMot','observacao.codMot','','','','(dsObservacao == null ? dsObservacao : "1")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','dsObservacao','observacao.obsPed','','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','observacao.opeExe','observacao.opeExe','I','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','observacao.seqObs','observacao.seqObs','1','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','observacao.sitObs','observacao.sitObs','','','','(dsObservacao == null ? dsObservacao : "G")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','observacao.tipInf','observacao.tipInf','','','','(dsObservacao == null ? dsObservacao : "1")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','observacao.tipObs','observacao.tipObs','','','','(dsObservacao == null ? " : "M")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','dsObservacao','obsPed','','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','obsPed','obsPed','','','','dsObservacaoNotaFiscal', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','opeExe','opeExe','I','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','parcelas[0].banOpe','parcelas[0].banOpe','','','','executeSql("SELECT MAX(CDBANDEIRA) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','parcelas[0].catTef','parcelas[0].catTef','','','','executeSql("SELECT MAX(CDAUTORIZACAO) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','parcelas[0].cgcCre','parcelas[0].cgcCre','','','','executeSql("SELECT MAX( I ) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','parcelas[0].codFpg','parcelas[0].codFpg','','','','executeSql("SELECT MAX(CDTIPOPAGAMENTO) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','parcelas[0].diaPar','parcelas[0].diaPar','','','','executeSql("SELECT MAX(QTDIASPRAZO) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','parcelas[0].indPar','parcelas[0].indPar','','','','executeSql("SELECT MAX( I ) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','parcelas[0].nsuTef','parcelas[0].nsuTef','','','','executeSql("SELECT MAX(NSUAUTORIZACAO) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','parcelas[0].opeExe','parcelas[0].opeExe','','','','executeSql("SELECT MAX( I ) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','parcelas[0].perPar','parcelas[0].perPar','','','','executeSql("SELECT MAX(100) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','parcelas[0].seqPar','parcelas[0].seqPar','','','','executeSql("SELECT MAX(1) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','parcelas[0].tipInt','parcelas[0].tipInt','','','','executeSql("SELECT MAX( I ) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','parcelas[0].vctPar','parcelas[0].vctPar','','','','executeSql("SELECT MAX(TO_CHAR(DTVENCIMENTO, DD/MM/YYYY )) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','parcelas[0].vlrPar','parcelas[0].vlrPar','','','','executeSql("SELECT MAX(VLPARCELA) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','pedBlo','pedBlo','S','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','nuOrdemCompraCliente','pedCli','','0','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','pgtAnt','pgtAnt','N','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','seqCob','seqCob','','','','executeSql("select cdCobranca as retorno from tblvwClienteCobranca where flAtivo = ''S'' and cdCliente = ''" + cdCliente + "''")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','seqCto','seqCto','','','','(cdContato == null ? "0" : cdContato)', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','cdClienteEndereco','seqEnt','','0','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','sitPac','sitPac','0','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','sitPed','sitPed','9','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','temPar','temPar','','','','executeSql("SELECT MAX( S ) RETORNO FROM TBLVWPARCELAPEDIDO WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND FLORIGEMPEDIDO =  ''"+flOrigemPedido+"''  AND NUPEDIDO =  ''"+nuPedido+"''  AND CDPARCELA =  1 ")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','tipPed','tipPed','1','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','usuario[0].cmpUsu','usuario[0].cmpUsu','USU_PEDWMW','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','nuPedido','usuario[0].vlrUsu','','','','', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('PEDIDO','vlFrete','vlrFre','','','','executeSql( select NVL(VLFRETE,0) as retorno from tblvwPedido where nuPedido = ''" + nuPedido + "'' and cdRepresentante = ''" + cdRepresentante + "''")', 'S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','cmpKit','cmpKit','','','','executeSql("SELECT FLKIT AS RETORNO FROM TBLVWPRODUTO WHERE CDEMPRESA =  ''"+cdEmpresa+"'' AND CDPRODUTO =  ''"+cdProduto+"'' AND FLATIVO = ''S''")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','pedido.cdCentroCusto','codCcu','','','',')','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','codDep','codDep','','','','executeSql("SELECT CDLOCALESTOQUE AS RETORNO FROM TBLVWEMPRESA WHERE CDEMPRESA = ''" + cdEmpresa + "'' and flAtivo = ''S''")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','codDer','codDer','','','','itemTabelaPreco.produto.cdDerivacaoCdProduto','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','codMoe','codMoe','01','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','codPro','codPro','','','','produto.dsReferencia','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','codTpr','codTpr','','','','cdTabelaPreco','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','cdTabelaPreco','codTpr','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','pedido.dtEntrega','datAne','','','dd/MM/yyyy','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','pedido.dtEntrega','datEnt','','','dd/MM/yyyy','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','pedido.dtEmissao','datGer','','','dd/MM/yyyy','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','gerCga','gerCga','N','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','gerNec','gerNec','N','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','indAed','indAed','N','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','dsObservacao','obsIpd','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','dsObservacao','obsMot','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','opeExe','opeExe','I','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','pedPrv','pedPrv','N','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','vlPctAcrescimo','perAcr','','','##0.0##','0.0','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','vlPctComissao','perCom','','','##0.000##','0.0','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','vlPctDesconto','perDsc','','','##0.00##','0.0','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','vlPctDesconto','perOfe','','','##0.00##','0.0','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','preFix','preFix','S','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','vlBaseItemPedido','preUni','','','##0.000##','(vlPctAcrescimo > 0 ? vlItemPedido : vlBaseItemPedido)','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','qtItemFisico','qtdPed','','','##0.0##','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','qtItemFisico','qtdVen','','','##0.0##','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','resEst','resEst','S','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','resMan','resMan','N','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','nuSeqItemPedido','seqIpd','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','sitIpd','sitIpd','9','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','pedido.cdTipoPedido','tnsPro','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','cdUnidade','uniMed','','','','produto.cdUnidade','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('ITEMPEDIDO','cdUnidade','venMed','','','','','S');

INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','nmFantasia','apeCli','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','dsBairroComercial','baiCli','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','dsCepComercial','cepCli','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','nuCnpj','cgcCpf','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','dsCidadeComercial','cidCli','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','cliCon','cliCon','','','','("J".equals(flTipoPessoa) ?  "S"  :  "N")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','cliFor','cliFor','C','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','codFpg','codFpg','2','2','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','CDRAMOATIVIDADE','codRam','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','dsComplementoComercial','cplEnd','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','NUCELULAR','dadosContatos.fonCto','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','dsEmail','dadosContatos.intNet','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','NMCONTATO','dadosContatos.nomCto','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','sitCto','dadosContatos.sitCto','A','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','DSBAIRROCOMERCIAL','dadosGeraisCliente.enderecosEntrega.baiEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','DSCEPCOMERCIAL','dadosGeraisCliente.enderecosEntrega.cepEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','DSCIDADECOMERCIAL','dadosGeraisCliente.enderecosEntrega.cidEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','DSCOMPLEMENTOCOMERCIAL','dadosGeraisCliente.enderecosEntrega.cplEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','DSLOGRADOUROCOMERCIAL','dadosGeraisCliente.enderecosEntrega.endEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','CDUFCOMERCIAL','dadosGeraisCliente.enderecosEntrega.estEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','DSNUMEROLOGRADOUROCOMERCIAL','dadosGeraisCliente.enderecosEntrega.nenEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','enderecosEntrega.seqEnt','dadosGeraisCliente.enderecosEntrega.seqEnt','1','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','enderecosEntrega.seqEnv','dadosGeraisCliente.enderecosEntrega.seqEnv','1','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','dtCadastro','dat_criacao','','','dd/MM/yyyy','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','DTNASCIMENTO','datNas','','','dd/MM/yyyy','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','definicoesCliente.acePar','definicoesCliente.acePar','S','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','definicoesCliente.codEmp','definicoesCliente.codEmp','','','','matrizFilial.cdMatriz','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','definicoesCliente.codFil','definicoesCliente.codFil','','','','matrizFilial.cdFilial','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','cdRepresentante','definicoesCliente.codRep','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENTE','CDTRANSPORTADORA','definicoesCliente.codTra','','','','','S');

INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','dsBairro','baiEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','dsCep','cepEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','nuCnpj','cgcEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','dsCidade','cidEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','dsComplemento','cplEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','dsLogradouro','endEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','cdUf','estEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','dsCep','iniEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','nuLogradouro','nenEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','nomCli','nomCli','','','','executeSql(""select UPPER(NMRAZAOSOCIAL) as retorno from TBLVWnovocliente where CDEMPRESA =  ''"+cdEmpresa+"''  and cdRepresentante=  ''"+ cdRepresentante +"''  and cdNovoCliente= ''"+ cdNovoCliente +"''")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','prxEnt','prxEnt','','','','dsPontoReferencia','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','cdEndereco','seqEnt','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','cdEndereco','seqEnv','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('NOVOCLIENDERECO','sitReg','sitReg','A','','','','S');

INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEATUA','cdCliente','codCli','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEATUA','DsEmailNfe','emaNfe','','','','DsEmailNfe','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEATUA','fonCli','fonCli','','','','executeSql("SELECT NUFONE AS RETORNO FROM TBLVWCLIENTEATUA WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND CDCLIENTE =  ''"+cdCliente+"''  AND CDREGISTRO =  ''"+cdRegistro+"''  AND FLORIGEMATUALIZACAO =  ''"+flOrigemAtualizacao+"''")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEATUA','ideCli','ideCli','','','','executeSql("SELECT MAX(ideCli) AS RETORNO FROM TMPINTE085CLI WHERE  CODCLI=   ''"+cdCliente+"''")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEATUA','intNet','intNet','','','','executeSql("SELECT DSEMAIL AS RETORNO FROM TBLVWCLIENTEATUA WHERE CDEMPRESA =  ''"+cdEmpresa+"''  AND CDREPRESENTANTE =  ''"+cdRepresentante+"''  AND CDCLIENTE =  ''"+cdCliente+"''  AND CDREGISTRO =  ''"+cdRegistro+"''  AND FLORIGEMATUALIZACAO =  ''"+flOrigemAtualizacao+"''")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEATUA','numIdf','numIdf','','','','executeSql("SELECT MAX(numIdf) AS RETORNO FROM TMPINTE085CLI WHERE  CODCLI=   ''"+cdCliente+"''")','S');

INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','cdCliente','dadosGeraisCliente.codCli','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.definicoesCliente.codEmp','dadosGeraisCliente.definicoesCliente.codEmp','1','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.definicoesCliente.codFil','dadosGeraisCliente.definicoesCliente.codFil','1','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.definicoesCliente.codRep','dadosGeraisCliente.definicoesCliente.codRep','','','','executeSql("select cdrepresentante as retorno from TBLVWCLIENTE where cdCliente = ''" + cdCliente+ "'' and flAtivo = ''S''")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.enderecosEntrega.baiEnt','dadosGeraisCliente.enderecosEntrega.baiEnt','','','','executeSql("SELECT TRANSLATE(UPPER(DSBAIRRO), ''ÁÇÉÍÓÚÀÈÌÒÙÂÊÎÔÛÃÕËÜ'',''ACEIOUAEIOUAEIOUAOEU'') AS RETORNO FROM TBLVWCLIENTEENDATUA WHERE  CDCLIENTE=  ''" + cdCliente+ "''  AND CDREGISTRO =  ''" + cdRegistro+ "''  "")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.enderecosEntrega.cepEnt','dadosGeraisCliente.enderecosEntrega.cepEnt','','','','executeSql("SELECT DSCEP AS RETORNO FROM TBLVWCLIENTEENDATUA WHERE  CDCLIENTE=  ''" + cdCliente+ "''  AND CDREGISTRO =  ''" + cdRegistro+ "''  "")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.enderecosEntrega.cgcEnt','dadosGeraisCliente.enderecosEntrega.cgcEnt','','','','executeSql("SELECT NUCNPJ AS RETORNO FROM TBLVWCLIENTE WHERE FLATIVO = ''S'' AND CDCLIENTE=   ''" + cdCliente+ "''")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.enderecosEntrega.cidEnt','dadosGeraisCliente.enderecosEntrega.cidEnt','','','','executeSql("SELECT TRANSLATE(UPPER(DSCIDADE),  ''ÁÇÉÍÓÚÀÈÌÒÙÂÊÎÔÛÃÕËÜ'' ,  ''ACEIOUAEIOUAEIOUAOEU'' )AS RETORNO FROM TBLVWCLIENTEENDATUA  WHERE  CDCLIENTE=  ''" + cdCliente+ "''  AND CDREGISTRO =  ''" + cdRegistro+ "''  "")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.enderecosEntrega.endEnt','dadosGeraisCliente.enderecosEntrega.endEnt','','','','executeSql("SELECT TRANSLATE(UPPER(DSLOGRADOURO),  ''ÁÇÉÍÓÚÀÈÌÒÙÂÊÎÔÛÃÕËÜ'' ,  ''ACEIOUAEIOUAEIOUAOEU'' )AS RETORNO FROM TBLVWCLIENTEENDATUA  WHERE  CDCLIENTE=  ''" + cdCliente+ "''  AND CDREGISTRO =  ''" + cdRegistro+ "''  "")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.enderecosEntrega.estEnt','dadosGeraisCliente.enderecosEntrega.estEnt','','','','executeSql("SELECT DSESTADO AS RETORNO FROM TBLVWCLIENTEENDATUA  WHERE  CDCLIENTE=  ''" + cdCliente+ "''  AND CDREGISTRO =  ''" + cdRegistro+ "''  "")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.enderecosEntrega.insEnt','dadosGeraisCliente.enderecosEntrega.insEnt','','','','executeSql("SELECT NUINSCRICAOESTADUAL AS RETORNO FROM TBLVWCLIENTEENDATUA  WHERE  CDCLIENTE=  ''" + cdCliente+ "''  AND CDREGISTRO =  ''" + cdRegistro+ "''  "")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.enderecosEntrega.nenEnt','dadosGeraisCliente.enderecosEntrega.nenEnt','','','','executeSql("SELECT NULOGRADOURO AS RETORNO FROM TBLVWCLIENTEENDATUA  WHERE  CDCLIENTE=  ''" + cdCliente+ "''  AND CDREGISTRO =  ''" + cdRegistro+ "''  "")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.enderecosEntrega.paiEnt','dadosGeraisCliente.enderecosEntrega.paiEnt','1058','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.enderecosEntrega.seqEnv','dadosGeraisCliente.enderecosEntrega.seqEnv','1','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.enderecosEntrega.tipEnt','dadosGeraisCliente.enderecosEntrega.tipEnt','','','','executeSql("SELECT TIPCLI AS RETORNO FROM TBLVWCLIENTE WHERE FLATIVO=''S'' AND CDCLIENTE=   ''" + cdCliente+ "''")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.enderecosEntrega.vlrLat','dadosGeraisCliente.enderecosEntrega.vlrLat','','','','executeSql("SELECT CDLATITUDEEND AS RETORNO FROM TBLVWCLIENTEENDATUA  WHERE  CDCLIENTE=  ''" + cdCliente+ "''  AND CDREGISTRO =  ''" + cdRegistro+ "''  "")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CLIENTEENDATUA','dadosGeraisCliente.enderecosEntrega.vlrLon','dadosGeraisCliente.enderecosEntrega.vlrLon','','','','executeSql("SELECT CDLONGITUDEEND AS RETORNO FROM TBLVWCLIENTEENDATUA  WHERE  CDCLIENTE=  ''" + cdCliente+ "''  AND CDREGISTRO =  ''" + cdRegistro+ "''  "")','S');

INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CONTATO','dsCargo','carCto','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CONTATO','codCli','codCli','','','','executeSql("SELECT NVL(MAX(NOV.CDCLIENTEERP),  ''" + cdCliente+ "'' ) AS RETORNO  FROM TBLVWNOVOCLIENTE NOV JOIN TBLVWCONTATO CTT ON CTT.CDEMPRESA = NOV.CDEMPRESA AND CTT.CDREPRESENTANTE = NOV.CDREPRESENTANTE AND CTT.CDCLIENTE = NOV.NUCNPJ where CTT.CDEMPRESA =  ''" + cdEmpresa + "''  AND CTT.CDREPRESENTANTE =  ''" + cdRepresentante+ "''  AND CTT.CDCLIENTE =  ''" + cdCliente+ "''  AND CTT.FLORIGEMCONTATO =  ''" + flOrigemContato+ "''  AND CTT.CDCONTATO =  ''" + cdContato+ "''  AND CTT.CDREGISTRO =  ''" + cdRegistro+ "''")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CONTATO','codNiv','codNiv','','','','executeSql("SELECT CDCONTATO AS RETORNO   FROM  TBLVWCONTATO CTT  WHERE CTT.CDCONTATO =  ''" +cdContato+ "''")','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CONTATO','dtAniversario','datNas','','','dd/MM/yyyy','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CONTATO','nuCelular','fonCto','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CONTATO','nuFone','fonCt2','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CONTATO','dsEmail','intNet','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CONTATO','nmContato','nomCto','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CONTATO','flAcaoAlteracao','opeExe','','','','','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CONTATO','seqCto','seqCto','','','','("I".equals(flAcaoAlteracao) ? null : cdContato)','S');
INSERT INTO TBWMWCONFIGCAMPOINTEG (NMENTIDADE, NMCAMPOSISTEMA, NMCAMPOERP, DSVALORFIXO, DSVALORSECAMPOVAZIO, DSMASCARA, DSEXPRESSAO, FLATIVO) VALUES ('CONTATO','sitCto','sitCto','A','','','','S');

CREATE OR REPLACE FUNCTION fncdprodutossenior(p_codpro TEXT, p_codder TEXT)
RETURNS TEXT
LANGUAGE sql
IMMUTABLE
PARALLEL SAFE
AS $$
    SELECT
        p_codpro ||
        CASE
            -- Trata NULL e string vazia/espacos como "sem derivação"
            WHEN COALESCE(BTRIM(p_codder), '') = '' THEN ''
            ELSE '.' || p_codder
        END;
$$;

CREATE OR REPLACE VIEW tbintempresa AS
 SELECT DISTINCT mat.cdempresa,
    fil.nomfil AS nmempresa,
    lower(fil.intnet::text)::character varying(100) AS dsemail,
    fil.sigfil::character varying(100) AS nmempresacurto,
    fil.numcgc::character varying(20) AS nucnpj,
    fil.insest::character varying(20) AS nuinscricaoestadual,
    fil.endfil AS dslogradouro,
    fil.nenfil::character varying(20) AS nulogradouro,
    fil.cplend AS dscomplemento,
    fil.baifil AS dsbairro,
    fil.cepfil::character varying(20) AS dscep,
    fil.cidfil AS dscidade,
    fil.sigufs::character varying(20) AS dsestado,
    fil.numfon::character varying(20) AS nufone,
    fil.numfax::character varying(20) AS nufonefax,
    fil.cxapst::character varying(20) AS nucaixapostal,
    mat.cdmatriz,
    mat.cdfilial
   FROM tmpinte070fil fil
   JOIN tblvwmatrizfilial mat ON mat.cdmatriz::text = fil.cdmatriz::text AND mat.cdfilial::text = fil.codfil::text;

CREATE OR REPLACE VIEW tbintestoque  AS
 SELECT DISTINCT fil.cdempresa,
    '0'::character varying(20) AS cdrepresentante,
    concat(est.codpro::text, est.codder::text)::character varying(20) AS cdproduto,
    'E'::character(1) AS florigemestoque,
    (est.qtdest - est.qtdblo)::numeric(16,7) AS qtestoque,
    est.qtdnfc::numeric(16,7) AS qtestoqueprevisto,
    est.datnfc::timestamp(6) without time zone AS dtestoqueprevisto
   FROM tbintempresa fil
     JOIN tmpinte205dep dep ON fil.cdmatriz::text = dep.cdmatriz::text AND fil.cdfilial::text = dep.cdfilial::text
     JOIN tmpinte210est est ON fil.cdmatriz::text = est.codemp::text AND dep.coddep::text = est.coddep::text
  WHERE dep.sitdep = 'A'::bpchar AND est.qtdest > 0::numeric;
	 
CREATE OR REPLACE VIEW tbintitemtabelapreco AS
 SELECT DISTINCT emp.cdempresa,
    '0'::character varying(20) AS cdrepresentante,
    itp.codtpr::character varying(30) AS cdtabelapreco,
    concat(itp.codpro::text, itp.codder::text)::character varying(20) AS cdproduto,
    itp.prebas::numeric(16,7) AS vlunitario,
    itp.prebas::numeric(16,7) AS vlbase,
    itp.tolmai::numeric(16,7) AS vlpctmaxacrescimo,
    itp.tolmen::numeric(16,7) AS vlpctmaxdesconto,
    itp.qtdmax::numeric(16,7) AS qtmaxvenda
   FROM tbintempresa emp
     JOIN tmpinte081tab tab ON tab.codemp::text = emp.cdmatriz::text AND tab.cdfilial::text = emp.cdfilial::text
     JOIN tmpinte081tpr tpr ON tab.codemp = tpr.codemp AND tab.cdfilial::text = tpr.cdfilial::text AND tab.codtpr::text = tpr.codtpr::text
     JOIN tmpinte081itp itp ON tab.codemp = itp.codemp AND tab.codtpr::text = itp.codtpr::text AND tpr.datini = itp.datini
     JOIN tmpinte075pro pro ON pro.cdmatriz::text = itp.cdmatriz::text AND pro.cdfilial::text = itp.cdfilial::text AND pro.codemp = itp.codemp AND pro.codpro::text = itp.codpro::text
     JOIN tmpinte075der der ON der.codemp = pro.codemp AND der.codpro::text = pro.codpro::text AND der.cdmatriz::text = itp.cdmatriz::text AND der.cdfilial::text = itp.cdfilial::text AND der.codemp = itp.codemp AND der.codpro::text = itp.codpro::text AND der.codder::text = itp.codder::text
     LEFT JOIN tmpinte012fam fam ON fam.cdmatriz::text = pro.cdmatriz::text AND fam.cdfilial::text = pro.cdfilial::text AND pro.codfam::text = fam.codfam::text
     LEFT JOIN tmpinte013agp agp ON agp.cdmatriz::text = pro.cdmatriz::text AND agp.cdfilial::text = pro.cdfilial::text AND agp.codagp::text = pro.codagc::text
  WHERE tab.sitreg = 'A'::bpchar AND tpr.datini <= CURRENT_DATE AND tpr.datfim >= CURRENT_DATE AND tpr.sitreg = 'A'::bpchar AND itp.sitreg = 'A'::bpchar AND pro.sitpro = 'A'::bpchar AND pro.tippro <> 'S'::bpchar AND der.sitder = 'A'::bpchar AND fam.sitfam = 'A'::bpchar;

CREATE OR REPLACE VIEW tbintproduto  AS
 SELECT DISTINCT emp.cdempresa,
    '0'::character varying(20) AS cdrepresentante,
    concat(pro.codpro::text, der.codder::text)::character varying(20) AS cdproduto,
    pro.despro AS dsproduto,
    pro.codagc::character varying(20) AS cdgrupoproduto1,
    pro.codagc::character varying(20) AS cdlinha,
    pro.codori::character varying(20) AS cdfornecedor,
    pro.unimed::character varying(100) AS dsunidadefisica,
        CASE
            WHEN pro.sitpro = 'A'::bpchar THEN 1
            ELSE 0
        END::numeric(9,0) AS flsituacao,
    pro.unimed::character varying(20) AS cdunidade,
    COALESCE(
        CASE
            WHEN der.qtdemb = 0::numeric THEN 1::numeric
            ELSE der.qtdemb
        END, 1::numeric)::numeric(16,7) AS nuconversaounidadesmedida,
    COALESCE(pro.peripi, 0::numeric)::numeric(16,7) AS vlpctipi,
    pro.pesbru::numeric(16,7) AS qtpeso,
    pro.altpro::numeric(16,7) AS qtaltura,
    pro.larpro::numeric(16,7) AS qtlargura,
    pro.compro::numeric(16,7) AS qtcomprimento,
    der.codbar::character varying(200) AS nucodigobarras,
    pro.codmar::character varying(20) AS cdmarca,
    mar.nommar::character varying(100) AS dsmarca,
    pro.codpro::character varying(100) AS dsreferencia,
    der.codder::character varying(20) AS cdderivacaocdproduto,
    pro.codpro::character varying(500) AS dscodigoalternativo,
    pro.codpro::character varying(20) AS cdtributacaoproduto,
    pro.orimer::character varying(20) AS cdorigemmercadoria,
    regexp_replace(der.desder::text, '[^a-zA-Z0-9]+'::text, '_'::text)::character varying(20) AS cdconjunto,
    der.codemp::character varying(100) AS cdagrupadorsimilaridade
   FROM tbintempresa emp
     JOIN tmpinte075pro pro ON emp.cdmatriz::text = pro.cdmatriz::text AND emp.cdfilial::text = pro.cdfilial::text
     JOIN tmpinte075der der ON pro.codemp = der.codemp AND pro.codpro::text = der.codpro::text
     JOIN tmpinte012fam fam ON fam.cdmatriz::text = pro.cdmatriz::text AND fam.cdfilial::text = pro.cdfilial::text
     LEFT JOIN tmpinte013agp agp ON agp.cdmatriz::text = pro.cdmatriz::text AND agp.cdfilial::text = pro.cdfilial::text AND agp.codagp::text = pro.codagc::text
     LEFT JOIN tmpinte076mar mar ON fam.cdmatriz::text = pro.cdmatriz::text AND fam.cdfilial::text = pro.cdfilial::text AND mar.codmar::text = pro.codmar::text AND mar.sitmar = 'A'::bpchar
  WHERE pro.sitpro = 'A'::bpchar AND pro.tippro <> 'S'::bpchar AND der.sitder = 'A'::bpchar AND fam.sitfam = 'A'::bpchar;

CREATE OR REPLACE VIEW tbintgrupoproduto1 AS
 SELECT fam.cdgrupoproduto1,
    fam.dsgrupoproduto1
   FROM ( SELECT agp.codagp::character varying(20) AS cdgrupoproduto1,
            agp.desagp::character varying(100) AS dsgrupoproduto1,
            row_number() OVER (PARTITION BY agp.codagp ORDER BY agp.desagp) AS rn
           FROM tbintempresa emp
             JOIN tmpinte075pro pro ON emp.cdmatriz::text = pro.cdmatriz::text AND emp.cdfilial::text = pro.cdfilial::text
             JOIN tmpinte075der der ON pro.codemp = der.codemp AND pro.codpro::text = der.codpro::text
             JOIN tmpinte012fam fam_1 ON fam_1.cdmatriz::text = pro.cdmatriz::text AND fam_1.cdfilial::text = pro.cdfilial::text AND pro.codfam::text = fam_1.codfam::text
             JOIN tmpinte013agp agp ON agp.cdmatriz::text = pro.cdmatriz::text AND agp.cdfilial::text = pro.cdfilial::text AND agp.codagp::text = pro.codagc::text
          WHERE pro.sitpro = 'A'::bpchar AND pro.tippro <> 'S'::bpchar AND der.sitder = 'A'::bpchar AND fam_1.sitfam = 'A'::bpchar) fam
  WHERE fam.rn = 1;

CREATE OR REPLACE VIEW tbintrepresentante AS
 SELECT rep.codrep::character varying(20) AS cdrepresentante,
    upper(COALESCE(rep.aperep, rep.nomrep)::text)::character varying(100) AS nmrepresentante,
    rep.intnet AS dsemail,
        CASE
            WHEN rep.catrep::text = 'VEN'::text THEN 'R'::text
            WHEN rep.catrep::text = 'REP'::text THEN 'R'::text
            ELSE 'S'::text
        END::character(1) AS fltipocadastro,
    rep.fonrep AS nufone,
    rep.endrep AS dslogradouro,
    rep.cplend::character varying(100) AS dscomplemento,
    rep.bairep::character varying(100) AS dsbairro,
    lpad(rep.ceprep::text, 8, '0'::text)::character varying(20) AS dscep,
    rep.cidrep::character varying(100) AS dscidade,
    rep.sigufs::character varying(20) AS dsestado
   FROM ( SELECT rep_1.codrep,
            rep_1.nomrep,
            rep_1.aperep,
            rep_1.intnet,
            hrp.catrep,
            rep_1.fonrep,
            rep_1.endrep,
            rep_1.cplend,
            rep_1.bairep,
            rep_1.ceprep,
            rep_1.cidrep,
            rep_1.sigufs,
            rep_1.codcdi,
            row_number() OVER (PARTITION BY rep_1.codrep ORDER BY rep_1.cdmatriz, rep_1.dthrimportacao DESC) AS rn
           FROM tmpinte090rep rep_1
             JOIN tmpinte090hrp hrp ON hrp.codrep = rep_1.codrep AND rep_1.cdmatriz::text = hrp.cdmatriz::text AND rep_1.cdfilial::text = hrp.cdfilial::text
          WHERE rep_1.sitrep::text = 'A'::text AND (hrp.catrep::text = ANY (ARRAY['GRE'::character varying, 'GER'::character varying, 'SUP'::character varying, 'SUB'::character varying, 'VEN'::character varying, 'REP'::character varying]::text[]))) rep
  WHERE rep.rn = 1;
 
CREATE OR REPLACE VIEW tbintrepresentanteemp AS
 SELECT DISTINCT emp.cdempresa,
    rep.cdrepresentante,
        CASE
            WHEN rep.cdrepresentante::text = '1'::text THEN 'S'::text
            ELSE 'N'::text
        END::character(1) AS fldefault
   FROM tmpinte090hrp hrp
     JOIN tbintempresa emp ON emp.cdmatriz::text = hrp.codemp::text
     JOIN tbintrepresentante rep ON rep.cdrepresentante::text = hrp.codrep::text;
	 
CREATE OR REPLACE VIEW tbinttabelapreco AS
 SELECT DISTINCT emp.cdempresa,
    '0'::character varying(20) AS cdrepresentante,
    tab.codtpr::character varying(30) AS cdtabelapreco,
    tab.destpr::character varying(100) AS dstabelapreco,
    tpr.datini AS dtinicial,
    tpr.datfim AS dtfinal,
    tpr.datfim AS dtvalidade,
    'S'::character(1) AS fldescontoqtdauto,
    COALESCE(tab.tabbld, 'N'::bpchar)::character(1) AS flsomentecatalogo,
    '0'::character varying(20) AS cdlocalestoque,
    tab.espcli AS flespecial
   FROM tbintempresa emp
     JOIN tmpinte081tab tab ON tab.cdmatriz::text = emp.cdmatriz::text AND tab.cdfilial::text = emp.cdfilial::text
     JOIN tmpinte081tpr tpr ON tpr.codemp = tab.codemp AND tpr.codtpr::text = tab.codtpr::text
  WHERE tab.sitreg = 'A'::bpchar AND tpr.sitreg = 'A'::bpchar AND tpr.datini <= CURRENT_DATE AND tpr.datfim >= CURRENT_DATE;

CREATE OR REPLACE VIEW tbinttipopagamento AS
 SELECT DISTINCT emp.cdempresa,
    '0'::character varying(20) AS cdrepresentante,
    fpg.codfpg AS cdtipopagamento,
    fpg.desfpg AS dstipopagamento,
    fpg.venmfp::numeric(16,7) AS qtminvalor,
    'N'::character(1) AS flocultoparanovocliente
   FROM tbintempresa emp
     JOIN tmpinte066fpg fpg ON fpg.cdmatriz::text = emp.cdmatriz::text AND fpg.cdfilial::text = emp.cdfilial::text
  WHERE fpg.sitfpg = 'A'::bpchar;
  
CREATE OR REPLACE VIEW tbintcliente AS
 SELECT DISTINCT emp.cdempresa,
    hcl.codrep::character varying(20) AS cdrepresentante,
    cli.codcli::character varying(20) AS cdcliente,
    upper(cli.apecli::text)::character varying(100) AS nmrazaosocial,
    upper(cli.nomcli::text)::character varying(100) AS nmfantasia,
    hcl.codcpg::character varying(40) AS cdcondicaopagamento,
    hcl.codfpg::character varying(20) AS cdtipopagamento,
    hcl.codtpr::character varying(30) AS cdtabelapreco,
    hcl.catcli::character varying(20) AS cdcategoria,
    hcl.codtra::character varying(20) AS cdtransportadora,
    cli.cgccpf::character varying(20) AS nucnpj,
    cli.insest::character varying(20) AS nuinscricaoestadual,
        CASE
            WHEN length(hcl.vlrlim::character varying::text) > 11 THEN 999999999.9999999
            ELSE hcl.vlrlim
        END::numeric(16,7) AS vllimitecredito,
    (1::numeric - hcl.perds1 / 100::numeric)::numeric(16,7) AS vlindicefinanceiro,
    cli.foncli AS nufone,
    cli.faxcli AS nufonefax,
    cli.foncl2 AS nucelular,
    lower(cli.intnet::text)::character varying(100) AS dsemail,
    cli.obsmot::character varying(4000) AS dsobservacao,
    cli.endcli AS dslogradourocomercial,
    cli.nencli::character varying(20) AS nulogradourocomercial,
    cli.cplend::character varying(100) AS dscomplementocomercial,
    cli.baicli::character varying(100) AS dsbairrocomercial,
    cli.cepcli::character varying(20) AS dscepcomercial,
    cli.cidcli::character varying(100) AS dscidadecomercial,
    cli.sigufs::character varying(20) AS cdestadocomercial,
    cli.sigufs::character varying(20) AS dsestadocomercial,
    cli.codroe::character varying(20) AS cdrotaentrega,
    (((cli.sigufs::text || '-'::text) || cli.clicon::text))::character varying(20) AS cdtributacaocliente,
    cli.codgre::character varying(20) AS cdrede,
    cli.codram::character varying(20) AS cdramoatividade,
    cpg.przmed::numeric(9,0) AS qtdiasmaximopagamento,
    cli.cliprx::character varying(500) AS dsobslogistica
   FROM tbintempresa emp
     JOIN tmpinte085cli cli ON emp.cdmatriz::text = cli.cdmatriz::text AND emp.cdfilial::text = cli.cdfilial::text
     JOIN tmpinte085hcl hcl ON hcl.codcli = cli.codcli AND hcl.cdmatriz::text = cli.cdmatriz::text AND hcl.cdfilial::text = cli.cdfilial::text
     LEFT JOIN tmpinte028cpg cpg ON cpg.codemp = hcl.codemp AND cpg.codcpg::text = hcl.codcpg::text
  WHERE cli.sitcli = 'A'::bpchar AND (cli.clifor = ANY (ARRAY['A'::bpchar, 'C'::bpchar])) AND hcl.codrep <> '0'::numeric;
  
CREATE OR REPLACE VIEW tbintcondicaopagamento AS
 SELECT DISTINCT emp.cdempresa,
    '0'::character varying(20) AS cdrepresentante,
    cpg.codcpg::character varying(40) AS cdcondicaopagamento,
    cpg.descpg::character varying(100) AS dscondicaopagamento,
    COALESCE(1::numeric + cpg.vendsc / 100::numeric, 1::numeric)::numeric(16,7) AS vlindicefinanceiro,
    cpg.przmed::numeric(9,0) AS qtdiasmediospagamento,
    cpg.qtdpar::numeric(9,0) AS nuparcelas
   FROM tbintempresa emp
     JOIN tmpinte028cpg cpg ON emp.cdmatriz::text = cpg.cdmatriz::text AND emp.cdfilial::text = cpg.cdfilial::text
  WHERE cpg.aplcpg <> 'C'::bpchar;