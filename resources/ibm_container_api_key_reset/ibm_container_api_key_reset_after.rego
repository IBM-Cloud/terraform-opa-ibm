package ibmcloud.resources.after.ibm_container_api_key_reset
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_api_key_reset"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_container_api_key_reset").resources[_]
}
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
reset_api_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reset_api_key", null) |
        res := resources_map[_]
        true
     }
}

