package ibmcloud.resources.state.data.ibm_network_vlan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_network_vlan"
}

resources_map[attr]{
    attr := state.get_resources("ibm_network_vlan", "data").resources[_]
}
id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "id", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
number = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "number", null) |
        res := resources_map[_]
        true
     }
}
router_hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "router_hostname", null) |
        res := resources_map[_]
        true
     }
}
virtual_guests = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "virtual_guests", null) |
        res := resources_map[_]
        true
     }
}
subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnets", null) |
        res := resources_map[_]
        true
     }
}
