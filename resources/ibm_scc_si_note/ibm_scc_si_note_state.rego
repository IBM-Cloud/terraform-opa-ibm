package ibmcloud.resources.state.ibm_scc_si_note
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_si_note"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_si_note", "managed").resources[_]
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
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
short_description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "short_description", null) |
        res := resources_map[_]
        true
     }
}
long_description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "long_description", null) |
        res := resources_map[_]
        true
     }
}
reported_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reported_by", null) |
        res := resources_map[_]
        true
     }
}
shared = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "shared", null) |
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
section = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "section", null) |
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
kind = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "kind", null) |
        res := resources_map[_]
        true
     }
}
note_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "note_id", null) |
        res := resources_map[_]
        true
     }
}
related_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "related_url", null) |
        res := resources_map[_]
        true
     }
}
card = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "card", null) |
        res := resources_map[_]
        true
     }
}
