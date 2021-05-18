package ibmcloud.resources.model.ibm_network_public_ip
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_network_public_ip"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_network_public_ip").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_network_public_ip", "managed").resources[_]
}
ip_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_address", null) |
        res := resources_map[_]
        true
     }
}
routes_to = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routes_to", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
notes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "notes", null) |
        res := resources_map[_]
        true
     }
}

