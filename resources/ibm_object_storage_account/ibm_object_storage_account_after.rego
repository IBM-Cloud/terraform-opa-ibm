package ibmcloud.resources.after.ibm_object_storage_account
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_object_storage_account"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_object_storage_account").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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

