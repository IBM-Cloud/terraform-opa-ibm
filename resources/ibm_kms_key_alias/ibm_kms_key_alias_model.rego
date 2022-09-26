package ibmcloud.resources.model.ibm_kms_key_alias
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_kms_key_alias"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_kms_key_alias").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_kms_key_alias", "managed").resources[_]
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}
alias = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "alias", null) |
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
existing_alias = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "existing_alias", null) |
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

