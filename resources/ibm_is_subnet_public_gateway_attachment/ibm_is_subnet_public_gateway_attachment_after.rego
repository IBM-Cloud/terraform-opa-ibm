package ibmcloud.resources.after.ibm_is_subnet_public_gateway_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_subnet_public_gateway_attachment"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_subnet_public_gateway_attachment").resources[_]
}
subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnet", null) |
        res := resources_map[_]
        true
     }
}
public_gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_gateway", null) |
        res := resources_map[_]
        true
     }
}

