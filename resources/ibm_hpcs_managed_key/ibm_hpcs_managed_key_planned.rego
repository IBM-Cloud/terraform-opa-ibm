package ibmcloud.resources.planned.ibm_hpcs_managed_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_hpcs_managed_key"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_hpcs_managed_key").resources[_]
}
template_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_name", null) |
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
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
label = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "label", null) |
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
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}

