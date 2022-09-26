package ibmcloud.resources.after.ibm_cis_alert
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_alert"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cis_alert").resources[_]
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}
alert_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "alert_type", null) |
        res := resources_map[_]
        true
     }
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
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
mechanisms = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mechanisms", null) |
        res := resources_map[_]
        true
     }
}
filters = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "filters", null) |
        res := resources_map[_]
        true
     }
}
conditions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "conditions", null) |
        res := resources_map[_]
        true
     }
}

