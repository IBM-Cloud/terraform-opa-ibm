package ibmcloud.resources.prior.ibm_resource_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_resource_key"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_resource_key").resources[_]
}
most_recent = ret {
    ret := {res.address: object.get(res.attributes, "most_recent", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
resource_instance_id = ret {
    ret := {res.address: object.get(res.attributes, "resource_instance_id", null) |
        res := resources_map[_]
        true
     }
}
resource_alias_id = ret {
    ret := {res.address: object.get(res.attributes, "resource_alias_id", null) |
        res := resources_map[_]
        true
     }
}

