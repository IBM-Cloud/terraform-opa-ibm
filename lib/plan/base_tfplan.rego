package ibmcloud.tfplan

import data as tfplan

# lists all the variables from variable section
variables = vars{
    some k
    vars := { k : v |
        v := tfplan.varibales[k].value
        true
    }
}

# returns the list of module
#  - module name
#  - resources in the module
#    - resource_name
#    - resource_type

# Example output shown below:
# [
#   {
#     "module_name": "root_module",
#     "resources_list": [
#       {
#         "resource_name": "test",
#         "resource_type": "ibm_is_vpc"
#       }
#     ]
#   }
# ]

modules = mods {
    some i
    mods := [ {"module_name": i, "resources_list": get_resources_list_info(val.resources) } |
         val := tfplan.configuration[i]
         true
    ]
}


# returns the configuration info
# - provider_config:
#   - name: provider_name
#     values:
#       attribute1: value
#     modules:
#       name1: value
#     resources:
#       - name: resource_name
#         type: resource_type
#         attributes: 
#           - attrbute1: value
#             attrbute2: value

# Example output:
#
# {
#   "modules": [
#     {
#       "name": "root_module",
#       "resources": [
#         {
#           "attributes": {
#             "classic_access": true,
#             "name": [
#               "tes-name"
#             ],
#             "tags": [
#               "test",
#               "my_vpc"
#             ]
#           },
#           "resource_name": "vpc",
#           "resource_type": "ibm_is_vpc"
#         }
#       ]
#     }
#   ],
#   "provider_config": [
#     {
#       "name": "ibm",
#       "values": {
#         "ibmcloud_timeout": 60,
#         "region": [
#           "us-south"
#         ]
#       }
#     }
#   ]
# }

configuration = config {
    c := tfplan["configuration"]
    config := { 
        "provider_config": get_provider_config(c.provider_config),
        "modules": get_modules_config
    }
}

# returns the provider config
# - provider_config
#   - name: provider_name
#     attributes:
#       attribute: value
#
#Example Output
#
# {
#   "provider_config": [
#     {
#       "name": "ibm",
#       "values": {
#         "ibmcloud_timeout": 60,
#         "region": [
#           "us-south"
#         ]
#       }
#     }
#   ]
# }

provider_config = provider {
    provider := {"provider_config": get_provider_config(tfplan.configuration.provider_config)} 
}


# returns the terraform version
# - version: value
#
# Example output:
#
# {
#   "version": "0.12.21-dev"
# }
version = terraform_version {
    terraform_version := {"version": tfplan["terraform_version"]}
}

# returns the list of resource and attribute values "before" apply
# - resources 
#   - name: name
#     type: type
#     provider: provider_name
#     attributes:
#       attribute: value
# 
#Example output:
#
# {
#   "resources": [
#     {
#       "attributes": null,
#       "name": "vpc",
#       "provider": "ibm",
#       "type": "ibm_is_vpc"
#     }
#   ]
# }
before = resource_changes_before {
    vals := [{"name": r.name, "type": r.type, "provider": r.provider_name, "attributes": r.change.before} |
        r := tfplan["resource_changes"][_]
        true
    ]
    resource_changes_before := {"resources": vals}
}

# returns the list of resource and attribute values "after" apply
# - resources 
#   - name: name
#     type: type
#     provider: provider_name
#     attributes:
#       attribute: value
#
#Example Output:
#
# {
#   "resources": [
#     {
#       "attributes": {
#         "address_prefix_management": "auto",
#         "classic_access": true,
#         "is_default": null,
#         "name": "tes-name",
#         "resource_group": "dae36a8eba174edd9ca57b531d50495e",
#         "tags": [
#           "my_vpc",
#           "test"
#         ],
#         "timeouts": null
#       },
#       "name": "vpc",
#       "provider": "ibm",
#       "type": "ibm_is_vpc"
#     }
#   ]
# }
after = resource_changes_after {
    vals := [{"name": r.name, "type": r.type, "provider": r.provider_name, "attributes": r.change.after} |
        r := tfplan["resource_changes"][_]
        true
    ]
    resource_changes_after := {"resources": vals}
}

