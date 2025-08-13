INSERT INTO TBLVWUSUARIOREP (CDUSUARIO,CDREPRESENTANTE,FLATIVO,FLTIPOALTERACAO)
VALUES ('WMW','99999','S','I');
INSERT INTO TBLVWUSUARIOPDA (CDUSUARIO,CDTIPOPDA,FLATIVO,FLTIPOALTERACAO)
VALUES('WMW','SIMULADOR','S','I');
INSERT INTO TBWMWUSUARIO (CDUSUARIO,NMUSUARIO,DSLOGIN,DSSENHA,CDFUNCAO,FLBLOQUEADOLOGIN,FLATIVO,FLTIPOALTERACAO)
VALUES ('WMW','WMW','WMW','WIIJRCIG5R8KUEJ4UFQ77GCA4D+GHAA7RBUXBTG+8FY=','REPRESENTANTE','N','S','I');
INSERT INTO TBWMWUSUARIOSISTEMA (CDSISTEMA,CDUSUARIO,FLATIVO,FLTIPOALTERACAO)
VALUES('1','WMW','S','I');
INSERT INTO TBWMWUSUARIOSISTEMA (CDSISTEMA,CDUSUARIO,FLATIVO,FLTIPOALTERACAO)
VALUES('20','WMW','S','I');

UPDATE TBWMWFUNCAO SET FLATIVO='S' where cdfuncao='REPRESENTANTE';

UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO = '{"usa":"S", "nmCampoValidaData":"N", "nuAnoValidaData":"N", "validaCadastroDuasEtapas":"N", "geraNovidadeClientePrimeiraEtapa":"N", "apresentaMensagemLgpd":"S","enviaEmailMensagemLgpd":"N", "usaLiberacaoAnaliseNovoCliente":"N"}' 
WHERE CDPARAMETRO = '27';

UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='{"usa":"S","listaServicos":"ReceitaWS,https://www.receitaws.com.br/v1/cnpj/|CNPJ|","bloqueiaEdicaoCampos":"N","notificaFalhas":"N","permitePreenchimentoCamposAtualizacaoClientePorCNPJ":"N","bloqueiaCadastroStatusCNPJ":"N"}'
WHERE CDPARAMETRO='1463';

UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='N' WHERE cdparametro IN('1146','1611','1612','1613','1614');

UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='S' WHERE CDPARAMETRO='630';

UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO = 'importadadosparaerp' WHERE CDPARAMETRO = '648';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO = 'S' WHERE CDPARAMETRO = '315';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO = 'S' WHERE CDPARAMETRO = '863';

ALTER TABLE TBLVWNOVOCLIENTE
add NUIERG character varying(16);
                            
ALTER TABLE TBLVWNOVOCLIENTE
add DSOBSERVACAO character varying(255);
                         
ALTER TABLE TBLVWNOVOCLIENTE
add NMCONTATO character varying(40);
  
ALTER TABLE TBLVWNOVOCLIENTE
add CDNOVOCLIENTERELACIONADO character varying(20);
                       
ALTER TABLE TBLVWNOVOCLIENTE
add NUCELULAR character varying(14);
                       
ALTER TABLE TBLVWNOVOCLIENTE
add DSEMAILNFE character varying(255);
   
ALTER TABLE TBLVWNOVOCLIENTE
add DTNASCIMENTO character varying(6);
                        
ALTER TABLE TBLVWNOVOCLIENTE
add DSCARGO character varying(20);
   
DELETE FROM TBWMWCAMPO where NMENTIDADE = 'TBLVWNOVOCLIENTE';
   
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'DSCEPCOMERCIAL', null, 'Cep', null, 1, '10', 'N', 'N', 'S', 'N', 'N', 'S', 'N', 'N', 'S', null, 1, null, 'cep', null, 'End. Com.', 1, null, null, null, 'ReceitaWS.cep', null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'NMCONTATO', null, 'Nome', null, 1, '40', 'N', 'N', 'S', 'N', 'S', 'S', 'N', 'N', 'S', null, 1, null, null, null, 'Contato', 1, null, null, null, null, null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'nmRazaoSocial', null, 'Razão S.', null, 1, '40', 'N', 'N', 'S', 'N', 'N', 'S', 'N', 'N', 'S', null, 1, null, null, null, 'Principal', 1, null, null, null, 'ReceitaWS.nome', null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'NMFANTASIA', null, 'Fantasia', null, 1, '40', 'N', 'N', 'S', 'N', 'S', 'S', 'N', 'N', 'S', null, 2, null, null, null, 'Principal', 1, null, null, null, 'ReceitaWS.fantasia', null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'DSCARGO', null, 'Cargo', null, 1, '20', 'N', 'N', 'N', 'N', 'S', 'S', 'N', 'N', 'S', null, 2, null, null, null, 'Contato', 1, null, null, null, null, null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'CDUFCOMERCIAL', 'TBLVWUF', 'Uf', null, 6, null, 'N', 'N', 'S', 'N', 'N', 'S', 'N', 'N', 'S', null, 2, null, null, null, 'End. Com.', 1, null, null, null, 'ReceitaWS.uf', null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'DSCIDADECOMERCIAL', null, 'Cidade', null, 1, '20', 'N', 'N', 'S', 'N', 'N', 'S', 'N', 'N', 'S', null, 3, null, null, null, 'End. Com.', 1, null, null, null, 'ReceitaWS.municipio', null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'NUIERG', null, 'I.E./RG', null, 1, '16', 'N', 'N', 'N', 'N', 'S', 'S', 'N', 'N', 'S', null, 3, null, null, null, 'Principal', 1, null, null, null, null, null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'NUCELULAR', null, 'Celular', null, 1, '14', 'N', 'N', 'N', 'N', 'S', 'S', 'N', 'N', 'S', null, 3, null, 'fone', null, 'Contato', 1, null, null, null, null, null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'DTNASCIMENTO', null, 'Aniversário', null, 1, '6', 'N', 'N', 'N', 'N', 'S', 'S', 'N', 'N', 'S', null, 4, null, 'mask', '##/##/##', 'Contato', 1, null, null, null, null, null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'DSBAIRROCOMERCIAL', null, 'Bairro', null, 1, '20', 'N', 'N', 'S', 'N', 'N', 'S', 'N', 'N', 'S', null, 4, null, null, null, 'End. Com.', 1, null, null, null, 'ReceitaWS.bairro', null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'nuFone', null, 'Fone', null, 1, '14', 'N', 'N', 'S', 'N', 'N', 'S', 'N', 'N', 'S', null, 4, null, 'fone', null, 'Principal', 1, null, null, null, 'ReceitaWS.telefone', null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'DSLOGRADOUROCOMERCIAL', null, 'Lograd.', null, 1, '40', 'N', 'N', 'S', 'N', 'N', 'S', 'N', 'N', 'S', null, 5, null, null, null, 'End. Com.', 1, null, null, null, 'ReceitaWS.logradouro', null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'DSEMAIL', null, 'E-mail', null, 1, '100', 'N', 'N', 'N', 'N', 'N', 'S', 'N', 'N', 'S', null, 5, null, 'email', null, 'Contato', 1, null, null, null, 'ReceitaWS.email', null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'DSNUMEROLOGRADOUROCOMERCIAL', null, 'Número', null, 1, '6', 'N', 'N', 'S', 'N', 'N', 'S', 'N', 'N', 'S', null, 6, null, null, null, 'End. Com.', 1, null, null, null, 'ReceitaWS.numero', null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'DSCOMPLEMENTOCOMERCIAL', null, 'Compl.', null, 1, '30', 'N', 'N', 'N', 'N', 'N', 'S', 'N', 'N', 'S', null, 7, null, null, null, 'End. Com.', 1, null, null, null, 'ReceitaWS.complemento', null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'cdTipoNovoCliente', null, 'Tipo NC', null, 6, '1:Indústria|2:Comércio|3:Serviço', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'S', null, 16, null, null, null, 'Config.', 1, null, null, null, null, null, null, null, null, null, null);
insert into TBWMWCAMPO( cdsistema, nmentidade, nmcampo, nmentidaderelacionamento, dslabel, dscampo, cddominio, dsopcoesdominio, flchaveprimaria, fldescricao, flobrigatorio, flaudita, fldinamico, flvisivelcad, flvisivellist, flvisivelfiltro, fleditavel, nucolspan, nuordem, vlpadrao, dsformato, dsmascara, dssecao, nurowspan, dscolunascep, dscamporelacionado, vlminimo, dstagjson, dsfiltrorelacionado, nmentidadeorigem, flvalorinicial, dtalteracao, hralteracao, flcontabilizaacesso) VALUES ( 1, 'TBLVWNOVOCLIENTE', 'DSOBSERVACAO', null, 'Obs', null, 1, '255', 'N', 'N', 'N', 'N', 'S', 'S', 'N', 'N', 'S', null, 21, null, null, null, 'Obs', 10, null, null, null, null, null, null, null, null, null, null);

