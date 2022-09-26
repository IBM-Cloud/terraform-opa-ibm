package ibmcloud.resources.state.data.ibm_database_connection
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_database_connection"
}

resources_map[attr]{
    attr := state.get_resources("ibm_database_connection", "data").resources[_]
}
https = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "https", null) |
        res := resources_map[_]
        true
     }
}
bi_connector = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bi_connector", null) |
        res := resources_map[_]
        true
     }
}
user_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_id", null) |
        res := resources_map[_]
        true
     }
}
rediss = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rediss", null) |
        res := resources_map[_]
        true
     }
}
mqtts = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mqtts", null) |
        res := resources_map[_]
        true
     }
}
secure = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secure", null) |
        res := resources_map[_]
        true
     }
}
emp = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "emp", null) |
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
cli = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cli", null) |
        res := resources_map[_]
        true
     }
}
postgres = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "postgres", null) |
        res := resources_map[_]
        true
     }
}
amqps = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "amqps", null) |
        res := resources_map[_]
        true
     }
}
grpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "grpc", null) |
        res := resources_map[_]
        true
     }
}
mongodb = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mongodb", null) |
        res := resources_map[_]
        true
     }
}
analytics = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "analytics", null) |
        res := resources_map[_]
        true
     }
}
ops_manager = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ops_manager", null) |
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
mysql = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mysql", null) |
        res := resources_map[_]
        true
     }
}
stomp_ssl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "stomp_ssl", null) |
        res := resources_map[_]
        true
     }
}
