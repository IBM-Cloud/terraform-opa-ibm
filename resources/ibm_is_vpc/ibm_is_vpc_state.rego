package ibmcloud.resources.state.ibm_is_vpc
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_vpc", "managed").resources[_]
}
resource_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_name", null) |
        res := resources_map[_]
        true
     }
}
security_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_group", null) |
        res := resources_map[_]
        true
     }
}
subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnets", null) |
        res := resources_map[_]
        true
     }
}
default_network_acl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_network_acl", null) |
        res := resources_map[_]
        true
     }
}
default_routing_table = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_routing_table", null) |
        res := resources_map[_]
        true
     }
}
default_security_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_security_group_name", null) |
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
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
        res := resources_map[_]
        true
     }
}
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
        res := resources_map[_]
        true
     }
}
cse_source_addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cse_source_addresses", null) |
        res := resources_map[_]
        true
     }
}
classic_access = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "classic_access", null) |
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
default_network_acl_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_network_acl_name", null) |
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
address_prefix_management = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "address_prefix_management", null) |
        res := resources_map[_]
        true
     }
}
default_routing_table_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_routing_table_name", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
resource_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_crn", null) |
        res := resources_map[_]
        true
     }
}
resource_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_status", null) |
        res := resources_map[_]
        true
     }
}
default_security_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_security_group", null) |
        res := resources_map[_]
        true
     }
}
