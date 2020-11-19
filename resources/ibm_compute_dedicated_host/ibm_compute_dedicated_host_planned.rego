package ibmcloud.resources.planned.ibm_compute_dedicated_host
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_compute_dedicated_host"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_compute_dedicated_host").resources[_]
}
hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hostname", null) |
        res := resources_map[_]
        true
     }
}
flavor = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "flavor", null) |
        res := resources_map[_]
        true
     }
}
hourly_billing = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hourly_billing", null) |
        res := resources_map[_]
        true
     }
}
router_hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "router_hostname", null) |
        res := resources_map[_]
        true
     }
}
wait_time_minutes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wait_time_minutes", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
domain = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain", null) |
        res := resources_map[_]
        true
     }
}
datacenter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "datacenter", null) |
        res := resources_map[_]
        true
     }
}

