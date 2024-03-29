package ibmcloud.resources.prior.ibm_container_storage_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_storage_attachment"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_storage_attachment").resources[_]
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
volume_attachment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_attachment_id", null) |
        res := resources_map[_]
        true
     }
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}
worker = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker", null) |
        res := resources_map[_]
        true
     }
}

