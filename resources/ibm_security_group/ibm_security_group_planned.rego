package ibmcloud.resources.planned.ibm_security_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_security_group"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_security_group").resources[_]
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

