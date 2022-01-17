package ibmcloud.resources.planned.ibm_dns_resource_record
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_resource_record"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_resource_record").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
rdata = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rdata", null) |
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
zone_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone_id", null) |
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
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
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
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
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
service = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service", null) |
        res := resources_map[_]
        true
     }
}
preference = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "preference", null) |
        res := resources_map[_]
        true
     }
}

