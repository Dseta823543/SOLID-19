prompt --application/deployment/install/install_crear_datos
begin
--   Manifest
--     INSTALL: INSTALL-Crear Datos
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(26676732295137017886)
,p_install_id=>wwv_flow_api.id(26676731700493001573)
,p_name=>'Crear Datos'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Insert data into COR_USER ... these are the "administradores del sitio"',
'-- this first record is the ADMIN admin@admin.com - Password: admin',
'-- we also create the default caategories',
'',
'SET DEFINE OFF',
'',
'INSERT INTO COR_USER (',
'USER_NOMBRE, USER_APELLIDO, USER_EMAIL, ADMIN, USER_CONTRA)',
'',
'VALUES (''Administrador'', ''SOLID'', ''admin@admin.com'', ''Si'',''admin'');',
'',
'insert into COR_CATEGORIES (nombre, cat_nombre_eng)',
'values ("Articulo para bebes","Baby stuff");',
'',
'insert into COR_CATEGORIES (nombre, cat_nombre_eng)',
'values ("Ayuda para negocios","Help to business");',
'',
'insert into COR_CATEGORIES (nombre, cat_nombre_eng)',
'values ("Alimentos","Food");',
'',
'insert into COR_CATEGORIES (nombre, cat_nombre_eng)',
'values ("Otro","Other");',
'',
'insert into COR_CATEGORIES (nombre, cat_nombre_eng)',
'values ("Transporte","Transport");',
'',
'insert into COR_CATEGORIES (nombre, cat_nombre_eng)',
unistr('values ("Informaci\00F3n", "Information");'),
'',
'insert into COR_CATEGORIES (nombre, cat_nombre_eng)',
'values ("Suministros","Supplies");',
'',
'insert into COR_CATEGORIES (nombre, cat_nombre_eng)',
unistr('values ("Art\00EDculos de higiene","Hygiene items");'),
'',
'insert into COR_CATEGORIES (nombre, cat_nombre_eng)',
'values ("Trabajo Voluntario", "Voluntary work");',
'',
'Commit;',
'',
'',
''))
);
wwv_flow_api.component_end;
end;
/
