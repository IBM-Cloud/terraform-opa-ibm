package ibmcloud.resources.computed.ibm_pi_placement_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_placement_group"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_placement_group").resources[_]
}
placement_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "placement_group_id", null) |
        res := resources_map[_]
        true
     }
}
members = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "members", null) |
        res := resources_map[_]
        true
     }
}

