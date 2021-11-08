package ibmcloud.resources.computed.ibm_ob_logging
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_ob_logging"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_ob_logging").resources[_]
}
discovered_agent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "discovered_agent", null) |
        res := resources_map[_]
        true
     }
}
logdna_ingestion_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "logdna_ingestion_key", null) |
        res := resources_map[_]
        true
     }
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
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
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

