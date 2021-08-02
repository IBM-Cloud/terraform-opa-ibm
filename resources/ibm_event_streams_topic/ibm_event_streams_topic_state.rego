package ibmcloud.resources.state.ibm_event_streams_topic
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_event_streams_topic"
}

resources_map[attr]{
    attr := state.get_resources("ibm_event_streams_topic", "managed").resources[_]
}
config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "config", null) |
        res := resources_map[_]
        true
     }
}
resource_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_instance_id", null) |
        res := resources_map[_]
        true
     }
}
kafka_http_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "kafka_http_url", null) |
        res := resources_map[_]
        true
     }
}
kafka_brokers_sasl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "kafka_brokers_sasl", null) |
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
partitions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "partitions", null) |
        res := resources_map[_]
        true
     }
}
