package ibmcloud.resources.state.ibm_is_dedicated_host_group
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_dedicated_host_group"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_dedicated_host_group", "managed").resources[_]
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
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
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
resource_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_type", null) |
        res := resources_map[_]
        true
     }
}
supported_instance_profiles = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "supported_instance_profiles", null) |
        res := resources_map[_]
        true
     }
}
class = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "class", null) |
        res := resources_map[_]
        true
     }
}
family = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "family", null) |
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
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
dedicated_hosts = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dedicated_hosts", null) |
        res := resources_map[_]
        true
     }
}
