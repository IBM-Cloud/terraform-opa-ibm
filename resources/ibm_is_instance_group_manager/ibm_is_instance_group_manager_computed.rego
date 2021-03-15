package ibmcloud.resources.computed.ibm_is_instance_group_manager
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_group_manager"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_instance_group_manager").resources[_]
}
manager_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "manager_id", null) |
        res := resources_map[_]
        true
     }
}
policies = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policies", null) |
        res := resources_map[_]
        true
     }
}

