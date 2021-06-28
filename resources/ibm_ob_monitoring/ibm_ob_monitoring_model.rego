package ibmcloud.resources.model.ibm_ob_monitoring
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_ob_monitoring"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_ob_monitoring").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_ob_monitoring", "managed").resources[_]
}
private_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_endpoint", null) |
        res := resources_map[_]
        true
     }
}
daemonset_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "daemonset_name", null) |
        res := resources_map[_]
        true
     }
}
agent_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "agent_key", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}
sysdig_access_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sysdig_access_key", null) |
        res := resources_map[_]
        true
     }
}
instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_name", null) |
        res := resources_map[_]
        true
     }
}
agent_namespace = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "agent_namespace", null) |
        res := resources_map[_]
        true
     }
}
discovered_agent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "discovered_agent", null) |
        res := resources_map[_]
        true
     }
}
namespace = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "namespace", null) |
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

