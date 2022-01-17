package ibmcloud.resources.model.ibm_satellite_endpoint
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_endpoint"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_satellite_endpoint").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_satellite_endpoint", "managed").resources[_]
}
connector_port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connector_port", null) |
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
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
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
server_protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "server_protocol", null) |
        res := resources_map[_]
        true
     }
}
server_host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "server_host", null) |
        res := resources_map[_]
        true
     }
}
client_mutual_auth = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_mutual_auth", null) |
        res := resources_map[_]
        true
     }
}
server_mutual_auth = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "server_mutual_auth", null) |
        res := resources_map[_]
        true
     }
}
created_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by", null) |
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
client_host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_host", null) |
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
server_port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "server_port", null) |
        res := resources_map[_]
        true
     }
}
sni = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sni", null) |
        res := resources_map[_]
        true
     }
}
client_protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_protocol", null) |
        res := resources_map[_]
        true
     }
}
reject_unauth = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reject_unauth", null) |
        res := resources_map[_]
        true
     }
}
timeout = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "timeout", null) |
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
connection_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connection_type", null) |
        res := resources_map[_]
        true
     }
}
certs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certs", null) |
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
client_port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_port", null) |
        res := resources_map[_]
        true
     }
}
endpoint_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_id", null) |
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
display_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "display_name", null) |
        res := resources_map[_]
        true
     }
}

