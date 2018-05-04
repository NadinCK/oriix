/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class ConfigurationOutline {
    global static String serializeProductObject(clcommon.ConfigurationOutline.Product productObject) {
        return null;
    }
global virtual class Action {
    global String method;
    global String remote_action;
    global Action(String method, String remote_action) {

    }
}
global virtual class BatchJob {
    global String class_name;
    global String label;
    global String type;
    global BatchJob(String class_name, String label, String type) {

    }
}
global virtual class BatchJobCategory extends clcommon.ConfigurationOutline.ParentCategory {
    global List<clcommon.ConfigurationOutline.BatchJobComponent> components;
    global BatchJobCategory(String category_name, List<clcommon.ConfigurationOutline.BatchJobComponent> components) {

    }
}
global virtual class BatchJobComponent extends clcommon.ConfigurationOutline.ParentComponent {
    global List<clcommon.ConfigurationOutline.BatchJob> batch_jobs;
    global BatchJobComponent(String component_name, List<clcommon.ConfigurationOutline.Action> actions, clcommon.ConfigurationOutline.UserInterface user_interface, List<clcommon.ConfigurationOutline.BatchJob> batch_jobs) {

    }
}
global virtual class Categories {
    global List<clcommon.ConfigurationOutline.BatchJobCategory> batch_job_categories;
    global List<clcommon.ConfigurationOutline.CommonCategory> common_categories;
    global Categories(List<clcommon.ConfigurationOutline.CommonCategory> common_categories, List<clcommon.ConfigurationOutline.BatchJobCategory> batch_job_categories) {

    }
}
global virtual class Column extends clcommon.ConfigurationOutline.Field {
    global Column(String api_name, String regex, Boolean required, List<String> reference_display_attributes) {

    }
}
global virtual class CommonCategory extends clcommon.ConfigurationOutline.ParentCategory {
    global List<clcommon.ConfigurationOutline.CommonComponent> components;
    global CommonCategory(String category_name, List<clcommon.ConfigurationOutline.CommonComponent> components) {

    }
}
global virtual class CommonComponent extends clcommon.ConfigurationOutline.ParentComponent {
    global String api_name;
    global List<clcommon.ConfigurationOutline.Column> columns;
    global List<clcommon.ConfigurationOutline.ComponentType> component_types;
    global CommonComponent(String api_name, List<clcommon.ConfigurationOutline.Column> columns, String component_name, List<clcommon.ConfigurationOutline.ComponentType> component_types, List<clcommon.ConfigurationOutline.Action> actions, clcommon.ConfigurationOutline.UserInterface user_interface) {

    }
}
global virtual class ComponentType {
    global String record_name;
    global List<clcommon.ConfigurationOutline.Section> sections;
    global ComponentType(String record_name, List<clcommon.ConfigurationOutline.Section> sections) {

    }
}
global virtual class Field {
    global String api_name;
    global List<String> reference_display_attributes;
    global String regex;
    global Boolean required;
    global Field(String api_name, String regex, Boolean required, List<String> reference_display_attributes) {

    }
}
global virtual class Product {
    global clcommon.ConfigurationOutline.Categories categories;
    global String namespace;
    global String product_name;
    global Product(String product_name, clcommon.ConfigurationOutline.Categories categories, String namespace) {

    }
}
global virtual class Section {
    global List<clcommon.ConfigurationOutline.Field> fields;
    global String section_name;
    global Section(String section_name, List<clcommon.ConfigurationOutline.Field> fields) {

    }
}
global virtual class UserInterface {
    global String default_view;
    global clcommon.ConfigurationOutline.Views views;
    global UserInterface(clcommon.ConfigurationOutline.Views views, String default_view) {

    }
}
global virtual class Views {
    global String detail_view;
    global String list_view;
    global String new_view;
    global Views(String list_view, String new_view, String detail_view) {

    }
}
}
