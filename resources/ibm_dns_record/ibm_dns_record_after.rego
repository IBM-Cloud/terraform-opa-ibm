package ibmcloud.resources.after.ibm_dns_record
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_record"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_dns_record").resources[_]
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
service = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service", null) |
        res := resources_map[_]
        true
     }
}
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
refresh = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "refresh", null) |
        res := resources_map[_]
        true
     }
}
responsible_person = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "responsible_person", null) |
        res := resources_map[_]
        true
     }
}
expire = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expire", null) |
        res := resources_map[_]
        true
     }
}
retry = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "retry", null) |
        res := resources_map[_]
        true
     }
}
priority = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "priority", null) |
        res := resources_map[_]
        true
     }
}
weight = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "weight", null) |
        res := resources_map[_]
        true
     }
}
host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host", null) |
        res := resources_map[_]
        true
     }
}
minimum_ttl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "minimum_ttl", null) |
        res := resources_map[_]
        true
     }
}
ttl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ttl", null) |
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
data = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "data", null) |
        res := resources_map[_]
        true
     }
}
mx_priority = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mx_priority", null) |
        res := resources_map[_]
        true
     }
}
protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "protocol", null) |
        res := resources_map[_]
        true
     }
}

