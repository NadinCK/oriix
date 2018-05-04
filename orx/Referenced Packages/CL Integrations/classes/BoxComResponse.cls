/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class BoxComResponse {
    global BoxComResponse() {

    }
global class BoxComErrorResponse {
    global String code;
    global ints.BoxComResponse.ErrorMessage context_info;
    global String help_url;
    global String message;
    global String request_id;
    global Integer status;
    global String type;
    global BoxComErrorResponse() {

    }
}
global class CreateFolderResponse extends ints.BoxComResponseAbstract {
    global String content_created_at;
    global String content_modified_at;
    global String created_at;
    global ints.BoxComResponse.CreatedBy created_by;
    global String description;
    global String etag;
    global ints.BoxComResponse.FolderUploadEmail folder_upload_email;
    global String id_x;
    global ints.BoxComResponse.ItemCollection item_collection;
    global String item_status;
    global String modified_at;
    global ints.BoxComResponse.ModifiedBy modified_by;
    global String name;
    global ints.BoxComResponse.OwnedBy owned_by;
    global ints.BoxComResponse.Parent parent;
    global ints.BoxComResponse.PathCollection path_collection;
    global ints.BoxComResponse.PurgedAt purged_at;
    global String sequence_id_x;
    global ints.BoxComResponse.SharedLink shared_link;
    global Integer size;
    global ints.BoxComResponse.TrashedAt trashed_at;
    global String type_x;
    global CreateFolderResponse() {

    }
}
global class CreatedBy {
    global String id_x;
    global String login;
    global String name;
    global String type_x;
    global CreatedBy() {

    }
}
global class DownloadUrl {
    global DownloadUrl() {

    }
}
global class Entries {
    global String etag;
    global String id;
    global String name;
    global String sequence_id;
    global String sha1;
    global String type;
    global Entries() {

    }
}
global class Error {
    global String message;
    global String name;
    global String reason;
    global Error() {

    }
}
global class ErrorMessage {
    global List<ints.BoxComResponse.Error> errors;
    global ErrorMessage() {

    }
}
global class FileVersion {
    global String id;
    global String sha1;
    global String type;
    global FileVersion() {

    }
}
global class FolderUploadEmail {
    global String access;
    global String email;
    global FolderUploadEmail() {

    }
}
global class GetFolderInfoResponse extends ints.BoxComResponseAbstract {
    global String content_created_at;
    global String content_modified_at;
    global String created_at;
    global ints.BoxComResponse.CreatedBy created_by;
    global String description;
    global String etag;
    global ints.BoxComResponse.FolderUploadEmail folder_upload_email;
    global String id;
    global ints.BoxComResponse.ItemCollection item_collection;
    global String item_status;
    global String modified_at;
    global ints.BoxComResponse.ModifiedBy modified_by;
    global String name;
    global ints.BoxComResponse.OwnedBy owned_by;
    global ints.BoxComResponse.Parent parent;
    global ints.BoxComResponse.PathCollection path_collection;
    global ints.BoxComResponse.PurgedAt purged_at;
    global String sequence_id;
    global ints.BoxComResponse.SharedLink shared_link;
    global Integer size;
    global ints.BoxComResponse.TrashedAt trashed_at;
    global String type;
    global GetFolderInfoResponse() {

    }
}
global class GetFolderItemsResponse extends ints.BoxComResponseAbstract {
    global List<ints.BoxComResponse.Entries> entries;
    global Integer limit_x;
    global Integer offset;
    global List<ints.BoxComResponse.Order> order;
    global Integer total_count;
    global GetFolderItemsResponse() {

    }
}
global class ItemCollection {
    global List<ints.BoxComResponse.Entries> entries;
    global Integer limit_x;
    global Integer offset;
    global List<ints.BoxComResponse.Order> order;
    global Integer total_count;
    global ItemCollection() {

    }
}
global class ModifiedBy {
    global String id_x;
    global String login;
    global String name;
    global String type_x;
    global ModifiedBy() {

    }
}
global class Order {
    global String by_x;
    global String direction;
    global Order() {

    }
}
global class OwnedBy {
    global String id_x;
    global String login;
    global String name;
    global String type_x;
    global OwnedBy() {

    }
}
global class Parent {
    global String id_x;
    global String name;
    global ints.BoxComResponse.Sequenceid_x sequence_id_x;
    global String type_x;
    global Parent() {

    }
}
global class PathCollection {
    global List<ints.BoxComResponse.Entries> entries;
    global Integer total_count;
    global PathCollection() {

    }
}
global class Permissions {
    global Boolean can_download;
    global Boolean can_preview;
    global Permissions() {

    }
}
global class PurgedAt {
    global PurgedAt() {

    }
}
global class RestrictedTo {
    global RestrictedTo() {

    }
}
global class Sequenceid_x {
    global Sequenceid_x() {

    }
}
global class SharedLink {
    global String access;
    global Integer download_count;
    global ints.BoxComResponse.DownloadUrl download_url;
    global Boolean is_password_enabled;
    global ints.BoxComResponse.Permissions permissions;
    global Integer preview_count;
    global ints.BoxComResponse.UnsharedAt unshared_at;
    global String url;
    global ints.BoxComResponse.VanityUrl vanity_url;
    global SharedLink() {

    }
}
global class TrashedAt {
    global TrashedAt() {

    }
}
global class UnsharedAt {
    global UnsharedAt() {

    }
}
global class UpdateFolderResponse extends ints.BoxComResponseAbstract {
    global String created_at;
    global ints.BoxComResponse.CreatedBy created_by;
    global String description;
    global String etag;
    global ints.BoxComResponse.FolderUploadEmail folder_upload_email;
    global String id;
    global ints.BoxComResponse.ItemCollection item_collection;
    global String item_status;
    global String modified_at;
    global ints.BoxComResponse.ModifiedBy modified_by;
    global String name;
    global ints.BoxComResponse.OwnedBy owned_by;
    global ints.BoxComResponse.Parent parent;
    global ints.BoxComResponse.PathCollection path_collection;
    global String sequence_id;
    global ints.BoxComResponse.SharedLink shared_link;
    global Integer size;
    global String type;
    global UpdateFolderResponse() {

    }
}
global class UploadFileResponse extends ints.BoxComResponseAbstract {
    global List<ints.BoxComResponse.Entries> entries;
    global Integer total_count;
    global UploadFileResponse() {

    }
}
global class VanityUrl {
    global VanityUrl() {

    }
}
global class getRefreshTokenResponse extends ints.BoxComResponseAbstract {
    global String access_token;
    global Integer expires_in;
    global String refresh_token;
    global List<ints.BoxComResponse.RestrictedTo> restricted_to;
    global String token_type;
    global getRefreshTokenResponse() {

    }
}
}
