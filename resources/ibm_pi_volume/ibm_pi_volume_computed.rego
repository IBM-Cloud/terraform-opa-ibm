package ibmcloud.resources.computed.ibm_pi_volume
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_volume"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_volume").resources[_]
}
volume_id = ret {
    ret := {res.address: object.get(res.attributes, "volume_id", null) |
        res := resources_map[_]
        true
     }
}
delete_on_termination = ret {
    ret := {res.address: object.get(res.attributes, "delete_on_termination", null) |
        res := resources_map[_]
        true
     }
}
wwn = ret {
    ret := {res.address: object.get(res.attributes, "wwn", null) |
        res := resources_map[_]
        true
     }
}
volume_status = ret {
    ret := {res.address: object.get(res.attributes, "volume_status", null) |
        res := resources_map[_]
        true
     }
}

