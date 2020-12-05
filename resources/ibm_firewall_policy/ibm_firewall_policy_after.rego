package ibmcloud.resources.after.ibm_firewall_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_firewall_policy"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_firewall_policy").resources[_]
}
firewall_id = ret {
    ret := {res.address: object.get(res.attributes, "firewall_id", null) |
        res := resources_map[_]
        true
     }
}
rules = ret {
    ret := {res.address: object.get(res.attributes, "rules", null) |
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

