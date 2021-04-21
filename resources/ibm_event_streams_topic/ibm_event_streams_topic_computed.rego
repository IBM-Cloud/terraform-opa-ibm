package ibmcloud.resources.computed.ibm_event_streams_topic
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_event_streams_topic"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_event_streams_topic").resources[_]
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

