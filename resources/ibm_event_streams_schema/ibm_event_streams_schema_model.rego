package ibmcloud.resources.model.ibm_event_streams_schema
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_event_streams_schema"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_event_streams_schema").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_event_streams_schema", "managed").resources[_]
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
schema = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "schema", null) |
        res := resources_map[_]
        true
     }
}
schema_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "schema_id", null) |
        res := resources_map[_]
        true
     }
}

