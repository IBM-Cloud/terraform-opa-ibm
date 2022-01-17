package ibmcloud.resources.after.ibm_pi_ipsec_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_ipsec_policy"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_pi_ipsec_policy").resources[_]
}
pi_policy_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_policy_name", null) |
        res := resources_map[_]
        true
     }
}
pi_policy_dh_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_policy_dh_group", null) |
        res := resources_map[_]
        true
     }
}
pi_policy_encryption = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_policy_encryption", null) |
        res := resources_map[_]
        true
     }
}
pi_policy_key_lifetime = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_policy_key_lifetime", null) |
        res := resources_map[_]
        true
     }
}
pi_policy_pfs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_policy_pfs", null) |
        res := resources_map[_]
        true
     }
}
pi_policy_authentication = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_policy_authentication", null) |
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

