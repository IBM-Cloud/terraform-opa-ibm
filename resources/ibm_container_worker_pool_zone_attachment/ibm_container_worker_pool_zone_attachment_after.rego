package ibmcloud.resources.after.ibm_container_worker_pool_zone_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_worker_pool_zone_attachment"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_container_worker_pool_zone_attachment").resources[_]
}
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
        res := resources_map[_]
        true
     }
}
worker_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_pool", null) |
        res := resources_map[_]
        true
     }
}
private_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
wait_till_albs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wait_till_albs", null) |
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
public_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}

