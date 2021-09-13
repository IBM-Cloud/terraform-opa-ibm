package ibmcloud.resources.model.ibm_cm_version
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cm_version"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cm_version").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_cm_version", "managed").resources[_]
}
updated = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated", null) |
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
target_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_version", null) |
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
source_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_url", null) |
        res := resources_map[_]
        true
     }
}
offering_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offering_id", null) |
        res := resources_map[_]
        true
     }
}
created = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created", null) |
        res := resources_map[_]
        true
     }
}
catalog_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_id", null) |
        res := resources_map[_]
        true
     }
}
kind_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "kind_id", null) |
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
zipurl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zipurl", null) |
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
target_kinds = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_kinds", null) |
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
catalog_identifier = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_identifier", null) |
        res := resources_map[_]
        true
     }
}

