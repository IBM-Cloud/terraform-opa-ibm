package ibmcloud.resources.state.data.ibm_cm_catalog
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cm_catalog"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cm_catalog", "data").resources[_]
}
offerings_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offerings_url", null) |
        res := resources_map[_]
        true
     }
}
catalog_identifier = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_identifier", null) |
        res := resources_map[_]
        true
     }
}
label = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "label", null) |
        res := resources_map[_]
        true
     }
}
short_description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "short_description", null) |
        res := resources_map[_]
        true
     }
}
catalog_icon_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_icon_url", null) |
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
url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "url", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
