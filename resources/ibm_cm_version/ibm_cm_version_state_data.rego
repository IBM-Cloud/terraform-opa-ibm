package ibmcloud.resources.state.data.ibm_cm_version
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cm_version"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cm_version", "data").resources[_]
}
catalog_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_id", null) |
        res := resources_map[_]
        true
     }
}
repo_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "repo_url", null) |
        res := resources_map[_]
        true
     }
}
source_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_url", null) |
        res := resources_map[_]
        true
     }
}
tgz_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tgz_url", null) |
        res := resources_map[_]
        true
     }
}
version_loc_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version_loc_id", null) |
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
version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}
sha = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sha", null) |
        res := resources_map[_]
        true
     }
}
