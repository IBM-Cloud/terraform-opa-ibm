package ibmcloud.resources.after.ibm_network_public_ip
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_network_public_ip"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_network_public_ip").resources[_]
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

