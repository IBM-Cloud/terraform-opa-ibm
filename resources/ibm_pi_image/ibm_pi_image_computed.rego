package ibmcloud.resources.computed.ibm_pi_image
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_image"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_image").resources[_]
}
image_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "image_id", null) |
        res := resources_map[_]
        true
     }
}

