package ibmcloud.resources.after.ibm_cis_filter
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_filter"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cis_filter").resources[_]
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
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}

