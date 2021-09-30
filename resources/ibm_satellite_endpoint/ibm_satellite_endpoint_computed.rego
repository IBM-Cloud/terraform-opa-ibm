package ibmcloud.resources.computed.ibm_satellite_endpoint
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_endpoint"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_satellite_endpoint").resources[_]
}
endpoint_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_id", null) |
        res := resources_map[_]
        true
     }
}
sources = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sources", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
connector_port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connector_port", null) |
        res := resources_map[_]
        true
     }
}
service_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_name", null) |
        res := resources_map[_]
        true
     }
}
client_host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_host", null) |
        res := resources_map[_]
        true
     }
}
last_change = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_change", null) |
        res := resources_map[_]
        true
     }
}
client_port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_port", null) |
        res := resources_map[_]
        true
     }
}
performance = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "performance", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}

