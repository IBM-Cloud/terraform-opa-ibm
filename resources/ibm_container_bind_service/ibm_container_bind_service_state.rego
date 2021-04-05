package ibmcloud.resources.state.ibm_container_bind_service
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_bind_service"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_bind_service", "managed").resources[_]
}
service_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_instance_id", null) |
        res := resources_map[_]
        true
     }
}
account_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_guid", null) |
        res := resources_map[_]
        true
     }
}
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
namespace_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "namespace_id", null) |
        res := resources_map[_]
        true
     }
}
org_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "org_guid", null) |
        res := resources_map[_]
        true
     }
}
space_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "space_guid", null) |
        res := resources_map[_]
        true
     }
}
key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key", null) |
        res := resources_map[_]
        true
     }
}
role = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "role", null) |
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
