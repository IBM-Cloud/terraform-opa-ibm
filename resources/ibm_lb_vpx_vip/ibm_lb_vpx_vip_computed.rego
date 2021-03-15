package ibmcloud.resources.computed.ibm_lb_vpx_vip
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb_vpx_vip"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_lb_vpx_vip").resources[_]
}
persistence = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "persistence", null) |
        res := resources_map[_]
        true
     }
}

