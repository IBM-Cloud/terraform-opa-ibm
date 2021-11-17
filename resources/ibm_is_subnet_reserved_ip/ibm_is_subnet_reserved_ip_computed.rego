package ibmcloud.resources.computed.ibm_is_subnet_reserved_ip
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_subnet_reserved_ip"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_subnet_reserved_ip").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
target = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target", null) |
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
owner = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "owner", null) |
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
auto_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "auto_delete", null) |
        res := resources_map[_]
        true
     }
}
address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "address", null) |
        res := resources_map[_]
        true
     }
}
reserved_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reserved_ip", null) |
        res := resources_map[_]
        true
     }
}

