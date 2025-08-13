--Criar role
CREATE ROLE localdb WITH
  LOGIN
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  REPLICATION
  BYPASSRLS
  PASSWORD 'db97!#!!';

--Criar banco WEB
CREATE DATABASE localdbwvwebprd
    WITH
    OWNER = localdb
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Criar banco APP
CREATE DATABASE localdbwvappprd
    WITH
    OWNER = localdb
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

ALTER SCHEMA public RENAME TO localdb;