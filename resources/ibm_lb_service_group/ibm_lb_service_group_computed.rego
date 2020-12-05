package ibmcloud.resources.computed.ibm_lb_service_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb_service_group"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_lb_service_group").resources[_]
}
virtual_server_id = ret {
    ret := {res.address: object.get(res.attributes, "virtual_server_id", null) |
        res := resources_map[_]
        true
     }
}
service_group_id = ret {
    ret := {res.address: object.get(res.attributes, "service_group_id", null) |
        res := resources_map[_]
        true
     }
}

