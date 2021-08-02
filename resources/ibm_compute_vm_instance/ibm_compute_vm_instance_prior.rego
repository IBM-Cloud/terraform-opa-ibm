package ibmcloud.resources.prior.ibm_compute_vm_instance
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_vm_instance"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_compute_vm_instance").resources[_]
}
hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hostname", null) |
        res := resources_map[_]
        true
     }
}
domain = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain", null) |
        res := resources_map[_]
        true
     }
}
most_recent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "most_recent", null) |
        res := resources_map[_]
        true
     }
}

