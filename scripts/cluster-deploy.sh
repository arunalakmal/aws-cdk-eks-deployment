#!/bin/bash

echo "=================================================="
echo "            Deploying the EKS Cluster             "
echo "=================================================="
source versions
git clone https://github.com/ArunaLakmal/aws-cdk-eks.git --branch ${CDK_REPO_VERSION}
cd aws-cdk-eks/
pip install -r requirements.txt
cdk bootstrap
cdk deploy --all --require-approval never --force