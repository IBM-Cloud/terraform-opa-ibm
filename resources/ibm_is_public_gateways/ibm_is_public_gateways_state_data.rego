package ibmcloud.resources.state.data.ibm_is_public_gateways
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_public_gateways"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_public_gateways", "data").resources[_]
}
public_gateways = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_gateways", null) |
        res := resources_map[_]
        true
     }
}
