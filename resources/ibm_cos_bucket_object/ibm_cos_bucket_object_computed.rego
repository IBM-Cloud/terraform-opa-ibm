package ibmcloud.resources.computed.ibm_cos_bucket_object
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cos_bucket_object"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cos_bucket_object").resources[_]
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
object_sql_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "object_sql_url", null) |
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

