package ibmcloud.resources.computed.ibm_lb_vpx_ha
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_lb_vpx_ha"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_lb_vpx_ha").resources[_]
}
stay_secondary = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "stay_secondary", null) |
        res := resources_map[_]
        true
     }
}

