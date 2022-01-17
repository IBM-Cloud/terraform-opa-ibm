package ibmcloud.resources.computed.ibm_cis_waf_package
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_waf_package"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_waf_package").resources[_]
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
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

