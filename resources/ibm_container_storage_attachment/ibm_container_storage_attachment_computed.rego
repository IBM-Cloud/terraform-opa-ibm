package ibmcloud.resources.computed.ibm_container_storage_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_storage_attachment"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_container_storage_attachment").resources[_]
}
volume_attachment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_attachment_id", null) |
        res := resources_map[_]
        true
     }
}
volume_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_type", null) |
        res := resources_map[_]
        true
     }
}
volume_attachment_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_attachment_name", null) |
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

