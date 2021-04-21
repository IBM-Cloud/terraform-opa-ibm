package ibmcloud.resources.computed.ibm_is_vpc
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_vpc").resources[_]
}
default_network_acl_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_network_acl_name", null) |
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
default_network_acl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_network_acl", null) |
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
resource_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_status", null) |
        res := resources_map[_]
        true
     }
}
resource_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_name", null) |
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
default_routing_table_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_routing_table_name", null) |
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
default_security_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_security_group_name", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
default_routing_table = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_routing_table", null) |
        res := resources_map[_]
        true
     }
}

