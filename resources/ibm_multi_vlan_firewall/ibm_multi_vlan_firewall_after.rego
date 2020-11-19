package ibmcloud.resources.after.ibm_multi_vlan_firewall
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_multi_vlan_firewall"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_multi_vlan_firewall").resources[_]
}
pod = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pod", null) |
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
firewall_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "firewall_type", null) |
        res := resources_map[_]
        true
     }
}
datacenter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "datacenter", null) |
        res := resources_map[_]
        true
     }
}
addon_configuration = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "addon_configuration", null) |
        res := resources_map[_]
        true
     }
}

