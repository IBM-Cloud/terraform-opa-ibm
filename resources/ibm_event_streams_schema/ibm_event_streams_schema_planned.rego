package ibmcloud.resources.planned.ibm_event_streams_schema
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_event_streams_schema"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_event_streams_schema").resources[_]
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
resource_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_instance_id", null) |
        res := resources_map[_]
        true
     }
}

