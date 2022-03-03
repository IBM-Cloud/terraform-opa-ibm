package ibmcloud.resources.after.ibm_lb_vpx_ha
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb_vpx_ha"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_lb_vpx_ha").resources[_]
}
stay_secondary = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "stay_secondary", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
primary_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "primary_id", null) |
        res := resources_map[_]
        true
     }
}
secondary_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secondary_id", null) |
        res := resources_map[_]
        true
     }
}

