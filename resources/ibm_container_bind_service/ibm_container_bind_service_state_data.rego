package ibmcloud.resources.state.data.ibm_container_bind_service
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_bind_service"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_bind_service", "data").resources[_]
}
namespace_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "namespace_id", null) |
        res := resources_map[_]
        true
     }
}
service_key_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_key_name", null) |
        res := resources_map[_]
        true
     }
}
cluster_name_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster_name_id", null) |
        res := resources_map[_]
        true
     }
}
service_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_instance_id", null) |
        res := resources_map[_]
        true
     }
}
service_instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_instance_name", null) |
        res := resources_map[_]
        true
     }
}
