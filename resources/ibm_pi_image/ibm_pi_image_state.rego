package ibmcloud.resources.state.ibm_pi_image
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_image"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_image", "managed").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_image_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_image_name", null) |
        res := resources_map[_]
        true
     }
}
pi_image_bucket_access = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_image_bucket_access", null) |
        res := resources_map[_]
        true
     }
}
pi_image_bucket_file_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_image_bucket_file_name", null) |
        res := resources_map[_]
        true
     }
}
pi_image_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_image_id", null) |
        res := resources_map[_]
        true
     }
}
pi_image_bucket_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_image_bucket_name", null) |
        res := resources_map[_]
        true
     }
}
pi_image_access_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_image_access_key", null) |
        res := resources_map[_]
        true
     }
}
pi_image_secret_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_image_secret_key", null) |
        res := resources_map[_]
        true
     }
}
pi_image_bucket_region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_image_bucket_region", null) |
        res := resources_map[_]
        true
     }
}
pi_image_storage_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_image_storage_type", null) |
        res := resources_map[_]
        true
     }
}
image_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "image_id", null) |
        res := resources_map[_]
        true
     }
}
