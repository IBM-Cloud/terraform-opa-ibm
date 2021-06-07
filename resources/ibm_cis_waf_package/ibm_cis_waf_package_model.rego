package ibmcloud.resources.model.ibm_cis_waf_package
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_waf_package"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_waf_package").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_cis_waf_package", "managed").resources[_]
}
sensitivity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sensitivity", null) |
        res := resources_map[_]
        true
     }
}
action_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action_mode", null) |
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
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
package_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "package_id", null) |
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
detection_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "detection_mode", null) |
        res := resources_map[_]
        true
     }
}