# returns the list of resource and computed attribute 
# - resources 
#   - name: name
#     type: type
#     provider: provider_name
#     attributes:
#       attribute: boolean
#
#Example Output:
#
# {
#   "resources": [
#     {
#       "attributes": {
#         "crn": true,
#         "cse_source_addresses": true,
#         "default_network_acl": true,
#         "default_security_group": true,
#         "id": true,
#         "resource_controller_url": true,
#         "resource_crn": true,
#         "resource_group_name": true,
#         "resource_name": true,
#         "resource_status": true,
#         "status": true,
#         "subnets": true,
#         "tags": [
#           false,
#           false
#         ]
#       },
#       "name": "vpc",
#       "provider": "ibm",
#       "type": "ibm_is_vpc"
#     }
#   ]
# }
computed = resource_changes_after_unknown {
    vals := [{"name": r.name, "type": r.type, "provider": r.provider_name, "attributes": r.change.after_unknown} |
        r := tfplan["resource_changes"][_]
        true
    ]
    resource_changes_after_unknown := {"resources": vals}
}

# returns the planned final state
# - resources 
#   - name: name
#     type: type
#     provider: provider_name
#     attributes:
#       attribute: value
# 
#Example Output:
#
# {
#   "resources": [
#     {
#       "attributes": {
#         "address_prefix_management": "auto",
#         "classic_access": true,
#         "is_default": null,
#         "name": "tes-name",
#         "resource_group": "dae36a8eba174edd9ca57b531d50495e",
#         "tags": [
#           "my_vpc",
#           "test"
#         ],
#         "timeouts": null
#       },
#       "name": "vpc",
#       "provider": "ibm",
#       "type": "ibm_is_vpc"
#     }
#   ]
# }

planned = planned_values {
    some i
    vals := [{"name": r.name, "type": r.type, "provider": r.provider_name, "attributes": r.values} |
        r := tfplan["planned_values"][i].resources[_]
        true
    ]
    planned_values := {"resources": vals}
}

# returns the list of resources with prior state data
# - resources 
#   - name: name
#     type: type
#     provider: provider_name
#     attributes:
#       attribute: value
#
#Example Output:
#
# {
#   "resources": [
#     {
#       "attributes": {
#         "id": "dae36a8eba174edd9ca57b531d50495e",
#         "is_default": null,
#         "name": "Default"
#       },
#       "name": "group",
#       "provider": "ibm",
#       "type": "ibm_resource_group"
#     }
#   ]
# }

prior = prior_states {
    some i
    vals := [{"name": r.name, "type": r.type, "provider": r.provider_name, "attributes": r.values} |
        r := tfplan["prior_state"].values[i].resources[_]
        true
    ]
    prior_states := {"resources": vals}
}


# returns the list of newly created resource and attribute values "after" apply
# - resources 
#   - name: name
#     type: type
#     provider: provider_name
#     attributes:
#       attribute: value
#
#Example Output :
#
# {
#   "resources": [
#     {
#       "attributes": {
#         "address_prefix_management": "auto",
#         "classic_access": true,
#         "is_default": null,
#         "name": "tes-name",
#         "resource_group": "dae36a8eba174edd9ca57b531d50495e",
#         "tags": [
#           "my_vpc",
#           "test"
#         ],
#         "timeouts": null
#       },
#       "name": "vpc",
#       "provider": "ibm",
#       "type": "ibm_is_vpc"
#     }
#   ]
# }
create = resources_added {
    vals := [{"name": r.name, "type": r.type, "provider": r.provider_name, "attributes": r.change.after} |
        r := tfplan["resource_changes"][_]
        r.change.actions[_] == "create"
    ]
    resources_added := {"resources": vals}
}
# returns the list of deleted resource and attribute values "after" apply
# - resource 
#   - name: name
#     type: type
#     provider: provider_name
#     attributes:
#       attribute: value
delete = resources_deleted {
    vals := [{"name": r.name, "type": r.type, "provider": r.provider_name, "attributes": r.change.after} |
        r := tfplan["resource_changes"][_]
        r.change.actions[_] == "delete"
    ]
    resources_deleted := {"resources": vals}
}

