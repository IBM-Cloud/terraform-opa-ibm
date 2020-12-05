package ibmcloud.resources.after.ibm_cis_firewall
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_firewall"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cis_firewall").resources[_]
}
cis_id = ret {
    ret := {res.address: object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {res.address: object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
firewall_type = ret {
    ret := {res.address: object.get(res.attributes, "firewall_type", null) |
        res := resources_map[_]
        true
     }
}
lockdown = ret {
    ret := {res.address: object.get(res.attributes, "lockdown", null) |
        res := resources_map[_]
        true
     }
}
access_rule = ret {
    ret := {res.address: object.get(res.attributes, "access_rule", null) |
        res := resources_map[_]
        true
     }
}
ua_rule = ret {
    ret := {res.address: object.get(res.attributes, "ua_rule", null) |
        res := resources_map[_]
        true
     }
}

