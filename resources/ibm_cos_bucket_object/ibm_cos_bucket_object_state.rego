package ibmcloud.resources.state.ibm_cos_bucket_object
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cos_bucket_object"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cos_bucket_object", "managed").resources[_]
}
force_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "force_delete", null) |
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
etag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "etag", null) |
        res := resources_map[_]
        true
     }
}
key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key", null) |
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
object_sql_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "object_sql_url", null) |
        res := resources_map[_]
        true
     }
}
content = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "content", null) |
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
content_length = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "content_length", null) |
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
content_base64 = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "content_base64", null) |
        res := resources_map[_]
        true
     }
}
content_file = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "content_file", null) |
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
version_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version_id", null) |
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
