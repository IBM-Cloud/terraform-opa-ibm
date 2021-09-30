package ibmcloud.resources.computed.ibm_dns_glb_monitor
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_glb_monitor"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_dns_glb_monitor").resources[_]
}
method = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "method", null) |
        res := resources_map[_]
        true
     }
}
path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "path", null) |
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
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}
allow_insecure = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allow_insecure", null) |
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
monitor_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "monitor_id", null) |
        res := resources_map[_]
        true
     }
}
expected_codes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expected_codes", null) |
        res := resources_map[_]
        true
     }
}

