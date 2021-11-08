package ibmcloud.resources.state.ibm_cdn
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cdn"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cdn", "managed").resources[_]
}
https_port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "https_port", null) |
        res := resources_map[_]
        true
     }
}
file_extension = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "file_extension", null) |
        res := resources_map[_]
        true
     }
}
cache_key_query_rule = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cache_key_query_rule", null) |
        res := resources_map[_]
        true
     }
}
path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "path", null) |
        res := resources_map[_]
        true
     }
}
host_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_name", null) |
        res := resources_map[_]
        true
     }
}
vendor_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vendor_name", null) |
        res := resources_map[_]
        true
     }
}
origin_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "origin_address", null) |
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
cname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cname", null) |
        res := resources_map[_]
        true
     }
}
origin_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "origin_type", null) |
        res := resources_map[_]
        true
     }
}
bucket_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bucket_name", null) |
        res := resources_map[_]
        true
     }
}
http_port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "http_port", null) |
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
header = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "header", null) |
        res := resources_map[_]
        true
     }
}
certificate_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate_type", null) |
        res := resources_map[_]
        true
     }
}
respect_headers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "respect_headers", null) |
        res := resources_map[_]
        true
     }
}
performance_configuration = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "performance_configuration", null) |
        res := resources_map[_]
        true
     }
}
