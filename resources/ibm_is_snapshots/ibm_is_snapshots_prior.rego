package ibmcloud.resources.prior.ibm_is_snapshots
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_snapshots"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_snapshots").resources[_]
}
source_image = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_image", null) |
        res := resources_map[_]
        true
     }
}
source_volume = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_volume", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
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

