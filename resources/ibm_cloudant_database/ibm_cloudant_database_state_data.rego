package ibmcloud.resources.state.data.ibm_cloudant_database
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cloudant_database"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cloudant_database", "data").resources[_]
}
db = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "db", null) |
        res := resources_map[_]
        true
     }
}
disk_format_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk_format_version", null) |
        res := resources_map[_]
        true
     }
}
doc_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "doc_count", null) |
        res := resources_map[_]
        true
     }
}
committed_update_seq = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "committed_update_seq", null) |
        res := resources_map[_]
        true
     }
}
compact_running = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "compact_running", null) |
        res := resources_map[_]
        true
     }
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}
doc_del_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "doc_del_count", null) |
        res := resources_map[_]
        true
     }
}
props = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "props", null) |
        res := resources_map[_]
        true
     }
}
update_seq = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "update_seq", null) |
        res := resources_map[_]
        true
     }
}
instance_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_crn", null) |
        res := resources_map[_]
        true
     }
}
compacted_seq = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "compacted_seq", null) |
        res := resources_map[_]
        true
     }
}
engine = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "engine", null) |
        res := resources_map[_]
        true
     }
}
sizes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sizes", null) |
        res := resources_map[_]
        true
     }
}
uuid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uuid", null) |
        res := resources_map[_]
        true
     }
}
