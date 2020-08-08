prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Ayuda frente al Coronavirus'
,p_step_title=>'SOLID19'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('Esta es la p\00E1gina de inicio, contiene informaci\00F3n sobre la justificaci\00F3n del desarrollo de la aplicaci\00F3n')
,p_last_updated_by=>'DAR0015VALE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20200625002015'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26672581421224807315)
,p_plug_name=>unistr('Es bueno tenerte aqu\00ED !!!')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26667362838603789615)
,p_plug_name=>unistr('Es bueno tenerte aqu\00ED !!!')
,p_parent_plug_id=>wwv_flow_api.id(26672581421224807315)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b><table >',
' ',
'<tr>',
unistr('  <td>Lamentablemente hay \00A1M\00E1s de 375 000 muertos y 6,2 millones de contagiados en el mundo!<br><br>'),
'Eso motivo a  cientos de desarolladores  a crear aplicaciones de ayuda en esta pandemia.<br>',
'Este es un proyecto privado, no comercial.<br><br>',
unistr('Puede dejar sus datos de contacto y su oferta de ayuda aqu\00ED para que otros puedan contactarlo.No te preocupes por tus datos. Estos solo se guardan para este proyecto de ayuda SOLID-19 y se eliminan despu\00E9s de la crisis.'),
unistr('Tambi\00E9n puede eliminar sus datos aqu\00ED mismo en cualquier momento.<br>'),
'',
'    <td>',
'<img src ="https://publimetro.pe/resizer/Gw5JMCti5-jLAaS6-JnB6t09eOg=/1200x1200/smart/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/NVBXUO6MEZGXDNJ2LE6WCZF7H4.jpeg" width = 200></td>',
'  </tr>',
'</table>',
'<br>',
unistr('Este es un proyecto enfocado a la solidaridad, queremos  brindar ayuda a los que m\00E1s lo necesitan <br><br>'),
'',
unistr('\00A1Si\00E9ntete orgulloso de participar aqu\00ED! \00A1La solidaridad ! Este es el verdadero coraje civil.<br><br>'),
'',
unistr('\00A1Esperamos su oferta!<br><br>'),
'',
'',
'',
'Arequipa, 2 de junio del 2020</td><br><br>',
unistr('Actualizaci\00F3n e informaci\00F3n martes  02 de junio de 2020 11:55 p.m.<br>'),
unistr('\00A1Ojala haya muchas  ofertas de ayuda! Mi agradecimiento a todos!<br>'),
'---<br>',
unistr('Actualizaci\00F3n lunes 02 de junio de 2020 (23: 55h):<br>'),
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26669175050683317129)
,p_name=>'Ofertas actuales de ayuda&nbsp;&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(26672581421224807315)
,p_template=>wwv_flow_api.id(26668722685742914547)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'COR_VOLUNTARIO'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'id != 525',
'and VOL_FCAD > SYSDATE'))
,p_include_rowid_column=>false
,p_required_role=>wwv_flow_api.id(26672551180248333628)
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(26668745432404914594)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26669175179713317130)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32771582355458748272)
,p_query_column_id=>2
,p_column_alias=>'VOL_SEX'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32771582484677748273)
,p_query_column_id=>3
,p_column_alias=>'VOL_APELLIDO'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32771582548101748274)
,p_query_column_id=>4
,p_column_alias=>'VOL_NOMBRE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32771582663499748275)
,p_query_column_id=>5
,p_column_alias=>'VOL_DEPT'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32771582778360748276)
,p_query_column_id=>6
,p_column_alias=>'VOL_CPOSTAL'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32771582869897748277)
,p_query_column_id=>7
,p_column_alias=>'VOL_PROV'
,p_column_display_sequence=>9
,p_column_heading=>'Provincia'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>'En secuencia deberia ser 11'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32771583154800748280)
,p_query_column_id=>8
,p_column_alias=>'VOL_DISTR'
,p_column_display_sequence=>10
,p_column_heading=>'Distrito'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>'En secuencia deberia ser 12'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32771583247376748281)
,p_query_column_id=>9
,p_column_alias=>'VOL_OFERTA'
,p_column_display_sequence=>7
,p_column_heading=>'Oferta'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>'En secuencia deberia ser 9'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32771583323077748282)
,p_query_column_id=>10
,p_column_alias=>'VOL_CATEGORIA'
,p_column_display_sequence=>8
,p_column_heading=>'Categoria'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>'En secuencia deberia ser 10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32794430377228129033)
,p_query_column_id=>11
,p_column_alias=>'VOL_DESCR'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_column_comment=>'En secuencia deberia ser 13'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32794430491351129034)
,p_query_column_id=>12
,p_column_alias=>'VOL_EMAIL'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_column_comment=>'En secuencia deberia ser 14'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32794430652474129036)
,p_query_column_id=>13
,p_column_alias=>'VOL_CONTRA'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_column_comment=>'En secuencia deberia ser 15'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32794430786907129037)
,p_query_column_id=>14
,p_column_alias=>'VOL_TLF'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_column_comment=>'En secuencia deberia ser 16'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26669176586578317144)
,p_query_column_id=>15
,p_column_alias=>'PKW'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_column_comment=>'En secuencia deberia ser 17'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32794430875015129038)
,p_query_column_id=>16
,p_column_alias=>'VOL_FREG'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_column_comment=>'En secuencia deberia ser 18'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32794430908600129039)
,p_query_column_id=>17
,p_column_alias=>'VOL_FCAD'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_column_comment=>'En secuencia deberia ser 19'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32794431012082129040)
,p_query_column_id=>18
,p_column_alias=>'VOL_LOCACION'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_column_comment=>'En secuencia deberia ser 20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26669177024339317148)
,p_query_column_id=>19
,p_column_alias=>'ADMIN'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_column_comment=>'En secuencia deberia ser 21'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32794431111373129041)
,p_query_column_id=>20
,p_column_alias=>'VOL_PRIV'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_column_comment=>'En secuencia deberia ser 22'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26667362864030789616)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26669175050683317129)
,p_button_name=>'Enter_offer'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(26668783450886914708)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Introducir_Oferta'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17:P17_PREV_PAGE:&APP_PAGE_ID.'
,p_icon_css_classes=>'fa-signing'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26672584348706807345)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26669175050683317129)
,p_button_name=>'Need_help'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(26668783450886914708)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Necesitas_Ayuda'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-volume-control-phone'
);
wwv_flow_api.component_end;
end;
/
