package ibmcloud.resources.planned.ibm_multi_vlan_firewall
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_multi_vlan_firewall"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_multi_vlan_firewall").resources[_]
}
datacenter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "datacenter", null) |
        res := resources_map[_]
        true
     }
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
addon_configuration = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "addon_configuration", null) |
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

