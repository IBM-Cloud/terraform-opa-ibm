package ibmcloud.resources.state.data.ibm_pi_dhcps
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_dhcps"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_dhcps", "data").resources[_]
}
servers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "servers", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
