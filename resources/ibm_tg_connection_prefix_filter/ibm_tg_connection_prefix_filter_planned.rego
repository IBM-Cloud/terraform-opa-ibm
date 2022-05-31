package ibmcloud.resources.planned.ibm_tg_connection_prefix_filter
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_tg_connection_prefix_filter"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_tg_connection_prefix_filter").resources[_]
}
prefix = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "prefix", null) |
        res := resources_map[_]
        true
     }
}
gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway", null) |
        res := resources_map[_]
        true
     }
}
action = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action", null) |
        res := resources_map[_]
        true
     }
}
ge = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ge", null) |
        res := resources_map[_]
        true
     }
}
connection_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connection_id", null) |
        res := resources_map[_]
        true
     }
}
before = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "before", null) |
        res := resources_map[_]
        true
     }
}
le = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "le", null) |
        res := resources_map[_]
        true
     }
}

