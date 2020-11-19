package ibmcloud.resources.computed.ibm_pi_volume
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_pi_volume"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_volume").resources[_]
}
delete_on_termination = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "delete_on_termination", null) |
        res := resources_map[_]
        true
     }
}
volume_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_id", null) |
        res := resources_map[_]
        true
     }
}
volume_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_status", null) |
        res := resources_map[_]
        true
     }
}
wwn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wwn", null) |
        res := resources_map[_]
        true
     }
}

