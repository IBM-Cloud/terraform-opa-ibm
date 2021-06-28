package ibmcloud.resources.planned.ibm_cis_page_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_page_rule"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_page_rule").resources[_]
}
targets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "targets", null) |
        res := resources_map[_]
        true
     }
}
actions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "actions", null) |
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
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
priority = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "priority", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}

