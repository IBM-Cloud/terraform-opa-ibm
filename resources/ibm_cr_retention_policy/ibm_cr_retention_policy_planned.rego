package ibmcloud.resources.planned.ibm_cr_retention_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cr_retention_policy"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cr_retention_policy").resources[_]
}
namespace = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "namespace", null) |
        res := resources_map[_]
        true
     }
}
images_per_repo = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "images_per_repo", null) |
        res := resources_map[_]
        true
     }
}
retain_untagged = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "retain_untagged", null) |
        res := resources_map[_]
        true
     }
}

