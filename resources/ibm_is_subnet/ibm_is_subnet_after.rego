package ibmcloud.resources.after.ibm_is_subnet
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_subnet"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_subnet").resources[_]
}
total_ipv4_address_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_ipv4_address_count", null) |
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
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
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
ipv4_cidr_block = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv4_cidr_block", null) |
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
access_tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "access_tags", null) |
        res := resources_map[_]
        true
     }
}

