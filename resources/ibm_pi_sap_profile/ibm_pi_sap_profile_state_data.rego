package ibmcloud.resources.state.data.ibm_pi_sap_profile
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_sap_profile"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_sap_profile", "data").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_sap_profile_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_sap_profile_id", null) |
        res := resources_map[_]
        true
     }
}
certified = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certified", null) |
        res := resources_map[_]
        true
     }
}
cores = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cores", null) |
        res := resources_map[_]
        true
     }
}
memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "memory", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
