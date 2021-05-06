package ibmcloud.resources.prior.ibm_is_instance_disks
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_disks"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_instance_disks").resources[_]
}
instance = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance", null) |
        res := resources_map[_]
        true
     }
}

