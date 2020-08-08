prompt --application/shared_components/plugins/region_type/com_eportela_webview
begin
--   Manifest
--     PLUGIN: COM.EPORTELA.WEBVIEW
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(37741560515216152630)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.EPORTELA.WEBVIEW'
,p_display_name=>'WebView'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.EPORTELA.WEBVIEW'),'')
,p_css_file_urls=>'#PLUGIN_FILES#styles.css'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render(',
'    p_region                in apex_plugin.t_region,',
'    p_plugin                in apex_plugin.t_plugin,',
'    p_is_printer_friendly   in boolean ',
') ',
'return apex_plugin.t_region_render_result ',
'as',
'    l_result                apex_plugin.t_region_render_result;',
'    ',
'    l_template              varchar2(32767);',
'    ',
'    l_source_type           varchar2(32767);',
'    l_source                varchar2(32767);',
'    l_styles                varchar2(32767);',
'    l_css_classes           varchar2(32767);',
'    ',
'    l_params                apex_t_varchar2;',
'    l_values                apex_t_varchar2;',
'',
'    function render_list(',
'        p_component_name    varchar2,',
'        p_query             varchar2',
'    )',
'    return varchar2',
'    as',
'        l_column_value_list     apex_plugin_util.t_column_value_list;',
'        l_value                 varchar2(32767) := '''';',
'    begin',
'        l_column_value_list := apex_plugin_util.get_data(',
'            p_sql_statement     => p_query,',
'            p_min_columns       => 1,',
'            p_max_columns       => 1,',
'            p_component_name    => p_component_name',
'        );',
'',
'        for row in 1..l_column_value_list.count ',
'        loop',
'            for col in 1..l_column_value_list(row).count ',
'            loop',
'                l_value := l_column_value_list(row)(col);',
'            end loop;',
'        end loop;',
'',
'        return l_value;',
'    end;',
'',
'    function multi_replace(',
'      p_text  varchar2, ',
'      p_old   apex_t_varchar2, ',
'      p_new   apex_t_varchar2',
'    )',
'    return varchar2',
'    as',
'        l_result  varchar2(32767);',
'    begin',
'        if( p_old.count <> p_new.count ) then',
'            return p_text;',
'        end if;',
'',
'        l_result := p_text;',
'',
'        for i in 1..p_old.count loop',
'            l_result := replace( l_result, p_old(i), p_new(i) );',
'        end loop;',
'',
'        return l_result;',
'    end;',
'begin',
'    l_template :=',
'        ''<iframe ',
'            src="#SOURCE#" ',
'            style="#STYLES#"',
'            class="#CSS_CLASSES#"',
'        ></iframe>'';',
'',
'    l_source_type := p_region.attribute_01;',
'',
'    l_source := case l_source_type',
'                    when ''ITEM'' then v(p_region.attribute_02)',
'                    when ''EXPRESSION'' then apex_plugin_util.get_plsql_expression_result(p_region.attribute_03)',
'                    when ''FUNCTION'' then apex_plugin_util.get_plsql_function_result(p_region.attribute_04)',
'                    when ''QUERY'' then render_list(p_region.attribute_01, p_region.attribute_05)',
'                    when ''STATIC'' then p_region.attribute_08',
'                    else null',
'                end;',
'',
'    l_styles := p_region.attribute_06;',
'    l_css_classes := p_region.attribute_07;',
'',
'    l_params := apex_t_varchar2(',
'                    ''#SOURCE#'', ',
'                    ''#STYLES#'', ',
'                    ''#CSS_CLASSES#''',
'                );',
'',
'    l_values := apex_t_varchar2(',
'                    l_source,',
'                    l_styles,',
'                    l_css_classes',
'                );',
'',
'    htp.prn(',
'        multi_replace(',
'            l_template, ',
'            l_params, ',
'            l_values',
'        )',
'    );',
'',
'    return l_result;',
'end;'))
,p_api_version=>2
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'This plugin can be used in APEX as a region. It uses the html <iframe> tag for render and display page from the same application or another site.'
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/ezeportela/apex-webview'
,p_files_version=>3
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(37832796903135645131)
,p_plugin_id=>wwv_flow_api.id(37741560515216152630)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Source Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'ITEM'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select a source type for URL of the component.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37833016534276645586)
,p_plugin_attribute_id=>wwv_flow_api.id(37832796903135645131)
,p_display_sequence=>10
,p_display_value=>'Item'
,p_return_value=>'ITEM'
,p_help_text=>'The value of the selected Item is the URL of the component.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37833020272952647013)
,p_plugin_attribute_id=>wwv_flow_api.id(37832796903135645131)
,p_display_sequence=>20
,p_display_value=>'PL/SQL Expression'
,p_return_value=>'EXPRESSION'
,p_help_text=>'The return value of the PL/SQL expression is the URL of the component.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37833022389045648336)
,p_plugin_attribute_id=>wwv_flow_api.id(37832796903135645131)
,p_display_sequence=>30
,p_display_value=>'PL/SQL Function'
,p_return_value=>'FUNCTION'
,p_help_text=>'The return value of the PL/SQL Function is the URL of the component.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37832799322613651702)
,p_plugin_attribute_id=>wwv_flow_api.id(37832796903135645131)
,p_display_sequence=>40
,p_display_value=>'SQL Query'
,p_return_value=>'QUERY'
,p_help_text=>'The SQL query returns one row with one column, that is the URL of the component.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37849112813767091990)
,p_plugin_attribute_id=>wwv_flow_api.id(37832796903135645131)
,p_display_sequence=>50
,p_display_value=>'Static Text'
,p_return_value=>'STATIC'
,p_help_text=>'The entered text is the URL of the component.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(37833061255553654263)
,p_plugin_id=>wwv_flow_api.id(37741560515216152630)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_default_value=>'The value of the selected Item is the URL of the component.'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(37832796903135645131)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ITEM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(37833132003663661380)
,p_plugin_id=>wwv_flow_api.id(37741560515216152630)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'PL/SQL Expression'
,p_attribute_type=>'PLSQL EXPRESSION'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(37832796903135645131)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'EXPRESSION'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'''https://apex.world/'' ',
'',
'-- or --',
'',
':P1_URL'))
,p_help_text=>'The return value of the PL/SQL expression is the URL of the component.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(37833125880149661541)
,p_plugin_id=>wwv_flow_api.id(37741560515216152630)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'PL/SQL Function'
,p_attribute_type=>'PLSQL FUNCTION BODY'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(37832796903135645131)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'FUNCTION'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''https://apex.world'';',
'',
'-- or --',
'',
'return :P1_URL;'))
,p_help_text=>'The return value of the PL/SQL Function is the URL of the component.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(37833150376450663966)
,p_plugin_id=>wwv_flow_api.id(37741560515216152630)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'SQL Query'
,p_attribute_type=>'SQL'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(37832796903135645131)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'QUERY'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''https://apex.world'' url',
'from    dual'))
,p_help_text=>'The SQL query returns one row with one column, that is the URL of the component.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(37833288014426669622)
,p_plugin_id=>wwv_flow_api.id(37741560515216152630)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Styles'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_examples=>'height: 100vh;'
,p_help_text=>'Specify the styles of the component.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(37833307212437672154)
,p_plugin_id=>wwv_flow_api.id(37741560515216152630)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_examples=>'my-webview'
,p_help_text=>'Specify the CSS Classes of the component.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(37848664673362076556)
,p_plugin_id=>wwv_flow_api.id(37741560515216152630)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>55
,p_prompt=>'Static Text'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(37832796903135645131)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'STATIC'
,p_examples=>'https://apex.world'
,p_help_text=>'Enter the URL of the component.'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '696672616D65207B0A0977696474683A20313030253B0A096865696768743A20313030253B0A7D';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(37743936059944364324)
,p_plugin_id=>wwv_flow_api.id(37741560515216152630)
,p_file_name=>'styles.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