# returns the list of updated resource and attribute values "after" apply
# - resource 
#   - name: name
#     type: type
#     provider: provider_name
#     attributes:
#       attribute: value
#
#Example output:
#
# {
#   "resources": [
#     {
#       "attributes": {
#         "address_prefix_management": "auto",
#         "classic_access": true,
#         "is_default": null,
#         "name": "tes-name",
#         "resource_group": "dae36a8eba174edd9ca57b531d50495e",
#         "tags": [
#           "my_vpc",
#           "test"
#         ],
#         "timeouts": null
#       },
#       "name": "vpc",
#       "provider": "ibm",
#       "type": "ibm_is_vpc"
#     }
#   ]
# }

update = resources_updated {
     vals := [{"name": r.name, "type": r.type, "provider": r.provider_name, "attributes": r.change.after} |
        r := tfplan["resource_changes"][_]
        r.change.actions[_] == "update"
    ]
    resources_updated  := {"resources": vals}
}

# returns the details about a resource (by name)
# - resources 
#   - name: name
#     type: type
#     provider: provider_name
#     before:
#        attribute: value
#     after:
#        attribute: value
#     computed:
#        attribute: value
#
# Example Output:
#
# {
#   "resources": [
#     {
#       "after": {
#         "address_prefix_management": "auto",
#         "classic_access": true,
#         "is_default": null,
#         "name": "tes-name",
#         "resource_group": "dae36a8eba174edd9ca57b531d50495e",
#         "tags": [
#           "my_vpc",
#           "test"
#         ],
#         "timeouts": null
#       },
#       "before": null,
#       "computed": {
#         "crn": true,
#         "cse_source_addresses": true,
#         "default_network_acl": true,
#         "default_security_group": true,
#         "id": true,
#         "resource_controller_url": true,
#         "resource_crn": true,
#         "resource_group_name": true,
#         "resource_name": true,
#         "resource_status": true,
#         "status": true,
#         "subnets": true,
#         "tags": [
#           false,
#           false
#         ]
#       },
#       "name": "vpc",
#       "provider": "ibm",
#       "type": "ibm_is_vpc"
#     }
#   ]
# }
resources(resource_name) = ret {
    vals := [{"name": r.name, "type": r.type, "provider": r.provider_name, "before": r.change.before, "after": r.change.after, "computed": r.change.after_unknown } |
        r := tfplan["resource_changes"][_]
        r.type == resource_name
    ]
    ret := {"resources": vals}
}

# returns the details of the change of a resource (by name)
# - resource 
#   - name: name
#     type: type
#     provider: provider_name
#     change: change_name
#     before:
#        attribute: value
#     after:
#        attribute: value
#     computed:
#        attribute: value
#
# Example Output:
#
# {
#   "resource": {
#     "after": {
#       "address_prefix_management": "auto",
#       "classic_access": true,
#       "is_default": null,
#       "name": "tes-name",
#       "resource_group": "dae36a8eba174edd9ca57b531d50495e",
#       "tags": [
#         "my_vpc",
#         "test"
#       ],
#       "timeouts": null
#     },
#     "before": null,
#     "computed": {
#       "crn": true,
#       "cse_source_addresses": true,
#       "default_network_acl": true,
#       "default_security_group": true,
#       "id": true,
#       "resource_controller_url": true,
#       "resource_crn": true,
#       "resource_group_name": true,
#       "resource_name": true,
#       "resource_status": true,
#       "status": true,
#       "subnets": true,
#       "tags": [
#         false,
#         false
#       ]
#     },
#     "name": "vpc",
#     "provider": "ibm",
#     "type": "ibm_is_vpc"
#   }
# }

