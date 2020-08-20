#!/bin/bash
echo -e "=================================================================

█╗  ██╗ █████╗ ███╗   ██╗████████╗ █████╗ ██████╗ 
██║ ██╔╝██╔══██╗████╗  ██║╚══██╔══╝██╔══██╗██╔══██╗
█████╔╝ ███████║██╔██╗ ██║   ██║   ███████║██████╔╝
██╔═██╗ ██╔══██║██║╚██╗██║   ██║   ██╔══██║██╔══██╗
██║  ██╗██║  ██║██║ ╚████║   ██║   ██║  ██║██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝
                                                   
"


echo "================================================================="

subscription=$1
resourceGroupName=$2
deploymentName=$3
ClusterName=$4
location=$5
VnetAddressPrefix=$6
aksSubnet=$7
appGWSubnet=$8
workercount=$9
k8sversion=${10}
aksservicecidr=${11}
aksdnsIP=${12}
AzFirewallSubnet=${13}
FW_NAME=${14}
appgatewayprivIP=${15}

echo "subscription Name: "$subscription
echo "resourceGroupName: "$resourceGroupName
echo "deploymentName: "$deploymentName
echo "ClusterName: "$ClusterName
echo "location: "$location
echo "VnetAddressPrefix: "$VnetAddressPrefix
echo "aksSubnet: "$aksSubnet
echo "appGWSubnet: "$appGWSubnet
echo "workercount: "$workercount
echo "k8sversion: "$k8sversion
echo "aksservicecidr: "$aksservicecidr
echo "aksdnsIP: "$aksdnsIP
echo "AzFirewallSubnet: "$AzFirewallSubnet
echo "FW_NAME: "$FW_NAME
echo "appgatewayprivIP :" $appgatewayprivIP


#echo "Welcome to the installation script of Full AKS..."
#echo "Type your resource group Name:"
#read resourceGroupName
#echo "What is your deployment name?"
#read deploymentName
#echo "What is the name of your AKS Cluster?"
#read ClusterName
#echo "Which Azure DC you want to deploy your workloads?"
#read location
#echo "what is your Vnet address prefix for the whole deployment? i.e 10.0.0.0/8"
#read VnetAddressPrefix
#echo "what is your AKS Subnet prefix? i.e 10.0.0.0/16"
#read aksSubnet
#echo "what is your app gateway Subnet prefix? i.e 10.1.0.0/24"
#read appGWSubnet
#echo "How many AKS worker nodes do you need to provision?"
#read workercount
#az aks get-versions --location $location --output table
#echo "What is the k8s version you want to deploy? i.e 1.15.10"
#read k8sversion
#echo "What is the AKS service CIDR? i.e 10.2.0.0/16"
#read aksservicecidr
#echo "What is the AKS DNS IP? i.e 10.2.0.10"
#read aksdnsIP

#out=$(uname -a)
#if [[ $(echo $out | grep -io azure) == 'azure' ]];then
#
#echo "no need to install jq, this is Azure cloud shell"
#elif [[ $(echo $out | grep -io linux) == 'Linux' ]];then
#
#apt-get install jq -y
#else
#
#brew install jq
#fi


echo "==setting up the subscription==="
#az account set --subscription "$subscription"
#az account show

echo "==creating ad application==="

#az ad sp create-for-rbac --skip-assignment -o json > auth.json
#sleep 90
appId=${16}
echo "AAD app ID :" $appId
password=${17}
objectId=${18}
echo "AAD app ID :" $objectId
