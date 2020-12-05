package ibmcloud.resources.planned.ibm_dns_record
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_record"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_record").resources[_]
}
service = ret {
    ret := {res.address: object.get(res.attributes, "service", null) |
        res := resources_map[_]
        true
     }
}
protocol = ret {
    ret := {res.address: object.get(res.attributes, "protocol", null) |
        res := resources_map[_]
        true
     }
}
host = ret {
    ret := {res.address: object.get(res.attributes, "host", null) |
        res := resources_map[_]
        true
     }
}
responsible_person = ret {
    ret := {res.address: object.get(res.attributes, "responsible_person", null) |
        res := resources_map[_]
        true
     }
}
minimum_ttl = ret {
    ret := {res.address: object.get(res.attributes, "minimum_ttl", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {res.address: object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
data = ret {
    ret := {res.address: object.get(res.attributes, "data", null) |
        res := resources_map[_]
        true
     }
}
refresh = ret {
    ret := {res.address: object.get(res.attributes, "refresh", null) |
        res := resources_map[_]
        true
     }
}
port = ret {
    ret := {res.address: object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}
expire = ret {
    ret := {res.address: object.get(res.attributes, "expire", null) |
        res := resources_map[_]
        true
     }
}
mx_priority = ret {
    ret := {res.address: object.get(res.attributes, "mx_priority", null) |
        res := resources_map[_]
        true
     }
}
priority = ret {
    ret := {res.address: object.get(res.attributes, "priority", null) |
        res := resources_map[_]
        true
     }
}
weight = ret {
    ret := {res.address: object.get(res.attributes, "weight", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {res.address: object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
retry = ret {
    ret := {res.address: object.get(res.attributes, "retry", null) |
        res := resources_map[_]
        true
     }
}
ttl = ret {
    ret := {res.address: object.get(res.attributes, "ttl", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}

