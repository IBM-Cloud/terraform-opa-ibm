package ibmcloud.resources.planned.ibm_is_subnet_routing_table_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_subnet_routing_table_attachment"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_subnet_routing_table_attachment").resources[_]
}
routing_table = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routing_table", null) |
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

