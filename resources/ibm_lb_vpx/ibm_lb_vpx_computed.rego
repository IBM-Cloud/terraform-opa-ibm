package ibmcloud.resources.computed.ibm_lb_vpx
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb_vpx"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_lb_vpx").resources[_]
}
public_vlan_id = ret {
    ret := {res.address: object.get(res.attributes, "public_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
public_subnet = ret {
    ret := {res.address: object.get(res.attributes, "public_subnet", null) |
        res := resources_map[_]
        true
     }
}
private_vlan_id = ret {
    ret := {res.address: object.get(res.attributes, "private_vlan_id", null) |
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
type = ret {
    ret := {res.address: object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
management_ip_address = ret {
    ret := {res.address: object.get(res.attributes, "management_ip_address", null) |
        res := resources_map[_]
        true
     }
}
private_subnet = ret {
    ret := {res.address: object.get(res.attributes, "private_subnet", null) |
        res := resources_map[_]
        true
     }
}
vip_pool = ret {
    ret := {res.address: object.get(res.attributes, "vip_pool", null) |
        res := resources_map[_]
        true
     }
}

