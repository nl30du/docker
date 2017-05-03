## delete_docker_registry_image

用于删除私有仓库内的镜像


用法:
设置环境变量指向目录为docker私有仓库的目录:
    export REGISTRY_DATA_DIR=/opt/registry_data/docker/registry/v2


删除镜像(all):

    delete_docker_registry_image --image image_name

删除特定tag的镜像:

    delete_docker_registry_image --image image_name:tag_name


## docker-registry

显示仓库内的镜像及tag

用法:

    [root@docker-node1 ~]# docker-registry 
    Images                              Tags
    10.0.2.98:5000/jenkins              v1.0,
    10.0.2.98:5000/nginx                v1.0,
