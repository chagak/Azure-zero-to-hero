az aks create --resource-group myapp-rg --name myapp --node-count 1 --enable-addons monitoring --generate-ssh-keys
az ad sp create-for-rbac --name "ghActionAzureVote" --scope /subscriptions/7071ebe6-7550-438e-b933-bee4af232cd0/resourceGroups/dev --role Contributor --json-auth

az ad sp create-for-rbac --name "ghActionAzureVote" \
    --scope /subscriptions/7071ebe6-7550-438e-b933-bee4af232cd0/resourceGroups/dev \
    --role Contributor \
    --sdk-auth
