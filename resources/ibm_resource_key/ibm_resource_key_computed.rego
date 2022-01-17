package ibmcloud.resources.computed.ibm_resource_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_resource_key"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_resource_key").resources[_]
}
url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "url", null) |
        res := resources_map[_]
        true
     }
}
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
        res := resources_map[_]
        true
     }
}
iam_compatible = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iam_compatible", null) |
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
credentials = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credentials", null) |
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
updated_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_by", null) |
        res := resources_map[_]
        true
     }
}
credentials_json = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credentials_json", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
source_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_crn", null) |
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
deleted_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "deleted_at", null) |
        res := resources_map[_]
        true
     }
}
created_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by", null) |
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
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}
guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "guid", null) |
        res := resources_map[_]
        true
     }
}
resource_instance_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_instance_url", null) |
        res := resources_map[_]
        true
     }
}
deleted_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "deleted_by", null) |
        res := resources_map[_]
        true
     }
}