change(name) = ret {
    vals := resources(name) 
    ret := { "resource": r | r :=vals.resources[_]; r.type == name}
}

# returns the planned final state of a resource (by name)
# - resource 
#   - name: name
#     type: type
#     provider: provider_name
#     attributes:
#       attribute: value

# Example Output:
#
# {
#   "resources": [
#     {
#       "attributes": {
#         "address_prefix_management": "auto",
#         "classic_access": true,
#         "is_default": null,
#         "name": "tes-name",
#         "resource_group": "dae36a8eba174edd9ca57b531d50495e",
#         "tags": [
#           "my_vpc",
#           "test"
#         ],
#         "timeouts": null
#       },
#       "name": "vpc",
#       "provider": "ibm",
#       "type": "ibm_is_vpc"
#     }
#   ]
# }

get_child_module_resources() = res{
    some j
    mods := object.get(tfplan["planned_values"]["root_module"], "child_modules", [])
    #res := mods[i].resources[_]
    res := [i | i := mods[j].resources[_]; true]
}

get_planned_resources[resource]{
    rootmods := object.get(tfplan["planned_values"]["root_module"], "resources", [])
    child_mod_resources := get_child_module_resources
    modules := array.concat(child_mod_resources, rootmods)
    resource := modules[_]
} 

planned_values(resource_name) = resource_planned_values {
    some i
    planned_resources := get_planned_resources
    vals := [{"name": r.name, "type": r.type, "provider": r.provider_name, "attributes": r.values} |
        r := planned_resources[i]
        r.type == resource_name
    ]
    resource_planned_values := {"resources": vals}
 }

prior_state_values(resource_name) = resource_prior_state_values {
    some i
    vals := [{"name": r.name, "type": r.type, "provider": r.provider_name, "attributes": r.values} |
        r := tfplan["prior_state"][i].resources[_]
        r.type == resource_name
    ]
    resource_prior_state_values := {"resources": vals}
 }
 
changes_after_values(resource_name) = resource_changes_after_values {
    vals := [{"name": r.name, "type": r.type, "provider": r.provider_name, "attributes": r.change.after_unknown} |
        r := tfplan["resource_changes"][_]
        r.type == resource_name
    ]
    resource_changes_after_values := {"resources": vals}
 }

changes_computed_values(resource_name) = resource_computed_values {
        vals := [{"name": r.name, "type": r.type, "provider": r.provider_name, "attributes": r.change.after_unknown} |
        r := tfplan["resource_changes"][_]
        r.type == resource_name
    ]
    resource_computed_values := {"resources": vals}
 }

 # Utility Functions
 get_value(ref) = ret {
    startswith(ref, "var.")
    ret = tfplan.variables[split(ref, ".")[1]].value
} else = ret {
    ret = ref
}

resolve_references(ref_list) = ret {
     ret := [ get_value(ref) |
        ref := ref_list[_]
        true
    ]
}

get_values(obj) = value{
    value = obj["constant_value"]
} else = value {
    value = resolve_references(obj["references"])
}

get_expressions(exp) = expressions{
    some i
    expressions := { i : get_values(value)|
        value := exp[i]
        true
    }
}

get_provider_config(config) = pc {
    some i
    pc := [ {"name": i, "values": get_expressions(expressions) } |
        expressions := config[i].expressions
        true
    ]
}

get_resources_config(resources_list) = resource_config{
    resource_config := [ {"resource_name": r.name , "resource_type": r.type, "attributes": get_expressions(r.expressions) } |
        r := resources_list[_]
        true
    ]
}

get_modules_config =  modules_config {
    some i
    modules_config := [ {"name": i, "resources": get_resources_config(val.resources) } |
         val := tfplan.configuration[i]
         true
    ]
}

get_resources_list_info(resources_list) = resources {
    resources := [ {"resource_name": r.name , "resource_type": r.type } |
        r := resources_list[_]
        true
    ]
}
