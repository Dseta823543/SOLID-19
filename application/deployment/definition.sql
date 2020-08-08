prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 95395
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(26676731700493001573)
,p_welcome_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Tenga en cuenta que el usuario ADMIN: ADMIN@ADMIN.COM - Contrase\00F1a: admin (distingue entre may\00FAsculas y min\00FAsculas) <br>'),
unistr('despu\00E9s de iniciar sesi\00F3n, inicie sesi\00F3n en el perfil (-> barra de men\00FA del encabezado debajo del nombre de usuario) y cambie la contrase\00F1a. <br>'),
unistr('Entonces recomiendo: "Administraci\00F3n" -> "Sugerencias de configuraci\00F3n" ... <br>'),
unistr('\00A1Muchas gracias y buena suerte! <br>'),
''))
,p_configuration_message=>'You can configure the following attributes of your application.'
,p_build_options_message=>unistr('Puede optar por incluir las siguientes opciones de compilaci\00F3n.')
,p_validation_message=>unistr('Se realizar\00E1n las siguientes validaciones para garantizar que su sistema sea compatible con esta aplicaci\00F3n.')
,p_install_message=>unistr('Confirme que desea instalar los objetos de soporte de esta aplicaci\00F3n.')
,p_upgrade_message=>'The application installer has detected that this application''s supporting objects were previously installed.  This wizard will guide you through the process of upgrading these supporting objects.'
,p_upgrade_confirm_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_success_message=>'Your application''s supporting objects have been installed.'
,p_upgrade_failure_message=>'Installation of database objects and seed data has failed.'
,p_deinstall_success_message=>unistr('Desinstalaci\00F3n Completa')
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'Drop the tables, sequences and triggers for the application.',
'*/',
'',
'-- tables',
'DROP TABLE COR_MSG CASCADE CONSTRAINTS',
'/',
'DROP TABLE COR_CATEGORIES CASCADE CONSTRAINTS',
'/',
'DROP TABLE COR_POST CASCADE CONSTRAINTS',
'/',
'DROP TABLE COR_USER CASCADE CONSTRAINTS',
'/',
'DROP TABLE HTMLDB_PLAN_TABLE CASCADE CONSTRAINTS',
'',
'--sequences',
'DROP SEQUENCE COR_CATEGORIES_SEQ',
'/',
'DROP SEQUENCE COR_MSG_SEQ;',
'/',
'DROP SEQUENCE COR_POST_SEQ',
'/',
'DROP SEQUENCE COR_USER_SEQ',
'/',
'',
'--triggers',
'DROP TRIGGER BI_COR_CATEGORIES',
'/',
'DROP TRIGGER BI_COR_MSG',
'/',
'DROP TRIGGER BI_COR_POST',
'/',
'DROP TRIGGER BI_COR_USER',
'/',
''))
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
);
wwv_flow_api.component_end;
end;
/
