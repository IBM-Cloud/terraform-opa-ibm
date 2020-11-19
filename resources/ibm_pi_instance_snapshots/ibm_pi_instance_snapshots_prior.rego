package ibmcloud.resources.prior.ibm_pi_instance_snapshots
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_pi_instance_snapshots"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_pi_instance_snapshots").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}

