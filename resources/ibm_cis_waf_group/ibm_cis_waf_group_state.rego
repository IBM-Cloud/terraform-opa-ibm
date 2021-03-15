package ibmcloud.resources.state.ibm_cis_waf_group
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_waf_group"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_waf_group", "managed").resources[_]
}
package_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "package_id", null) |
        res := resources_map[_]
        true
     }
}
group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "group_id", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
rules_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rules_count", null) |
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
mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mode", null) |
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
modified_rules_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_rules_count", null) |
        res := resources_map[_]
        true
     }
}
