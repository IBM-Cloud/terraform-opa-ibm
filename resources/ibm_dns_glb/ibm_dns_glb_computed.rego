package ibmcloud.resources.computed.ibm_dns_glb
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_glb"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_dns_glb").resources[_]
}
glb_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "glb_id", null) |
        res := resources_map[_]
        true
     }
}
health = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health", null) |
        res := resources_map[_]
        true
     }
}
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
        res := resources_map[_]
        true
     }
}
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}
created_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_on", null) |
        res := resources_map[_]
        true
     }
}

