package ibmcloud.resources.planned.ibm_pi_console_language
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_console_language"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_pi_console_language").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_instance_name", null) |
        res := resources_map[_]
        true
     }
}
pi_language_code = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_language_code", null) |
        res := resources_map[_]
        true
     }
}

