package ibmcloud.resources.computed.ibm_compute_ssh_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_compute_ssh_key"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_compute_ssh_key").resources[_]
}
fingerprint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "fingerprint", null) |
        res := resources_map[_]
        true
     }
}

