/* Configuraçoes do usuario WMW */
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


UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='N' WHERE cdparametro IN('1146','1611','1612','1613','1614');
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='S' WHERE CDPARAMETRO='630';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO = 'importadadosparaerp' WHERE CDPARAMETRO = '648';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO = 'S' WHERE CDPARAMETRO = '315';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO = 'S' WHERE CDPARAMETRO = '863';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO = '{"usa":"S","usaAnexoPdfPedido":"S","dsModeloAssunto":"Pedido <empresa.nmEmpresa> - Cliente: <cdCliente> - <cliente.nmRazaoSocial>"}' WHERE CDPARAMETRO = '1631';

/* Parametros Giro de Produtos */
UPDATE tbwmwvalorparametro SET VLPARAMETRO='S' WHERE CDPARAMETRO='698';
UPDATE tbwmwvalorparametro SET VLPARAMETRO='3' WHERE CDPARAMETRO='1448';
UPDATE tbwmwvalorparametro SET VLPARAMETRO='S' WHERE CDPARAMETRO='1490';
UPDATE tbwmwvalorparametro SET VLPARAMETRO='{"usaUltPreco":"N","usaMedia":"N","usaMaiorCompra":"S","usaQtdMedia":"S","usaVlUnit":"S","usaDia":"Ultima Compra","usaObservacao":"N","usaGrade1":"N","usaGrade2":"N","usaGrade3":"N"}'
WHERE CDPARAMETRO='275';

/* Parametros novo cliente */
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO = '{"usa":"S", "nmCampoValidaData":"N", "nuAnoValidaData":"N", "validaCadastroDuasEtapas":"N", "geraNovidadeClientePrimeiraEtapa":"N", "apresentaMensagemLgpd":"S","enviaEmailMensagemLgpd":"N", "usaLiberacaoAnaliseNovoCliente":"N"}' 
WHERE CDPARAMETRO = '27';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='{"usa":"S","listaServicos":"ReceitaWS,https://www.receitaws.com.br/v1/cnpj/|CNPJ|","bloqueiaEdicaoCampos":"N","notificaFalhas":"N","permitePreenchimentoCamposAtualizacaoClientePorCNPJ":"N","bloqueiaCadastroStatusCNPJ":"N"}'
WHERE CDPARAMETRO='1463';

/* Campos novo cliente */
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

/* Marcadores de cliente */

DELETE FROM tblvwmarcador WHERE NMENTIDADE='CLIENTE' AND FLATIVO='N';

INSERT INTO TBLVWMARCADOR (CDMARCADOR,DSMARCADOR,NMENTIDADE,NUSEQUENCIA,CDTIPOMARCADOR,FLATIVO)
VALUES ('1','30 Dias Sem Pedido','CLIENTE','1','999','S');
INSERT INTO TBLVWMARCADOR (CDMARCADOR,DSMARCADOR,NMENTIDADE,NUSEQUENCIA,CDTIPOMARCADOR,FLATIVO)
VALUES ('2','60 Dias Sem Pedido','CLIENTE','2','999','S');
INSERT INTO TBLVWMARCADOR (CDMARCADOR,DSMARCADOR,NMENTIDADE,NUSEQUENCIA,CDTIPOMARCADOR,FLATIVO)
VALUES ('3','90 Dias Sem Pedido','CLIENTE','2','999','S');

UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='{"usaMarcadorCliente":"1,2,4","usaMarcadorProduto":"N"}' WHERE CDPARAMETRO='1552';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='8;1;3' WHERE CDPARAMETRO='1782';


/* Pesquisa de Mercado */

UPDATE TBLVWCONFIGINTEGWEBTC SET FLATIVO='S' WHERE DSTABELA IN('TBLVPPESQUISAMERCADOCONFIG','TBLVPPESQUISAMERCADOPRODUTO','TBLVPPESQUISAMERCADOREG','TBLVPPESQUISAMERCCONC');

UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='{"usa":"S","ignoraCliente":"N","permiteInserirNovoExcluirItem":"N","usaPesquisaPedido":"N","usaPesquisaItemPedido":"N","usaInclusaoFotoPesquisa":"N","usaInclusaoFotoProdPesquisa":"N","obrigaInclusaoFoto":"N","usaCadastroCoordenada":"N","permiteCoordenadaAuto":"N","timeOutCoordenadaAuto":"N","excluiPesquisaPedido":"N","geraNovidadePesquisa":"S"}'
WHERE CDPARAMETRO='1837';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='N' WHERE CDPARAMETRO='1128';

/* Filtros */
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='2;9;21' WHERE CDPARAMETRO='221';
UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='2;10;21' WHERE CDPARAMETRO='610';