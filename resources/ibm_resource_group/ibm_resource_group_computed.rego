package ibmcloud.resources.computed.ibm_resource_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_resource_group"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_resource_group").resources[_]
}
default_ = ret {
    ret := {res.address: object.get(res.attributes, "default", null) |
        res := resources_map[_]
        true
     }
}
state_ = ret {
    ret := {res.address: object.get(res.attributes, "state_", null) |
        res := resources_map[_]
        true
     }
}

