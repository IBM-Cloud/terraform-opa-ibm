package ibmcloud.resources.computed.ibm_schematics_workspace
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_workspace"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_schematics_workspace").resources[_]
}
locked_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "locked_time", null) |
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
locked = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "locked", null) |
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
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
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
updated_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_by", null) |
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
created_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by", null) |
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
last_health_check_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_health_check_at", null) |
        res := resources_map[_]
        true
     }
}

