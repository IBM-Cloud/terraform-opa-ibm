package ibmcloud.resources.after.ibm_pi_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_key"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_pi_key").resources[_]
}
pi_ssh_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_ssh_key", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_key_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_key_name", null) |
        res := resources_map[_]
        true
     }
}

