package ibmcloud.resources.after.ibm_pi_volume_attach
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_volume_attach"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_pi_volume_attach").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_volume_attach_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_volume_attach_name", null) |
        res := resources_map[_]
        true
     }
}
pi_instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_instance_name", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
pi_volume_shareable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_volume_shareable", null) |
        res := resources_map[_]
        true
     }
}
volumeattachid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volumeattachid", null) |
        res := resources_map[_]
        true
     }
}

