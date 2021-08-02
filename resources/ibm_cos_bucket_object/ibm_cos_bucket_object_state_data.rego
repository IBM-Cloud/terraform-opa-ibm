package ibmcloud.resources.state.data.ibm_cos_bucket_object
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cos_bucket_object"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cos_bucket_object", "data").resources[_]
}
key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key", null) |
        res := resources_map[_]
        true
     }
}
body = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "body", null) |
        res := resources_map[_]
        true
     }
}
bucket_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bucket_crn", null) |
        res := resources_map[_]
        true
     }
}
content_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "content_type", null) |
        res := resources_map[_]
        true
     }
}
etag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "etag", null) |
        res := resources_map[_]
        true
     }
}
last_modified = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_modified", null) |
        res := resources_map[_]
        true
     }
}
version_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version_id", null) |
        res := resources_map[_]
        true
     }
}
bucket_location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bucket_location", null) |
        res := resources_map[_]
        true
     }
}
content_length = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "content_length", null) |
        res := resources_map[_]
        true
     }
}
endpoint_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_type", null) |
        res := resources_map[_]
        true
     }
}
