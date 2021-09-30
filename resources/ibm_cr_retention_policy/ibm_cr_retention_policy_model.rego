package ibmcloud.resources.model.ibm_cr_retention_policy
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cr_retention_policy"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cr_retention_policy").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_cr_retention_policy", "managed").resources[_]
}
retain_untagged = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "retain_untagged", null) |
        res := resources_map[_]
        true
     }
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

