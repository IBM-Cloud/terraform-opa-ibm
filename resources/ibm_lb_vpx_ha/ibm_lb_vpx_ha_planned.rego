package ibmcloud.resources.planned.ibm_lb_vpx_ha
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_lb_vpx_ha"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_lb_vpx_ha").resources[_]
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

