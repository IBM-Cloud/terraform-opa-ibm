package ibmcloud.resources.planned.ibm_event_streams_topic
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_event_streams_topic"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_event_streams_topic").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
partitions = ret {
    ret := {res.address: object.get(res.attributes, "partitions", null) |
        res := resources_map[_]
        true
     }
}
config = ret {
    ret := {res.address: object.get(res.attributes, "config", null) |
        res := resources_map[_]
        true
     }
}
resource_instance_id = ret {
    ret := {res.address: object.get(res.attributes, "resource_instance_id", null) |
        res := resources_map[_]
        true
     }
}