UPDATE TBWMWCAMPO SET NUORDEM = '1' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'nmRazaoSocial';
UPDATE TBWMWCAMPO SET NUORDEM = '2' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'NMFANTASIA';
UPDATE TBWMWCAMPO SET NUORDEM = '3' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'NUIERG';
UPDATE TBWMWCAMPO SET NUORDEM = '4' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'nuFone';
UPDATE TBWMWCAMPO SET NUORDEM = '5' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'DSCEPCOMERCIAL';
UPDATE TBWMWCAMPO SET NUORDEM = '6' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'CDUFCOMERCIAL';
UPDATE TBWMWCAMPO SET NUORDEM = '7' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'DSCIDADECOMERCIAL';
UPDATE TBWMWCAMPO SET NUORDEM = '8' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'DSBAIRROCOMERCIAL';
UPDATE TBWMWCAMPO SET NUORDEM = '9' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'DSLOGRADOUROCOMERCIAL';
UPDATE TBWMWCAMPO SET NUORDEM = '10' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'DSNUMEROLOGRADOUROCOMERCIAL';
UPDATE TBWMWCAMPO SET NUORDEM = '11' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'DSCOMPLEMENTOCOMERCIAL';
UPDATE TBWMWCAMPO SET NUORDEM = '12' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'NMCONTATO';
UPDATE TBWMWCAMPO SET NUORDEM = '13' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'DSCARGO';
UPDATE TBWMWCAMPO SET NUORDEM = '14' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'NUCELULAR';
UPDATE TBWMWCAMPO SET NUORDEM = '15' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'DTNASCIMENTO';
UPDATE TBWMWCAMPO SET NUORDEM = '16' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'DSEMAIL';
UPDATE TBWMWCAMPO SET NUORDEM = '17' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'cdTipoNovoCliente';
UPDATE TBWMWCAMPO SET NUORDEM = '18' WHERE NMENTIDADE = 'TBLVWNOVOCLIENTE' AND NMCAMPO = 'DSOBSERVACAO';

UPDATE TBWMWCAMPO SET DSTAGJSON='ReceitaWS.nome' WHERE NMENTIDADE='TBLVWNOVOCLIENTE' AND UPPER(NMCAMPO)='NMRAZAOSOCIAL';
UPDATE TBWMWCAMPO SET DSTAGJSON='ReceitaWS.telefone' WHERE NMENTIDADE='TBLVWNOVOCLIENTE' AND UPPER(NMCAMPO)='NUFONE';
UPDATE TBWMWCAMPO SET DSTAGJSON='ReceitaWS.logradouro' WHERE NMENTIDADE='TBLVWNOVOCLIENTE' AND UPPER(NMCAMPO)='DSLOGRADOUROCOMERCIAL';
UPDATE TBWMWCAMPO SET DSTAGJSON='ReceitaWS.uf' WHERE NMENTIDADE='TBLVWNOVOCLIENTE' AND UPPER(NMCAMPO)='CDUFCOMERCIAL';
UPDATE TBWMWCAMPO SET DSTAGJSON='ReceitaWS.cep' WHERE NMENTIDADE='TBLVWNOVOCLIENTE' AND UPPER(NMCAMPO)='DSCEPCOMERCIAL';
UPDATE TBWMWCAMPO SET DSTAGJSON='ReceitaWS.numero' WHERE NMENTIDADE='TBLVWNOVOCLIENTE' AND UPPER(NMCAMPO)='DSNUMEROLOGRADOUROCOMERCIAL';
UPDATE TBWMWCAMPO SET DSTAGJSON='ReceitaWS.complemento' WHERE NMENTIDADE='TBLVWNOVOCLIENTE' AND UPPER(NMCAMPO)='DSCOMPLEMENTOCOMERCIAL';
UPDATE TBWMWCAMPO SET DSTAGJSON='ReceitaWS.bairro' WHERE NMENTIDADE='TBLVWNOVOCLIENTE' AND UPPER(NMCAMPO)='DSBAIRROCOMERCIAL';
UPDATE TBWMWCAMPO SET DSTAGJSON='ReceitaWS.municipio' WHERE NMENTIDADE='TBLVWNOVOCLIENTE' AND UPPER(NMCAMPO)='DSCIDADECOMERCIAL';
UPDATE TBWMWCAMPO SET DSTAGJSON='ReceitaWS.fantasia' WHERE NMENTIDADE='TBLVWNOVOCLIENTE' AND UPPER(NMCAMPO)='NMFANTASIA';
UPDATE TBWMWCAMPO SET DSTAGJSON='ReceitaWS.email' WHERE NMENTIDADE='TBLVWNOVOCLIENTE' AND UPPER(NMCAMPO)='DSEMAIL';
UPDATE TBWMWCAMPO SET DSTAGJSON='ReceitaWS.email' WHERE NMENTIDADE='TBLVWNOVOCLIENTE' AND UPPER(NMCAMPO)='DSEMAILNFE';

