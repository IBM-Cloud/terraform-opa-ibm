package ibmcloud.resources.prior.ibm_kms_key_policies
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_kms_key_policies"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_kms_key_policies").resources[_]
}
policies = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policies", null) |
        res := resources_map[_]
        true
     }
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}
endpoint_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_type", null) |
        res := resources_map[_]
        true
     }
}
key_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_id", null) |
        res := resources_map[_]
        true
     }
}

