package ibmcloud.resources.state.data.ibm_scc_si_occurrence
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_si_occurrence"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_si_occurrence", "data").resources[_]
}
occurrence_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "occurrence_id", null) |
        res := resources_map[_]
        true
     }
}
note_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "note_name", null) |
        res := resources_map[_]
        true
     }
}
remediation = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "remediation", null) |
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
finding = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "finding", null) |
        res := resources_map[_]
        true
     }
}
kpi = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "kpi", null) |
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
resource_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_url", null) |
        res := resources_map[_]
        true
     }
}
kind = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "kind", null) |
        res := resources_map[_]
        true
     }
}
create_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "create_time", null) |
        res := resources_map[_]
        true
     }
}
context = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "context", null) |
        res := resources_map[_]
        true
     }
}
provider_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "provider_id", null) |
        res := resources_map[_]
        true
     }
}
