package ibmcloud.resources.computed.ibm_is_instance_template
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_template"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_instance_template").resources[_]
}
volume_attachments = ret {
    ret := {res.address: object.get(res.attributes, "volume_attachments", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {res.address: object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
boot_volume = ret {
    ret := {res.address: object.get(res.attributes, "boot_volume", null) |
        res := resources_map[_]
        true
     }
}