CREATE TABLE tmpintpedido AS
SELECT *
FROM tblvwpedido
WHERE 1 = 0;

CREATE TABLE tmpintitempedido AS
SELECT *
FROM tblvwitempedido
WHERE 1 = 0;

CREATE TABLE tmpintnovocliente AS
SELECT *
FROM tblvwnovocliente
WHERE 1 = 0;

CREATE TABLE tmpintempresa AS
SELECT *
FROM tblvwempresa
WHERE 1 = 0;

CREATE TABLE tmpintrepresentante AS
SELECT *
FROM tblvwrepresentante
WHERE 1 = 0;

CREATE TABLE tmpintrepresentanteemp AS
SELECT *
FROM tblvwrepresentanteemp
WHERE 1 = 0;

CREATE TABLE tmpintcondicaopagamento AS
SELECT *
FROM tblvwcondicaopagamento
WHERE 1 = 0;

CREATE TABLE tmpinttipopagamento AS
SELECT *
FROM tblvwtipopagamento
WHERE 1 = 0;

CREATE TABLE tmpinttipopedido AS
SELECT *
FROM tblvwtipopedido
WHERE 1 = 0;

CREATE TABLE tmpintestoque AS
SELECT *
FROM tblvwestoque
WHERE 1 = 0;

CREATE TABLE tmpintproduto AS
SELECT *
FROM tblvwproduto
WHERE 1 = 0;

CREATE TABLE tmpinttabelapreco AS
SELECT *
FROM tblvwtabelapreco
WHERE 1 = 0;

CREATE TABLE tmpintitemtabelapreco AS
SELECT *
FROM tblvwitemtabelapreco
WHERE 1 = 0;

CREATE TABLE tmpintfichafinanceira AS
SELECT *
FROM tblvwfichafinanceira
WHERE 1 = 0;

CREATE TABLE tmpinttitulofinanceiro AS
SELECT *
FROM tblvwtitulofinanceiro
WHERE 1 = 0;

CREATE TABLE tmpintcliente AS
SELECT *
FROM tblvwcliente
WHERE 1 = 0;

CREATE TABLE tmpintgrupoproduto1 AS
SELECT *
FROM tblvwgrupoproduto1
WHERE 1 = 0;

CREATE OR REPLACE FUNCTION importadadosparaerp(_nmtabela character varying, _vlchave character varying, _cdempresa character varying, _cdrepresentante character varying)
 RETURNS character varying
 LANGUAGE plpgsql
AS $function$

DECLARE
    RETORNO CHARACTER VARYING(4000);

BEGIN	
		
 	IF UPPER(_NMTABELA) LIKE '%PEDIDO%' THEN
	BEGIN	
		SELECT enviapedidows (_CDEMPRESA, _CDREPRESENTANTE) INTO RETORNO;
	END;
	END IF;

    IF UPPER(_NMTABELA) LIKE '%NOVOCLIENTE%' THEN
	BEGIN	
		SELECT enviaclientews (_cdempresa, _CDREPRESENTANTE) INTO RETORNO;
	END;
   	END IF;
   
    RETURN 'OK - EXPORTADADOS';
   
END;
$function$
;

CREATE OR REPLACE FUNCTION enviaclientews(p_cdempresa character varying, p_cdrepresentante character varying)
 RETURNS integer
 LANGUAGE plpgsql
AS $function$

DECLARE
    cli tblvwnovocliente%ROWTYPE;
    controle_erp CHAR := 'A'::bpchar;
    v_contador INTEGER := 0;
BEGIN
    FOR cli IN (
        SELECT 
			*
        FROM tblvwnovocliente
        WHERE flcontroleerp IS NULL
    ) LOOP
        
		INSERT INTO tmpintnovocliente (
    /*1*/ cdempresa, cdrepresentante, florigemnovocliente, cdnovocliente, nucnpj,
    /*2*/ dtcadastro, cdstatusnovocliente, nmrazaosocial, nufone, cdtiponovocliente,
    /*3*/ dscepcomercial, dslogradourocomercial, dstipologradourocomercial, dsnumerologradourocomercial, dscomplementocomercial,
    /*4*/ dsbairrocomercial, dscidadecomercial, cdufcomercial, fltipopessoa, fltipofrequencia,
    /*5*/ flsemanames, nudiasemana, hragenda, dtbase, flcontroleerp,
    /*6*/ dsmensagemcontroleerp, flcontrolewmw, dsmensagemcontrolewmw, flemailenviado, cdclienteoriginal,
    /*7*/ dtenvioerp, hrenvioerp, cdlatitude, cdlongitude, flcadcoordenadaliberado,
    /*8*/ dsemail, floculto, flemanalise, hrcadastro, nmfantasia,
    /*9*/ cdclienteerp, cdusuariocriacao, flativo, fltipoalteracao,
    /*10*/ dtalteracao, hralteracao, nmcontato
			)
        VALUES (
            /*1*/ cli.cdempresa, cli.cdrepresentante, cli.florigemnovocliente, cli.cdnovocliente, cli.nucnpj,
            /*2*/ cli.dtcadastro, cli.cdstatusnovocliente, cli.nmrazaosocial, cli.nufone, cli.cdtiponovocliente,
            /*3*/ cli.dscepcomercial, cli.dslogradourocomercial, cli.dstipologradourocomercial, cli.dsnumerologradourocomercial, cli.dscomplementocomercial,
            /*4*/ cli.dsbairrocomercial, cli.dscidadecomercial, cli.cdufcomercial, cli.fltipopessoa, cli.fltipofrequencia,
            /*5*/ cli.flsemanames, cli.nudiasemana, cli.hragenda, cli.dtbase, cli.flcontroleerp,
            /*6*/ cli.dsmensagemcontroleerp, cli.flcontrolewmw, cli.dsmensagemcontrolewmw, cli.flemailenviado, cli.cdclienteoriginal,
            /*7*/ cli.dtenvioerp, cli.hrenvioerp, cli.cdlatitude, cli.cdlongitude, cli.flcadcoordenadaliberado,
            /*8*/ cli.dsemail, cli.floculto, cli.flemanalise, cli.hrcadastro, cli.nmfantasia,
            /*9*/ cli.cdclienteerp, cli.cdusuariocriacao, cli.flativo, cli.fltipoalteracao,
            /*10*/ cli.dtalteracao, cli.hralteracao, cli.nmcontato
			) ON CONFLICT DO NOTHING;

        UPDATE tblvwnovocliente
        SET flcontroleerp = 'E',
            dsmensagemcontroleerp = 'Enviado para webservice',
            flcontrolewmw = 'S',
            dsmensagemcontrolewmw = 'Enviado para webservice',
            dtenvioerp = NOW(),
            hrenvioerp = TO_CHAR(NOW(), 'HH12:MI')
        WHERE cdempresa = cli.cdempresa
          AND cdrepresentante = cli.cdrepresentante
          AND florigemnovocliente = cli.florigemnovocliente
          AND cdnovocliente = cli.cdnovocliente;

        v_contador := v_contador + 1;

    END LOOP;

    RETURN v_contador;
