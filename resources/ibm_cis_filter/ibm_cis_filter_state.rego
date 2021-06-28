package ibmcloud.resources.state.ibm_cis_filter
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_filter"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_filter", "managed").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
paused = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "paused", null) |
        res := resources_map[_]
        true
     }
}
filter_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "filter_id", null) |
        res := resources_map[_]
        true
     }
}
expression = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expression", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
