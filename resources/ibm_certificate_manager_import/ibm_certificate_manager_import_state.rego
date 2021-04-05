package ibmcloud.resources.state.ibm_certificate_manager_import
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_certificate_manager_import"
}

resources_map[attr]{
    attr := state.get_resources("ibm_certificate_manager_import", "managed").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
data = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "data", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
begins_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "begins_on", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
key_algorithm = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_algorithm", null) |
        res := resources_map[_]
        true
     }
}
certificate_manager_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate_manager_instance_id", null) |
        res := resources_map[_]
        true
     }
}
expires_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expires_on", null) |
        res := resources_map[_]
        true
     }
}
imported = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "imported", null) |
        res := resources_map[_]
        true
     }
}
has_previous = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "has_previous", null) |
        res := resources_map[_]
        true
     }
}
algorithm = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "algorithm", null) |
        res := resources_map[_]
        true
     }
}
issuer = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "issuer", null) |
        res := resources_map[_]
        true
     }
}
