package ibmcloud.resources.after.ibm_is_instance_action
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_action"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_instance_action").resources[_]
}
instance = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance", null) |
        res := resources_map[_]
        true
     }
}
action = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action", null) |
        res := resources_map[_]
        true
     }
}
force_action = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "force_action", null) |
        res := resources_map[_]
        true
     }
}

