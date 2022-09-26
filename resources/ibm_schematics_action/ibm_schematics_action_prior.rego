package ibmcloud.resources.prior.ibm_schematics_action
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_action"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_schematics_action").resources[_]
}
action_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action_id", null) |
        res := resources_map[_]
        true
     }
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}

