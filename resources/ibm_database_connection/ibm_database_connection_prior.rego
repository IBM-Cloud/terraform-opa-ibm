package ibmcloud.resources.prior.ibm_database_connection
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_database_connection"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_database_connection").resources[_]
}
user_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_id", null) |
        res := resources_map[_]
        true
     }
}
deployment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "deployment_id", null) |
        res := resources_map[_]
        true
     }
}
user_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_type", null) |
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

