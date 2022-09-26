package ibmcloud.resources.computed.ibm_scc_si_occurrence
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_si_occurrence"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_scc_si_occurrence").resources[_]
}
create_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "create_time", null) |
        res := resources_map[_]
        true
     }
}
update_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "update_time", null) |
        res := resources_map[_]
        true
     }
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}

