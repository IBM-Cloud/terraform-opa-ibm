package ibmcloud.state

import data as statefile
# This package provides uitility functions support parsiong terraform statefile

# returns the output values form statefile
# -outputs
#  -attribute:value
#
#Example Output :
#
# {  "outputs": {
#     "cluster_config_file_path": "/Users/anil/17be21b4babb63c440b48b4add010fddee345d78_bqpo745d0kp7nsgmgpig
# _k8sconfig/config.yml"
#   }
# }

outputs = output_vals{
    some k
    vals := { k : v |
        v := statefile.outputs[k].value
        true
    }
    output_vals := {"outputs": vals}
}

# returns the resources values form statefile
# -resources
#  -name:value
#  -type:value
#  -provider:value
#  -attribute:value

# Example Output :
# {
#   "resources": [
#    {
    #   "attributes": {
    #     "crn": "crn:v1:bluemix:public:api-gateway:global:a/4448261269a14562b839e0a3019ed980:df563e5e-910b-49c5-a0ff-ad7c3e789843::",
    #     "id": "crn:v1:bluemix:public:api-gateway:global:a/4448261269a14562b839e0a3019ed980:df563e5e-910b-49c5-a0ff-ad7c3e789843::",
    #     "location": "global",
    #     "name": "test-APIGateway",
    #     "plan": "lite",
    #     "resource_controller_url": "https://cloud.ibm.com/services/",
    #     "resource_crn": "crn:v1:bluemix:public:api-gateway:global:a/4448261269a14562b839e0a3019ed980:df563e5e-910b-49c5-a0ff-ad7c3e789843::",
    #     "resource_group_id": "a06db00ce84e4b8a8ac81ef56748c513",
    #     "resource_group_name": "",
    #     "resource_name": "test-APIGateway",
    #     "resource_status": "active",
    #     "service": "api-gateway",
    #     "status": null
    #   },
    #   "name": "apigateway",
    #   "provider": "provider[\"registry.terraform.io/-/ibm\"]",
    #   "type": "ibm_resource_instance"
    # }
#   ]
# }

resources_list(resource_name) = resource_values {
    vals := [{"name": r.name, "type": r.type,"provider": r.provider ,"attributes": r.instances[_].attributes}|
        r := statefile.resources[_]
        true
    ]
    resource_values := {"resources": vals}
}

get_resources(name, tf_type) = resources {
    vals := [{"name": r.name, "type": r.type, "provider": r.provider, "attributes": r.instances[_].attributes}|
        r := statefile.resources[_]
        r.type == name; r.mode == tf_type
    ]
    resources := {"resources": vals}
}   
