package ibmcloud.resources.model.ibm_firewall_policy
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_firewall_policy"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_firewall_policy").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_firewall_policy", "managed").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
firewall_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "firewall_id", null) |
        res := resources_map[_]
        true
     }
}
rules = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rules", null) |
        res := resources_map[_]
        true
     }
}

