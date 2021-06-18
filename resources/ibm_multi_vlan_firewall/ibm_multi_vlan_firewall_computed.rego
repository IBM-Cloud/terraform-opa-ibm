package ibmcloud.resources.computed.ibm_multi_vlan_firewall
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_multi_vlan_firewall"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_multi_vlan_firewall").resources[_]
}
public_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_ip", null) |
        res := resources_map[_]
        true
     }
}
public_ipv6 = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_ipv6", null) |
        res := resources_map[_]
        true
     }
}
public_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
private_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
private_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_ip", null) |
        res := resources_map[_]
        true
     }
}
username = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "username", null) |
        res := resources_map[_]
        true
     }
}
password = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "password", null) |
        res := resources_map[_]
        true
     }
}

