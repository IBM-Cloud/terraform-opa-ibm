package ibmcloud.resources.planned.ibm_dns_permitted_network
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_dns_permitted_network"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_permitted_network").resources[_]
}
vpc_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc_crn", null) |
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
zone_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone_id", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}

