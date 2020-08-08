prompt --application/pages/page_10010
begin
--   Manifest
--     PAGE: 10010
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
 p_id=>10010
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>unistr('Acerca de la aplicaci\00F3n')
,p_alias=>'HELP'
,p_step_title=>unistr('Acerca de la aplicaci\00F3n')
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(26668809054998915022)
,p_required_patch=>wwv_flow_api.id(26668808044586914997)
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('Describe a la aplicaci\00F3n.')
,p_last_updated_by=>'KQUINONESA14@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20200625060859'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26668882886735915634)
,p_plug_name=>'Contacto'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<b> Responsable y desarrollador de esta aplicaci\00F3n y contacto para preguntas: <br>'),
'<a href = "mailto:Bernhard@Fischer-Wasels.de"> kquinonesa@unsa.edu.pe </a> <br>',
'<a href = "mailto:Bernhard@Fischer-Wasels.de"> drondone@unsa.edu.pe </a> <br>',
'Universidad Nacional de San Agustin - Arequipa',
'08/06/2020 </b>'))
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26680623284189531315)
,p_plug_name=>unistr('<font color="lightblue">Acerca de esta aplicaci\00F3n</font>')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26668695450229914510)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26680626199059531344)
,p_plug_name=>unistr('Motivaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b><table >',
' ',
'<tr>',
unistr('  <td>SOLID-19 es una aplicaci\00F3n de voluntariado en peri\00F3do de pandemia, contacta a buscadores de ayuda con voluntarios. Para poder sobrellevar esta dificil situacion<br><br> '),
unistr('Las buenas acciones de personas en redes sociales con su sociedad nos inspiraron para desarrollar esta aplicaci\00F3n<br><br>'),
unistr('Asi que puede dejar sus datos de contacto y su oferta de ayuda aqu\00ED para que otros puedan contactarlo<br>'),
unistr('Este es un proyecto acad\00E9mico, no comercial.<br><br>'),
'',
'    <td>',
'<img src ="#APP_IMAGES#Unsa.png" width = 200></td>',
'  </tr>',
'</table>',
'',
'<br>',
unistr('No te preocupes por tus datos. Estos solo se guardan para este proyecto de ayuda social en peri\00F3do de pandemia y se eliminan despu\00E9s de la crisis.'),
unistr('Tambi\00E9n puede eliminar sus datos aqu\00ED mismo en cualquier momento.<br><br>'),
'',
unistr('\00A1Si\00E9ntete orgulloso de participar aqu\00ED! \00A1El respeto! Este es el verdadero coraje civil.br><br>'),
'',
unistr('\00A1Esperamos su oferta! <br> <br>'),
'',
unistr('Kevin Qui\00F1ones y Darlyng Rondon- Equipo del Curso de Pruebas de Software'),
'',
'Arequipa 8 de junio de 2020</td><br><br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
