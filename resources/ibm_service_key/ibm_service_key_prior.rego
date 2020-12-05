package ibmcloud.resources.prior.ibm_service_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_service_key"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_service_key").resources[_]
}
service_instance_name = ret {
    ret := {res.address: object.get(res.attributes, "service_instance_name", null) |
        res := resources_map[_]
        true
     }
}
space_guid = ret {
    ret := {res.address: object.get(res.attributes, "space_guid", null) |
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