END;
$function$
;

CREATE OR REPLACE FUNCTION enviapedidows(p_cdempresa character varying, p_cdrepresentante character varying)
 RETURNS void
 LANGUAGE plpgsql
AS $function$

declare 
    ped tblvwpedido%rowtype;
    ite tblvwitempedido%rowtype;
    controle_erp char := 'A'::bpchar;
begin
    for ped in (
        select *
        from tblvwpedido pedido
        where flcontroleerp is null
          and cdstatuspedido = '2'
        )loop

         insert into tmpintpedido (
                /*01*/ cdempresa,cdrepresentante,florigempedido,nupedido,cdcliente,cdcondicaopagamento,
                /*03*/ cdtabelapreco,cdtransportadora,cdtiposervicofrete,cdtipopagamento,cdtipopedido,dtemissao,
                /*04*/ hremissao,dtentrega,nuordemcompracliente,vlfrete,cdstatuspedido,vlpctdesconto,
                /*05*/ vlpctdescprogressivo,vldesconto,vltotalpedido,vlbonificacaopedido,vltrocarecolher,vltrocaentregar,
                /*06*/ qtpeso,dsmensagementrega,dsobservacao,dsobsorcamento,dsobservacaonotafiscal,dscondicaopagamentosemcadastro,
                /*07*/ vltotalitens,vlrentabilidade,vlipi,vlipifrete,qtdiaspagamento,nusuframa,
                /*08*/ nurotaentrega,nuloteentrega,flcondicaopgtoliberadosenha,flprecoliberadosenha,flclienteatrasadoliberadosenha,flcreditoclienteliberadosenha,
                /*09*/ fltipopedidoliberadosenha,flpedidonovocliente,nupedidorelacionado,florigempedidorelacionado,dtrecebimento,hrrecebimento,
                /*10*/ dtenvioerp,hrenvioerp,cdsupervisor,nuversaosistemaorigem,flimpresso,flemailenviado,
                /*11*/ flcontroleerp,dsmensagemcontroleerp,flcontrolewmw,dsmensagemcontrolewmw,vlverbapedido,vlverbapedidopositivo,
                /*12*/ flpossuidiferenca,hrfimemissao,cdrotaentrega,cdtipoentrega,cdsetor,cdorigemsetor,
                /*13*/ cdareavenda,dtfechamento,qtpontospedido,hrfechamento,dttransmissaopda,hrtransmissaopda,
                /*14*/ cdoportunidade,cdusuarioemissao,cdcontato,cdmotivocancelamento,nmcontatocancelamento,nufonecontatocancelamento,
                /*15*/ vlcotacaodolar,dsdestino,vlpctdescitem,nupedidoreduzido,cdmeiocomunicacao,vltotalbrutoitens,
                /*16*/ flbloqueadoedicao,cdsegmento,fleditando,flmaxvendaliberadosenha,cdusuarioliberacao,dsmotivodesconto,
                /*17*/ cdcondicaocomercial,flpedidoreaberto,vlpctfreterepresentante,vlfreterepresentante,vlfretecliente,nupedidosugestao,
                /*18*/ florigempedidosugestao,nupedidorelbonificacao,vltotalpedidoestoquepositivo,cdcentrocusto,cditemconta,cdclassevalor,
                /*19*/ flemailstatusalteradoenviado,dsurlenvioservidor,flpedidoreplicado,nupedidooriginal,flsugestaovendaliberadosenha,cdcargapedido,
                /*20*/ flabaixorentabilidademinima,flemailerrointegracaoenviado,flenviaemail,cdatendimento,vlpctmargemmin,fletapaverba,
                /*21*/ flcalculaverbagruposaldo,vlpctcomissao,flpagamentoavista,flgeranfe,nukminicial,nukmfinal,
                /*22*/ hrinicialindicado,hrfinalindicado,flnfeimpressa,fletapaverbaanterior,flliberadoentrega,cdenderecocliente,
                /*23*/ flgeraboleto,flboletoimpresso,flsituacaoreservaest,nupedidocomplementado,nupedidoreltroca,flkeyaccount,
                /*24*/ flemergencial,cdmotivoemergencia,dsobsemergencia,cdusuarioautorizacao,nupedidorelemergencial,flpendente,
                /*25*/ cdmotivoacrescimocusto,vlpctacrescimocusto,cdcotacao,flgeracreditofrete,vltotalcreditofrete,flgeracreditocondicao,
                /*26*/ vltotalcreditocondicao,flvisivel,vltotalbaseitens,flitempendente,vlpctdescprogressivomix,cdverbautilizacao,
                /*27*/ vlvolumepedido,vlpctdesccliente,vlpctdescontocondicao,vlpctdescfrete,cdtipofrete,cdcupom,
                /*28*/ vlpctdescontocupom,vldescontocupom,vltotaltrocapedido,dsemailsdestino,dtentregaliberada,dtcarregamento,
                /*29*/ flcotacondpagto,cdusuariolibentrega,cdclienteentrega,flrestrito,nupedcomprelacionado,flminverbaliberado,
                /*30*/ cdcondnegociacao,cdunidade,dtconsignacao,vlpedidooriginal,vltotaldevolucoes,flconsignacaoimpressa,
                /*31*/ flnfecontimpressa,cdpedidosagrupados,cdregiao,cdentrega,cdtransportadoraaux,flemailliberacaoenviado,
                /*32*/ flrentabilidadeliberada,flpromissoriaimpressa,vltotalmargem,cdatendimentoatividade,flsaldoboniliberadosenha,vlpctdesc2,
                /*33*/ vlpctdesc3,dhconfirmacaoestoque,nucnpjtransportadora,cdstatusorcamento,flmodoestoque,dtpagamento,
                /*34*/ flpedidoerpvigente,flvendaassistida,cdtributacaocliente,flpedidodiferenca,nupedidodiferenca,vlpctindicefincondpagto,
                /*35*/ vlpctdescquantidadepeso,dsjustificativacancelamento,fldescontoliberadosenha,flprocessandonfetxt,flaguardapedidocomplementar,dtultimorecalculovalores,
                /*36*/ vlpctvpc,nuloteprotocolo,flenviadoprotocolo,vltotalnotacredito,vldescontoindicefinancliente,dsmotivocanclimcredito,
                /*37*/ flpendentelimcred,cdusuariocanclimcred,cdusuarioliberacaolimcred,vlpctdescontoautoefetivo,vldescontototalautodesc,vltotaldescontoauto,
                /*38*/ flcontroleemissaonfe,qtencomenda,vltotalencomenda,cdcomissaopedidorep,flvalorminparcelaliberadosenha,vlseguropedido,
                /*39*/ dsobservacaocliente,vlpcttotalmargem,qtdiascpgtolibsenha,vltotalpedidoliberado,vlpctdeschistoricovendas,vlverbafornecedor,
                /*40*/ vlverbagrupo,flcalculaseguro,dsmotivobonificacao,cdlocal,cdfreteconfig,flativo,
                /*41*/ fltipoalteracao,dtalteracao,hralteracao,cdlocalestoque,nupedidoreferencia,vltotalpontuacaobase,
                /*42*/ vltotalpontuacaorealizado
        )
		values (
		        /*01*/ ped.cdempresa,ped.cdrepresentante,ped.florigempedido,ped.nupedido,ped.cdcliente,ped.cdcondicaopagamento,
		        /*03*/ ped.cdtabelapreco,ped.cdtransportadora,ped.cdtiposervicofrete,ped.cdtipopagamento,ped.cdtipopedido,ped.dtemissao,
		        /*04*/ ped.hremissao,ped.dtentrega,ped.nuordemcompracliente,ped.vlfrete,ped.cdstatuspedido,ped.vlpctdesconto,
		        /*05*/ ped.vlpctdescprogressivo,ped.vldesconto,ped.vltotalpedido,ped.vlbonificacaopedido,ped.vltrocarecolher,ped.vltrocaentregar,
		        /*06*/ ped.qtpeso,ped.dsmensagementrega,ped.dsobservacao,COALESCE(ped.dsobsorcamento,ped.dsobservacao),ped.dsobservacaonotafiscal,ped.dscondicaopagamentosemcadastro,
		        /*07*/ ped.vltotalitens,ped.vlrentabilidade,ped.vlipi,ped.vlipifrete,ped.qtdiaspagamento,ped.nusuframa,
		        /*08*/ ped.nurotaentrega,ped.nuloteentrega,ped.flcondicaopgtoliberadosenha,ped.flprecoliberadosenha,ped.flclienteatrasadoliberadosenha,ped.flcreditoclienteliberadosenha,
		        /*09*/ ped.fltipopedidoliberadosenha,CASE WHEN EXISTS (SELECT 1 FROM TBLVWNOVOCLIENTE WHERE nucnpj = PED.cdcliente) THEN 'S' ELSE 'N' END,ped.nupedidorelacionado,ped.florigempedidorelacionado,ped.dtrecebimento,ped.hrrecebimento,
		        /*10*/ ped.dtenvioerp,ped.hrenvioerp,ped.cdsupervisor,ped.nuversaosistemaorigem,ped.flimpresso,ped.flemailenviado,
		        /*11*/ controle_erp,ped.dsmensagemcontroleerp,ped.flcontrolewmw,ped.dsmensagemcontrolewmw,ped.vlverbapedido,ped.vlverbapedidopositivo,
		        /*12*/ ped.flpossuidiferenca,ped.hrfimemissao,ped.cdrotaentrega,ped.cdtipoentrega,ped.cdsetor,ped.cdorigemsetor,
		        /*13*/ ped.cdareavenda,ped.dtfechamento,ped.qtpontospedido,ped.hrfechamento,ped.dttransmissaopda,ped.hrtransmissaopda,
		        /*14*/ ped.cdoportunidade,ped.cdusuarioemissao,ped.cdcontato,ped.cdmotivocancelamento,ped.nmcontatocancelamento,ped.nufonecontatocancelamento,
		        /*15*/ ped.vlcotacaodolar,ped.dsdestino,ped.vlpctdescitem,ped.nupedidoreduzido,ped.cdmeiocomunicacao,ped.vltotalbrutoitens,
		        /*16*/ ped.flbloqueadoedicao,ped.cdsegmento,ped.fleditando,ped.flmaxvendaliberadosenha,ped.cdusuarioliberacao,ped.dsmotivodesconto,
		        /*17*/ ped.cdcondicaocomercial,ped.flpedidoreaberto,ped.vlpctfreterepresentante,ped.vlfreterepresentante,ped.vlfretecliente,ped.nupedidosugestao,
		        /*18*/ ped.florigempedidosugestao,ped.nupedidorelbonificacao,ped.vltotalpedidoestoquepositivo,ped.cdcentrocusto,ped.cditemconta,ped.cdclassevalor,
		        /*19*/ ped.flemailstatusalteradoenviado,ped.dsurlenvioservidor,ped.flpedidoreplicado,ped.nupedidooriginal,ped.flsugestaovendaliberadosenha,ped.cdcargapedido,
		        /*20*/ ped.flabaixorentabilidademinima,ped.flemailerrointegracaoenviado,ped.flenviaemail,ped.cdatendimento,ped.vlpctmargemmin,ped.fletapaverba,
		        /*21*/ ped.flcalculaverbagruposaldo,ped.vlpctcomissao,ped.flpagamentoavista,ped.flgeranfe,ped.nukminicial,ped.nukmfinal,
		        /*22*/ ped.hrinicialindicado,ped.hrfinalindicado,ped.flnfeimpressa,ped.fletapaverbaanterior,ped.flliberadoentrega,ped.cdenderecocliente,
		        /*23*/ ped.flgeraboleto,ped.flboletoimpresso,ped.flsituacaoreservaest,ped.nupedidocomplementado,ped.nupedidoreltroca,ped.flkeyaccount,
		        /*24*/ ped.flemergencial,ped.cdmotivoemergencia,ped.dsobsemergencia,ped.cdusuarioautorizacao,ped.nupedidorelemergencial,ped.flpendente,
		        /*25*/ ped.cdmotivoacrescimocusto,ped.vlpctacrescimocusto,ped.cdcotacao,ped.flgeracreditofrete,ped.vltotalcreditofrete,ped.flgeracreditocondicao,
		        /*26*/ ped.vltotalcreditocondicao,ped.flvisivel,ped.vltotalbaseitens,ped.flitempendente,ped.vlpctdescprogressivomix,ped.cdverbautilizacao,
		        /*27*/ ped.vlvolumepedido,ped.vlpctdesccliente,ped.vlpctdescontocondicao,ped.vlpctdescfrete,ped.cdtipofrete,ped.cdcupom,
		        /*28*/ ped.vlpctdescontocupom,ped.vldescontocupom,ped.vltotaltrocapedido,ped.dsemailsdestino,ped.dtentregaliberada,ped.dtcarregamento,
		        /*29*/ ped.flcotacondpagto,ped.cdusuariolibentrega,ped.cdclienteentrega,ped.flrestrito,ped.nupedcomprelacionado,ped.flminverbaliberado,
		        /*30*/ ped.cdcondnegociacao,ped.cdunidade,ped.dtconsignacao,ped.vlpedidooriginal,ped.vltotaldevolucoes,ped.flconsignacaoimpressa,
		        /*31*/ ped.flnfecontimpressa,ped.cdpedidosagrupados,ped.cdregiao,ped.cdentrega,ped.cdtransportadoraaux,ped.flemailliberacaoenviado,
		        /*32*/ ped.flrentabilidadeliberada,ped.flpromissoriaimpressa,ped.vltotalmargem,ped.cdatendimentoatividade,ped.flsaldoboniliberadosenha,ped.vlpctdesc2,
		        /*33*/ ped.vlpctdesc3,ped.dhconfirmacaoestoque,ped.nucnpjtransportadora,ped.cdstatusorcamento,ped.flmodoestoque,ped.dtpagamento,
		        /*34*/ ped.flpedidoerpvigente,ped.flvendaassistida,ped.cdtributacaocliente,ped.flpedidodiferenca,ped.nupedidodiferenca,ped.vlpctindicefincondpagto,
		        /*35*/ ped.vlpctdescquantidadepeso,ped.dsjustificativacancelamento,ped.fldescontoliberadosenha,ped.flprocessandonfetxt,ped.flaguardapedidocomplementar,ped.dtultimorecalculovalores,
		        /*36*/ ped.vlpctvpc,ped.nuloteprotocolo,ped.flenviadoprotocolo,ped.vltotalnotacredito,ped.vldescontoindicefinancliente,ped.dsmotivocanclimcredito,
		        /*37*/ ped.flpendentelimcred,ped.cdusuariocanclimcred,ped.cdusuarioliberacaolimcred,ped.vlpctdescontoautoefetivo,ped.vldescontototalautodesc,ped.vltotaldescontoauto,
		        /*38*/ ped.flcontroleemissaonfe,ped.qtencomenda,ped.vltotalencomenda,ped.cdcomissaopedidorep,ped.flvalorminparcelaliberadosenha,ped.vlseguropedido,
		        /*39*/ ped.dsobservacaocliente,ped.vlpcttotalmargem,ped.qtdiascpgtolibsenha,ped.vltotalpedidoliberado,ped.vlpctdeschistoricovendas,ped.vlverbafornecedor,
		        /*40*/ ped.vlverbagrupo,ped.flcalculaseguro,ped.dsmotivobonificacao,ped.cdlocal,ped.cdfreteconfig,ped.flativo,
		        /*41*/ ped.fltipoalteracao,ped.dtalteracao,ped.hralteracao,ped.cdlocalestoque,ped.nupedidoreferencia,ped.vltotalpontuacaobase,
		        /*42*/ ped.vltotalpontuacaorealizado
               ) on conflict do nothing;
	
        for ite in (
            select *
            from tblvwitempedido
            where (cdempresa, cdrepresentante, florigempedido, nupedido) = 
                  (ped.cdempresa, ped.cdrepresentante, ped.florigempedido, ped.nupedido)
        ) loop
			insert into tmpintitempedido (
			        /*01*/ cdempresa,cdrepresentante,florigempedido,nupedido,cdproduto,fltipoitempedido,
			        /*02*/ nuseqproduto,nuseqitempedido,cdtabelapreco,cditemgrade1,cditemgrade2,cditemgrade3,
			        /*03*/ qtitemfisico,qtitemfaturamento,vlitempedido,vlbaseitemtabelapreco,vlbaseitempedido,vlbaseflex,
			        /*04*/ vltotalitempedido,vlpctdesconto,vlpctacrescimo,vlpctdescontofob,vlpctipiitem,vlipiitem,
			        /*05*/ vlrentabilidade,nulistatabelapreco,qttrocaespecial,vlunidadepadrao,vlbaseembalagemelementar,flcontroleerp,
			        /*06*/ dsmensagemcontroleerp,dsmensagemcontrolewmw,cdgrupobonificacao,cdlinha,vlverbaitem,cdcontacorrente,
			        /*07*/ cdkit,cdloteproduto,vlitempedidofrete,qtpontositem,vlpctipiitemfrete,vlipiitemfrete,
			        /*08*/ cdmotivotroca,cdunidade,dsobsmotivotroca,vlst,vlverbaitempositivo,qtpeso,
			        /*09*/ dsobservacao,vlpctcomissao,flprecoliberadosenha,vlreducaooptantesimples,vltotalbrutoitempedido,florigemitempedido,
			        /*10*/ flvendidoqtminima,cdprazopagtopreco,qtitempedidounelementar,vlitempedidounelementar,flmetagrupoprodliberadosenha,vlfrete,
			        /*12*/ flliberadovendarelacionada,qtitemestoquepositivo,vldescontoccp,vlpctdescontoccp,nupromocao,vlfinalpromo,
			        /*13*/ vldescontopromo,vlpctdescontopromo,vlpctfaixadescqtd,vlfecop,vlicms,vlpis,
			        /*14*/ vlcofins,vldespesaacessoria,vldesconto,vlpctdesconto2,vldesconto2,vlpctdesconto3,
			        /*15*/ vldesconto3,cdsugestaovenda,vltotalitempedidofrete,vlpctdescontocanal,cdtributacaoconfig,dtiniciopromocao,
			        /*16*/ cdverbagrupo,vltotalstitem,vltotalipiitem,vltotalicmsitem,vltotalpisitem,vltotalcofinsitem,
			        /*17*/ vlseguroitempedido,cdusuarioliberacao,flestoqueliberado,flquantidadeliberada,cdcondicaocomercial,vlcreditofrete,
			        /*18*/ vlcreditocondicao,flpendente,vlpctdescprogressivomix,qtitemfisicodiferenca,vlvolumeitem,vlpctdesccliente,
			        /*19*/ vlpctdescontocondicao,vlpctdescfrete,cdcupom,vlpctdescontocupom,vldescontocupom,vlpctverbarateio,
			        /*20*/ vlpctmargemproduto,cdverba,vlpctcontratocli,fldecisaocalculo,vlitempedidostreverso,vlpctdescontostreverso,
			        /*21*/ flrestrito,flpromocao,flvalortabelaalterado,vlitemipi,vlbaseitemipi,qtdcreditodesc,
			        /*22*/ fltipocadastroitem,cdprodutocreditodesc,qtitemdesejado,vlindicegrupoprod,vltotalmargemitem,flsugvendaperson,
			        /*23*/ vltotalprecocusto,vltotalbasestitem,vltotalbaseicmsitem,qtestoquecliente,nudiasprazoentrega,nuconversaounidadepu,
			        /*24*/ vlindicefinanceiropu,fldividemultiplicapu,vlpctacrescimocondicao,vlpctacresccliente,vlpctacrescimoicms,vlpctdescontoicms,
			        /*25*/ vlpctdescalcada,vlaltura,vllargura,vlcomprimento,vlposvinco1,vlposvinco2,
			        /*26*/ vlposvinco3,vlposvinco4,vlposvinco5,vlposvinco6,vlposvinco7,vlposvinco8,
			        /*27*/ vlposvinco9,vlposvinco10,cdlocal,florigemescolhaitempedido,cdprodutoorigem,vlitempedidoorigem,
			        /*28*/ dtinclusaoitempedido,hrinclusaoitempedido,vlpctmargemagregada,vlindiceclientegrupoprod,vltotalfecopitem,vlpctdescprodutorestrito,
			        /*29*/ vlvpc,vlindicevolume,vlretornoproduto,vlpctdesctipopedido,vldesctipopedido,cdlocalestoque,
			        /*30*/ cdgrupodescprod,cdgrupodesccli,vlpctdescontoauto,vlpctdescontoefetivo,vldescontoauto,vltotaldescontoauto,
			        /*31*/ vlpctdescontoautoefetivo,vlprecoefetivounitario,vlprecoefetivounitariodesc,vlefetivototalitem,vlefetivototalitemdesc,vldescontototalautodesc,
			        /*32*/ vlbaseinterpolacaoproduto,qtencomenda,vltotalencomenda,vldesctipopedidoencomenda,dtentrega,cdcomissaopedidorep,
			        /*33*/ vldescontocondicao,qtestoqueprevisto,dtestoqueprevisto,vlitemfretetributacao,vltotalitemfretetributacao,qtfaturada,
			        /*34*/ vlpctdesccondpagto,cdpacote,vlpcttotalmargemitem,vlbasemargemrentab,vlpctdescpedido,vlverbagrupoitem,
			        /*35*/ vlbaseantecipacao,vlindicecondicaopagto,flativo,fltipoalteracao,dtalteracao,hralteracao,
			        /*36*/ vlpontuacaobaseitem,vlpontuacaorealizadoitem
            )
			values (
			        /*01*/ ite.cdempresa,ite.cdrepresentante,ite.florigempedido,ite.nupedido,ite.cdproduto,ite.fltipoitempedido,
			        /*02*/ ite.nuseqproduto,ite.nuseqitempedido,ite.cdtabelapreco,ite.cditemgrade1,ite.cditemgrade2,ite.cditemgrade3,
			        /*03*/ ite.qtitemfisico,ite.qtitemfaturamento,ite.vlitempedido,ite.vlbaseitemtabelapreco,ite.vlbaseitempedido,ite.vlbaseflex,
			        /*04*/ ite.vltotalitempedido,ite.vlpctdesconto,ite.vlpctacrescimo,ite.vlpctdescontofob,ite.vlpctipiitem,ite.vlipiitem,
			        /*05*/ ite.vlrentabilidade,ite.nulistatabelapreco,ite.qttrocaespecial,ite.vlunidadepadrao,ite.vlbaseembalagemelementar,controle_erp,
			        /*06*/ ite.dsmensagemcontroleerp,ite.dsmensagemcontrolewmw,ite.cdgrupobonificacao,ite.cdlinha,ite.vlverbaitem,ite.cdcontacorrente,
			        /*07*/ ite.cdkit,ite.cdloteproduto,ite.vlitempedidofrete,ite.qtpontositem,ite.vlpctipiitemfrete,ite.vlipiitemfrete,
			        /*08*/ ite.cdmotivotroca,ite.cdunidade,ite.dsobsmotivotroca,ite.vlst,ite.vlverbaitempositivo,ite.qtpeso,
			        /*09*/ ite.dsobservacao,ite.vlpctcomissao,ite.flprecoliberadosenha,ite.vlreducaooptantesimples,ite.vltotalbrutoitempedido,ite.florigemitempedido,
			        /*10*/ ite.flvendidoqtminima,ite.cdprazopagtopreco,ite.qtitempedidounelementar,ite.vlitempedidounelementar,ite.flmetagrupoprodliberadosenha,ite.vlfrete,
			        /*12*/ ite.flliberadovendarelacionada,ite.qtitemestoquepositivo,ite.vldescontoccp,ite.vlpctdescontoccp,ite.nupromocao,ite.vlfinalpromo,
			        /*13*/ ite.vldescontopromo,ite.vlpctdescontopromo,ite.vlpctfaixadescqtd,ite.vlfecop,ite.vlicms,ite.vlpis,
			        /*14*/ ite.vlcofins,ite.vldespesaacessoria,ite.vldesconto,ite.vlpctdesconto2,ite.vldesconto2,ite.vlpctdesconto3,
			        /*15*/ ite.vldesconto3,ite.cdsugestaovenda,ite.vltotalitempedidofrete,ite.vlpctdescontocanal,ite.cdtributacaoconfig,ite.dtiniciopromocao,
			        /*16*/ ite.cdverbagrupo,ite.vltotalstitem,ite.vltotalipiitem,ite.vltotalicmsitem,ite.vltotalpisitem,ite.vltotalcofinsitem,
			        /*17*/ ite.vlseguroitempedido,ite.cdusuarioliberacao,ite.flestoqueliberado,ite.flquantidadeliberada,ite.cdcondicaocomercial,ite.vlcreditofrete,
			        /*18*/ ite.vlcreditocondicao,ite.flpendente,ite.vlpctdescprogressivomix,ite.qtitemfisicodiferenca,ite.vlvolumeitem,ite.vlpctdesccliente,
			        /*19*/ ite.vlpctdescontocondicao,ite.vlpctdescfrete,ite.cdcupom,ite.vlpctdescontocupom,ite.vldescontocupom,ite.vlpctverbarateio,
			        /*20*/ ite.vlpctmargemproduto,ite.cdverba,ite.vlpctcontratocli,ite.fldecisaocalculo,ite.vlitempedidostreverso,ite.vlpctdescontostreverso,
			        /*21*/ ite.flrestrito,ite.flpromocao,ite.flvalortabelaalterado,ite.vlitemipi,ite.vlbaseitemipi,ite.qtdcreditodesc,
			        /*22*/ ite.fltipocadastroitem,ite.cdprodutocreditodesc,ite.qtitemdesejado,ite.vlindicegrupoprod,ite.vltotalmargemitem,ite.flsugvendaperson,
			        /*23*/ ite.vltotalprecocusto,ite.vltotalbasestitem,ite.vltotalbaseicmsitem,ite.qtestoquecliente,ite.nudiasprazoentrega,ite.nuconversaounidadepu,
			        /*24*/ ite.vlindicefinanceiropu,ite.fldividemultiplicapu,ite.vlpctacrescimocondicao,ite.vlpctacresccliente,ite.vlpctacrescimoicms,ite.vlpctdescontoicms,
			        /*25*/ ite.vlpctdescalcada,ite.vlaltura,ite.vllargura,ite.vlcomprimento,ite.vlposvinco1,ite.vlposvinco2,
			        /*26*/ ite.vlposvinco3,ite.vlposvinco4,ite.vlposvinco5,ite.vlposvinco6,ite.vlposvinco7,ite.vlposvinco8,
			        /*27*/ ite.vlposvinco9,ite.vlposvinco10,ite.cdlocal,ite.florigemescolhaitempedido,ite.cdprodutoorigem,ite.vlitempedidoorigem,
			        /*28*/ ite.dtinclusaoitempedido,ite.hrinclusaoitempedido,ite.vlpctmargemagregada,ite.vlindiceclientegrupoprod,ite.vltotalfecopitem,ite.vlpctdescprodutorestrito,
			        /*29*/ ite.vlvpc,ite.vlindicevolume,ite.vlretornoproduto,ite.vlpctdesctipopedido,ite.vldesctipopedido,ite.cdlocalestoque,
			        /*30*/ ite.cdgrupodescprod,ite.cdgrupodesccli,ite.vlpctdescontoauto,ite.vlpctdescontoefetivo,ite.vldescontoauto,ite.vltotaldescontoauto,
			        /*31*/ ite.vlpctdescontoautoefetivo,ite.vlprecoefetivounitario,ite.vlprecoefetivounitariodesc,ite.vlefetivototalitem,ite.vlefetivototalitemdesc,ite.vldescontototalautodesc,
			        /*32*/ ite.vlbaseinterpolacaoproduto,ite.qtencomenda,ite.vltotalencomenda,ite.vldesctipopedidoencomenda,ite.dtentrega,ite.cdcomissaopedidorep,
			        /*33*/ ite.vldescontocondicao,ite.qtestoqueprevisto,ite.dtestoqueprevisto,ite.vlitemfretetributacao,ite.vltotalitemfretetributacao,ite.qtfaturada,
			        /*34*/ ite.vlpctdesccondpagto,ite.cdpacote,ite.vlpcttotalmargemitem,ite.vlbasemargemrentab,ite.vlpctdescpedido,ite.vlverbagrupoitem,
			        /*35*/ ite.vlbaseantecipacao,ite.vlindicecondicaopagto,ite.flativo,ite.fltipoalteracao,ite.dtalteracao,ite.hralteracao,
			        /*36*/ ite.vlpontuacaobaseitem,ite.vlpontuacaorealizadoitem
                   ) on conflict do nothing;  
		end loop;


        update tblvwpedido
        set flcontroleerp = 'E',
            dsmensagemcontroleerp = 'Enviado para webservice',
            flcontrolewmw = 'S',
            dsmensagemcontrolewmw = 'Enviado para webservice',
            dtenvioerp = now(), 
            hrenvioerp = to_char(now(), 'HH24:MI')
        where (cdempresa, cdrepresentante, florigempedido, nupedido) = 
              (ped.cdempresa, ped.cdrepresentante, ped.florigempedido, ped.nupedido);

        update tblvwitempedido
        set flcontroleerp = 'E',
            dsmensagemcontroleerp = 'Enviado para webservice'
        where (cdempresa, cdrepresentante, florigempedido, nupedido) = 
              (ped.cdempresa, ped.cdrepresentante, ped.florigempedido, ped.nupedido);
    end loop;
