package ibmcloud.resources.computed.ibm_subnet
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_subnet"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_subnet").resources[_]
}
vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vlan_id", null) |
        res := resources_map[_]
        true
     }
}
subnet_cidr = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnet_cidr", null) |
        res := resources_map[_]
        true
     }
}

