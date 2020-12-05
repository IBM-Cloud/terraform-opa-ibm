package ibmcloud.resources.after.ibm_object_storage_account
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_object_storage_account"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_object_storage_account").resources[_]
}
local_note = ret {
    ret := {res.address: object.get(res.attributes, "local_note", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}