end;
$function$
;

CREATE VIEW tbintempresa AS
SELECT 
	cdempresa,
    nmempresa,
    dsemail,
    nmempresacurto,
    nucnpj,
    nuinscricaoestadual,
    dslogradouro,
    nulogradouro,
    dscomplemento,
    dsbairro,
    dscep,
    dscidade,
    dsestado,
    dspais,
    nufone
FROM tmpintempresa
WHERE FLATIVO='S';

CREATE VIEW tbinttipopedido AS
 SELECT 
 	cdempresa::character varying(20) AS cdempresa,
    cdtipopedido::character varying(20) AS cdtipopedido,
    dstipopedido::character varying(100) AS dstipopedido,
    fldefault::character(1) AS fldefault
   FROM tmpinttipopedido
WHERE FLATIVO='S';

CREATE OR REPLACE VIEW tbintestoque AS
 SELECT cdempresa,
    cdrepresentante,
    cdproduto,
    cditemgrade1,
    cditemgrade2,
    cditemgrade3,
    cdlocalestoque,
	florigemestoque,
    qtestoque
   FROM tmpintestoque
  WHERE flativo = 'S'::bpchar AND qtestoque > 0::numeric;

CREATE VIEW TBINTTIPOPAGAMENTO AS
SELECT 
    CDEMPRESA,
	cdrepresentante,
    cdtipopagamento,
    dstipopagamento
