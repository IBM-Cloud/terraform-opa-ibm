package ibmcloud.resources.state.data.ibm_database_backup
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_database_backup"
}

resources_map[attr]{
    attr := state.get_resources("ibm_database_backup", "data").resources[_]
}
is_restorable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_restorable", null) |
        res := resources_map[_]
        true
     }
}
download_link = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "download_link", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
backup_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "backup_id", null) |
        res := resources_map[_]
        true
     }
}
deployment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "deployment_id", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
is_downloadable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_downloadable", null) |
        res := resources_map[_]
        true
     }
}
