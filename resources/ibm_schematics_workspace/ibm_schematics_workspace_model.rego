package ibmcloud.resources.model.ibm_schematics_workspace
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_workspace"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_schematics_workspace").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_schematics_workspace", "managed").resources[_]
}
template_uninstall_script_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_uninstall_script_name", null) |
        res := resources_map[_]
        true
     }
}
frozen_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "frozen_by", null) |
        res := resources_map[_]
        true
     }
}
locked_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "locked_by", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
template_git_release = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_git_release", null) |
        res := resources_map[_]
        true
     }
}
template_git_repo_sha_value = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_git_repo_sha_value", null) |
        res := resources_map[_]
        true
     }
}
template_git_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_git_url", null) |
        res := resources_map[_]
        true
     }
}
frozen_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "frozen_at", null) |
        res := resources_map[_]
        true
     }
}
locked = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "locked", null) |
        res := resources_map[_]
        true
     }
}
x_github_token = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "x_github_token", null) |
        res := resources_map[_]
        true
     }
}
last_health_check_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_health_check_at", null) |
        res := resources_map[_]
        true
     }
}
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
catalog_ref = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_ref", null) |
        res := resources_map[_]
        true
     }
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
template_git_folder = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_git_folder", null) |
        res := resources_map[_]
        true
     }
}
template_values = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_values", null) |
        res := resources_map[_]
        true
     }
}
template_git_branch = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_git_branch", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
template_git_has_uploadedgitrepotar = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_git_has_uploadedgitrepotar", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
created_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by", null) |
        res := resources_map[_]
        true
     }
}
runtime_data = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "runtime_data", null) |
        res := resources_map[_]
        true
     }
}
status_msg = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status_msg", null) |
        res := resources_map[_]
        true
     }
}
applied_shareddata_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "applied_shareddata_ids", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
template_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_type", null) |
        res := resources_map[_]
        true
     }
}
locked_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "locked_time", null) |
        res := resources_map[_]
        true
     }
}
status_code = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status_code", null) |
        res := resources_map[_]
        true
     }
}
template_env_settings = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_env_settings", null) |
        res := resources_map[_]
        true
     }
}
template_inputs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_inputs", null) |
        res := resources_map[_]
        true
     }
}
template_ref = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_ref", null) |
        res := resources_map[_]
        true
     }
}
template_git_repo_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_git_repo_url", null) |
        res := resources_map[_]
        true
     }
}
updated_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_by", null) |
        res := resources_map[_]
        true
     }
}
shared_data = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "shared_data", null) |
        res := resources_map[_]
        true
     }
}
template_init_state_file = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_init_state_file", null) |
        res := resources_map[_]
        true
     }
}
template_values_metadata = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_values_metadata", null) |
        res := resources_map[_]
        true
     }
}
frozen = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "frozen", null) |
        res := resources_map[_]
        true
     }
}