FROM TMPINTTIPOPAGAMENTO
WHERE FLATIVO='S';

CREATE OR REPLACE VIEW tbintcondicaopagamento AS
 SELECT cdempresa,
    cdcondicaopagamento,
    dscondicaopagamento
   FROM tmpintcondicaopagamento
  WHERE flativo = 'S'::bpchar;

CREATE VIEW tbintrepresentante AS
SELECT
    cdrepresentante::varchar(20) AS cdrepresentante,
    nmrepresentante::varchar(100) AS nmrepresentante,
    fltipocadastro::char(1) AS fltipocadastro
FROM tmpintrepresentante
WHERE flatIvo = 'S';

CREATE VIEW tbintrepresentanteemp AS
SELECT
    cdempresa::varchar(20) AS cdempresa,
    cdrepresentante::varchar(20) AS cdrepresentante,
    fldefault::char(1) AS fldefault
FROM tmpintrepresentanteemp
WHERE flatIvo = 'S';

CREATE OR REPLACE VIEW tbintcliente AS
 SELECT cdempresa,
    cdrepresentante,
    cdcliente,
    nmrazaosocial,
    nmfantasia,
    cdcondicaopagamento,
    cdtipopagamento,
    cdtipopedido,
    cdtabelapreco, 
    nucnpj
   FROM tmpintcliente
  WHERE flativo = 'S'::bpchar;

