package ibmcloud.resources.prior.ibm_service_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_service_key"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_service_key").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
service_instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_instance_name", null) |
        res := resources_map[_]
        true
     }
}
space_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "space_guid", null) |
        res := resources_map[_]
        true
     }
}

