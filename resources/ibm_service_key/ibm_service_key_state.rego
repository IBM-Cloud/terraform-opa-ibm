package ibmcloud.resources.state.ibm_service_key
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_service_key"
}

resources_map[attr]{
    attr := state.get_resources("ibm_service_key", "managed").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
service_instance_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_instance_guid", null) |
        res := resources_map[_]
        true
     }
}
parameters = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "parameters", null) |
        res := resources_map[_]
        true
     }
}
credentials = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credentials", null) |
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
