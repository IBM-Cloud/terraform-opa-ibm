package ibmcloud.resources.computed.ibm_kms_key_rings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_kms_key_rings"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_kms_key_rings").resources[_]
}
endpoint_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_type", null) |
        res := resources_map[_]
        true
     }
}

