package ibmcloud.resources.computed.ibm_network_vlan
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_network_vlan"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_network_vlan").resources[_]
}
router_hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "router_hostname", null) |
        res := resources_map[_]
        true
     }
}
softlayer_managed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "softlayer_managed", null) |
        res := resources_map[_]
        true
     }
}
child_resource_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "child_resource_count", null) |
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
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
        res := resources_map[_]
        true
     }
}
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
        res := resources_map[_]
        true
     }
}
vlan_number = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vlan_number", null) |
        res := resources_map[_]
        true
     }
}

