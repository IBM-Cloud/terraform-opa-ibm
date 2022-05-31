package ibmcloud.resources.planned.ibm_is_subnet_public_gateway_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_subnet_public_gateway_attachment"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_subnet_public_gateway_attachment").resources[_]
}
public_gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_gateway", null) |
        res := resources_map[_]
        true
     }
}
subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnet", null) |
        res := resources_map[_]
        true
     }
}

