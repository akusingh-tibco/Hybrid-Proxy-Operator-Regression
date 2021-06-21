#!/bin/bash
set -e


function deployResourse(){
    resourseFilename=$1;
    kubectl apply -f ${resourseFilename}
}


function getPodNamesUsingSelector(){
    namespaceTenant=$1
    selectorCriteria=$2
    kubectl get pods -n ${namespaceTenant} -o json --selector=${selectorCriteria}
}


function checkTunnelStatus(){
    podName=$1
    namespaceTenant=$2
    kubectl exec ${podName} -n${namespaceTenant} -c main -- curl -s localhost:7778/v1/tunnel/status
}


# function dataTransferUsingOnpremHostName(){
#     podName=$1
#     namespaceTenant=$2
#     onpremiseHostName=$3
#     omprecisePort=$4
#     kubectl exec ${podName} -n${namespaceTenant} -c main -- /test/tcp-client -a ${onpremiseHostName}:${onpremisePort}
# }


function dataTransferToOnpremApp(){
    podName=$1
    namespaceTenant=$2
    onpremiseIP1=$3
   # ompreciseePort=$4
    kubectl exec ${podName} -n${namespaceTenant} -c main -- /test/tcp-client -a ${onpremiseIP1}
}


function deleteResourse(){
    resourseFilename=$1;
    kubectl delete -f ${resourseFilename}
}


function getResources(){
    resourseName=$1
    namespace=$2
    kubectl get ${resourseName} -n ${namespace} -o json
}



function dataTrans(){
    input params - host,port from callinf TASK
    exec pods   
    .cp-client
    read output and compare witgh expected
    return True or False
}
################################################################


FUNC_CALL=$1; shift; $FUNC_CALL "$@"
set +x