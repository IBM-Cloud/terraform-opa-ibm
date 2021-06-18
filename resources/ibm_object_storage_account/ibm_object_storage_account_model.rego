package ibmcloud.resources.model.ibm_object_storage_account
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_object_storage_account"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_object_storage_account").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_object_storage_account", "managed").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
local_note = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "local_note", null) |
        res := resources_map[_]
        true
     }
}

