prompt --application/pages/page_10012
begin
--   Manifest
--     PAGE: 10012
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
wwv_flow_api.create_page(
 p_id=>10012
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Privacidad de Datos'
,p_step_title=>'Privacidad de Datos'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(26668809054998915022)
,p_required_patch=>wwv_flow_api.id(26668808044586914997)
,p_page_is_public_y_n=>'Y'
,p_help_text=>'Hier gibt es Impressum- und Datenschutzhinweise'
,p_last_updated_by=>'KQUINONESA14@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20200625061446'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26680623398454531316)
,p_plug_name=>'<font color="lightblue">Impressum</font>'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26668695450229914510)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26883438058436422115)
,p_plug_name=>'Acerca de la Privacidad de Datos'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Insertar normativa peruana acerca de los derechos de privacidad',
'<br><br>',
'Responsabilidad por enlaces',
unistr('Nuestra oferta contiene enlaces a sitios web externos de terceros, en cuyo contenido no tenemos influencia. Por lo tanto, no podemos aceptar ninguna responsabilidad por este contenido de terceros. El proveedor u operador respectivo de las p\00E1ginas sie')
||unistr('mpre es responsable del contenido de las p\00E1ginas enlazadas. Las p\00E1ginas vinculadas se verificaron por posibles violaciones legales en el momento en que se cre\00F3 el enlace. Ning\00FAn contenido ilegal era discernible en el momento en que se cre\00F3 el enlace.'),
'<br><br>',
unistr('Un control permanente del contenido de las p\00E1ginas enlazadas no es razonable sin evidencia concreta de una infracci\00F3n. Tan pronto como tengamos conocimiento de infracciones legales, eliminaremos dichos enlaces de inmediato.'),
'<br><br>',
'Derechos de autor',
unistr('El contenido y los trabajos en estas p\00E1ginas creados por el operador del sitio est\00E1n sujetos a la ley de derechos de autor peruano. La duplicaci\00F3n, edici\00F3n, distribuci\00F3n y cualquier tipo de uso fuera de los l\00EDmites de la ley de derechos de autor requ')
||unistr('ieren el consentimiento por escrito del autor o creador respectivo. Las descargas y copias de esta p\00E1gina solo est\00E1n permitidas para uso privado y no comercial.'),
'<br><br>',
'Atentamente:',
'Equipo de desarrollo de SOLID-19',
''))
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.component_end;
end;
/
