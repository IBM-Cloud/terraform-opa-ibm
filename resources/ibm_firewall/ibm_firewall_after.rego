package ibmcloud.resources.after.ibm_firewall
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_firewall"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_firewall").resources[_]
}
public_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_vlan_id", null) |
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
firewall_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "firewall_type", null) |
        res := resources_map[_]
        true
     }
}
ha_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ha_enabled", null) |
        res := resources_map[_]
        true
     }
}

