package ibmcloud.resources.model.ibm_en_destination_safari
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_en_destination_safari"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_en_destination_safari").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_en_destination_safari", "managed").resources[_]
}
destination_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "destination_id", null) |
        res := resources_map[_]
        true
     }
}
subscription_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subscription_count", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
icon_32x32_2x = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "icon_32x32_2x", null) |
        res := resources_map[_]
        true
     }
}
icon_32x32_content_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "icon_32x32_content_type", null) |
        res := resources_map[_]
        true
     }
}
config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "config", null) |
        res := resources_map[_]
        true
     }
}
icon_32x32_2x_content_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "icon_32x32_2x_content_type", null) |
        res := resources_map[_]
        true
     }
}
icon_128x128_2x_content_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "icon_128x128_2x_content_type", null) |
        res := resources_map[_]
        true
     }
}
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
instance_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_guid", null) |
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
icon_16x16 = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "icon_16x16", null) |
        res := resources_map[_]
        true
     }
}
icon_128x128 = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "icon_128x128", null) |
        res := resources_map[_]
        true
     }
}
icon_16x16_content_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "icon_16x16_content_type", null) |
        res := resources_map[_]
        true
     }
}
subscription_names = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subscription_names", null) |
        res := resources_map[_]
        true
     }
}
certificate = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate", null) |
        res := resources_map[_]
        true
     }
}
icon_16x16_2x = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "icon_16x16_2x", null) |
        res := resources_map[_]
        true
     }
}
icon_32x32 = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "icon_32x32", null) |
        res := resources_map[_]
        true
     }
}
icon_128x128_content_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "icon_128x128_content_type", null) |
        res := resources_map[_]
        true
     }
}
icon_128x128_2x = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "icon_128x128_2x", null) |
        res := resources_map[_]
        true
     }
}
icon_16x16_2x_content_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "icon_16x16_2x_content_type", null) |
        res := resources_map[_]
        true
     }
}

