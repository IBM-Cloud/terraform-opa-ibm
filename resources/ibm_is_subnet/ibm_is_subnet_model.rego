package ibmcloud.resources.model.ibm_is_subnet
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_subnet"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_subnet").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_subnet", "managed").resources[_]
}
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
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
total_ipv4_address_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_ipv4_address_count", null) |
        res := resources_map[_]
        true
     }
}
ip_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_version", null) |
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
routing_table = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routing_table", null) |
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
ipv4_cidr_block = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv4_cidr_block", null) |
        res := resources_map[_]
        true
     }
}
available_ipv4_address_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "available_ipv4_address_count", null) |
        res := resources_map[_]
        true
     }
}
network_acl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_acl", null) |
        res := resources_map[_]
        true
     }
}
public_gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_gateway", null) |
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
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
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
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
        res := resources_map[_]
        true
     }
}
ipv6_cidr_block = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv6_cidr_block", null) |
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
resource_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_status", null) |
        res := resources_map[_]
        true
     }
}

