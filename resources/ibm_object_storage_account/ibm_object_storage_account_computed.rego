package ibmcloud.resources.computed.ibm_object_storage_account
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_object_storage_account"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_object_storage_account").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

