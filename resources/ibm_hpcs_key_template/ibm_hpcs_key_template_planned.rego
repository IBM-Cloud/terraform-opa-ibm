package ibmcloud.resources.planned.ibm_hpcs_key_template
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_hpcs_key_template"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_hpcs_key_template").resources[_]
}
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}
key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key", null) |
        res := resources_map[_]
        true
     }
}
keystores = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "keystores", null) |
        res := resources_map[_]
        true
     }
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
uko_vault = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uko_vault", null) |
        res := resources_map[_]
        true
     }
}
vault = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vault", null) |
        res := resources_map[_]
        true
     }
}

