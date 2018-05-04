/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ConfigurationOutline2 {
    global ConfigurationOutline2() {

    }
global virtual class Action extends clcommon.ConfigurationOutline2.MetaData {
    global String method;
    global String remote_action;
    global Action(String method, String remote_action) {

    }
}
global virtual class BatchJob extends clcommon.ConfigurationOutline2.MetaData {
    global String class_name;
    global String label;
    global BatchJob(String class_name, String label) {

    }
}
global virtual class BatchJobComponent extends clcommon.ConfigurationOutline2.ParentComponent {
    global List<clcommon.ConfigurationOutline2.BatchJobSection> sections;
    global BatchJobComponent(String component_name, List<clcommon.ConfigurationOutline2.Action> actions, clcommon.ConfigurationOutline2.UserInterface user_interface, List<clcommon.ConfigurationOutline2.BatchJobSection> sections, String type) {

    }
}
global virtual class BatchJobSection extends clcommon.ConfigurationOutline2.MetaData {
    global List<clcommon.ConfigurationOutline2.BatchJob> fields;
    global String section_name;
    global BatchJobSection(String section_name, List<clcommon.ConfigurationOutline2.BatchJob> fields) {

    }
}
global virtual class Column extends clcommon.ConfigurationOutline2.Field {
    global Column(String api_name, String regex, Boolean required, List<String> reference_display_attributes) {

    }
}
global virtual class CommonCategory extends clcommon.ConfigurationOutline2.MetaData {
    global String category_name;
    global List<clcommon.ConfigurationOutline2.MetaData> components;
    global CommonCategory(String category_name, List<clcommon.ConfigurationOutline2.MetaData> components) {

    }
}
global virtual class CommonComponent extends clcommon.ConfigurationOutline2.ParentComponent {
    global String api_name;
    global List<clcommon.ConfigurationOutline2.Column> columns;
    global List<clcommon.ConfigurationOutline2.ComponentType> component_types;
    global List<clcommon.ConfigurationOutline2.RelatedListComponent> related_list_components;
    global CommonComponent(String api_name, List<clcommon.ConfigurationOutline2.Column> columns, String component_name, List<clcommon.ConfigurationOutline2.ComponentType> component_types, List<clcommon.ConfigurationOutline2.Action> actions, clcommon.ConfigurationOutline2.UserInterface user_interface, String type, List<clcommon.ConfigurationOutline2.RelatedListComponent> related_list_components) {

    }
}
global virtual class ComponentType extends clcommon.ConfigurationOutline2.MetaData {
    global String record_name;
    global List<clcommon.ConfigurationOutline2.Section> sections;
    global ComponentType(String record_name, List<clcommon.ConfigurationOutline2.Section> sections) {

    }
}
global virtual class Field extends clcommon.ConfigurationOutline2.MetaData {
    global String api_name;
    global List<String> reference_display_attributes;
    global String regex;
    global Boolean required;
    global Field(String api_name, String regex, Boolean required, List<String> reference_display_attributes) {

    }
}
global virtual class MetaData implements clcommon.IMetaData {
    global MetaData() {

    }
    global virtual clcommon.ConfigurationOutline2.MetaData fetchMetaData(clcommon.ConfigurationOutline2.MetaData metaData, clcommon.ConfigManagerDataSafe dataSafe) {
        return null;
    }
}
global virtual class ParentComponent extends clcommon.ConfigurationOutline2.MetaData {
    global ParentComponent(String component_name, List<clcommon.ConfigurationOutline2.Action> actions, clcommon.ConfigurationOutline2.UserInterface user_interface, String type) {

    }
}
global virtual class Product extends clcommon.ConfigurationOutline2.MetaData {
    global List<clcommon.ConfigurationOutline2.CommonCategory> common_categories;
    global String namespace;
    global String product_name;
    global Product(String product_name, String namespace, List<clcommon.ConfigurationOutline2.CommonCategory> common_categories) {

    }
}
global virtual class RelatedListComponent extends clcommon.ConfigurationOutline2.CommonComponent {
    global RelatedListComponent(String api_name, List<clcommon.ConfigurationOutline2.Column> columns, String component_name, List<clcommon.ConfigurationOutline2.ComponentType> component_types, List<clcommon.ConfigurationOutline2.Action> actions, clcommon.ConfigurationOutline2.UserInterface user_interface, List<clcommon.ConfigurationOutline2.RelatedListComponent> related_list_components, String type) {

    }
}
global virtual class Section extends clcommon.ConfigurationOutline2.MetaData {
    global List<clcommon.ConfigurationOutline2.Field> fields;
    global String section_name;
    global Section(String section_name, List<clcommon.ConfigurationOutline2.Field> fields) {

    }
}
global virtual class UserInterface extends clcommon.ConfigurationOutline2.MetaData {
    global String default_view;
    global clcommon.ConfigurationOutline2.Views views;
    global UserInterface(clcommon.ConfigurationOutline2.Views views, String default_view) {

    }
}
global virtual class VFPage extends clcommon.ConfigurationOutline2.MetaData {
    global String vf_page_name;
    global VFPage(String vf_page_name) {

    }
}
global virtual class VFPageComponent extends clcommon.ConfigurationOutline2.ParentComponent {
    global clcommon.ConfigurationOutline2.VFPage vf_page;
    global VFPageComponent(String component_name, clcommon.ConfigurationOutline2.VFPage vf_page, String type) {

    }
}
global virtual class Views extends clcommon.ConfigurationOutline2.MetaData {
    global String detail_view;
    global String list_view;
    global String new_view;
    global Views(String list_view, String new_view, String detail_view) {

    }
}
}
