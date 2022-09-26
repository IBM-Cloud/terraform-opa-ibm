package ibmcloud.resources.computed.ibm_hpcs_managed_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_hpcs_managed_key"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_hpcs_managed_key").resources[_]
}
algorithm = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "algorithm", null) |
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
size = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "size", null) |
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
updated_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_by", null) |
        res := resources_map[_]
        true
     }
}
template = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template", null) |
        res := resources_map[_]
        true
     }
}
expiration_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expiration_date", null) |
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
version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}
referenced_keystores = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "referenced_keystores", null) |
        res := resources_map[_]
        true
     }
}
instances = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instances", null) |
        res := resources_map[_]
        true
     }
}
key_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_id", null) |
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
verification_patterns = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "verification_patterns", null) |
        res := resources_map[_]
        true
     }
}
activation_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "activation_date", null) |
        res := resources_map[_]
        true
     }
}
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}

