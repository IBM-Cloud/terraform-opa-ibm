package ibmcloud.resources.after.ibm_network_vlan
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_network_vlan"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_network_vlan").resources[_]
}
type = ret {
    ret := {res.address: object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
datacenter = ret {
    ret := {res.address: object.get(res.attributes, "datacenter", null) |
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
router_hostname = ret {
    ret := {res.address: object.get(res.attributes, "router_hostname", null) |
        res := resources_map[_]
        true
     }
}