CREATE OR REPLACE VIEW tbintfichafinanceira AS
 SELECT cdempresa,
    cdcliente,
    cdrepresentante,
    vlsaldocliente
   FROM tmpintfichafinanceira
  WHERE flativo = 'S'::bpchar;

CREATE VIEW tbintgrupoproduto1 AS
SELECT
    cdgrupoproduto1::varchar(20) AS cdgrupoproduto1,
    dsgrupoproduto1::varchar(100) AS dsgrupoproduto1
FROM tmpintgrupoproduto1
WHERE flatIvo = 'S';

CREATE VIEW tbintproduto AS
SELECT
    cdempresa::varchar(20) AS cdempresa,
    cdrepresentante::varchar(20) AS cdrepresentante,
    cdproduto::varchar(20) AS cdproduto,
    dsproduto::varchar(100) AS dsproduto,
    cdgrupoproduto1::varchar(20) AS cdgrupoproduto1
FROM tmpintproduto
WHERE flatIvo = 'S';

CREATE OR REPLACE VIEW tbinttabelapreco AS
 SELECT cdempresa,
    cdrepresentante,
    cdtabelapreco,
    dstabelapreco
   FROM tmpinttabelapreco
  WHERE flativo = 'S'::bpchar;

CREATE OR REPLACE VIEW tbintitemtabelapreco AS
 SELECT cdempresa,
    cdrepresentante,
    cdtabelapreco,
    cdproduto,
    cduf,
    cditemgrade1,
    cditemgrade2,
    cditemgrade3,
    cdunidade,
    qtitem,
    cdprazopagtopreco,
    vlunitario
   FROM tmpintitemtabelapreco
  WHERE flativo = 'S'::bpchar;