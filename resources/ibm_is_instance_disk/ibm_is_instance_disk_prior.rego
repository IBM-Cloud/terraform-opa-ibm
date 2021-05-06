package ibmcloud.resources.prior.ibm_is_instance_disk
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_disk"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_instance_disk").resources[_]
}
instance = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance", null) |
        res := resources_map[_]
        true
     }
}
disk = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk", null) |
        res := resources_map[_]
        true
     }
}

