# This file contains the targets for the test images.
# This file is auto-generated by the update.sh script and will be wiped out by the update.sh script.
# Please don't edit this file.
#
# Build all test/push images:
#      docker buildx bake -f bake.hcl [test | push] --progressive plain [--load | --push]
# Build selected images:
#      docker buildx bake -f bake.hcl [target name, ...] --progressive plain [--load | --push]

#------------------------------------ test -----------------------------------

group "test" {
    targets=["enterprise_ubuntu20.04_amd64", "community_ubuntu20.04_amd64"]
}

target "enterprise_ubuntu20.04_amd64" {
    tags=["aerospike/aerospike-server-enterprise-amd64:5.7.0.31"]
    platforms=["linux/amd64"]
    context="./enterprise/ubuntu20.04"
}

target "community_ubuntu20.04_amd64" {
    tags=["aerospike/aerospike-server-community-amd64:5.7.0.31"]
    platforms=["linux/amd64"]
    context="./community/ubuntu20.04"
}

#------------------------------------ push -----------------------------------

group "push" {
    targets=["enterprise_ubuntu20.04", "community_ubuntu20.04"]
}

target "enterprise_ubuntu20.04" {
    tags=["aerospike/aerospike-server-enterprise:5.7.0.31", "aerospike/aerospike-server-enterprise:5.7.0.31_3"]
    platforms=["linux/amd64"]
    context="./enterprise/ubuntu20.04"
}

target "community_ubuntu20.04" {
    tags=["aerospike/aerospike-server:5.7.0.31", "aerospike/aerospike-server:5.7.0.31_3"]
    platforms=["linux/amd64"]
    context="./community/ubuntu20.04"
}

