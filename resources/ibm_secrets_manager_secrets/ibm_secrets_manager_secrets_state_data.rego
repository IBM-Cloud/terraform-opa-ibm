package ibmcloud.resources.state.data.ibm_secrets_manager_secrets
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_secrets_manager_secrets"
}

resources_map[attr]{
    attr := state.get_resources("ibm_secrets_manager_secrets", "data").resources[_]
}
secrets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secrets", null) |
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
endpoint_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_type", null) |
        res := resources_map[_]
        true
     }
}
metadata = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "metadata", null) |
        res := resources_map[_]
        true
     }
}
