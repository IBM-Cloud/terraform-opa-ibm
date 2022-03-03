package ibmcloud.resources.prior.ibm_secrets_manager_secrets
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_secrets_manager_secrets"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_secrets_manager_secrets").resources[_]
}
endpoint_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_type", null) |
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
secret_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secret_type", null) |
        res := resources_map[_]
        true
     }
}

