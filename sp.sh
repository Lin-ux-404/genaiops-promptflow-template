spname="llmops-pf-sp"
roleName="Owner"
subscriptionId="5bab2ebd-b16a-469d-8aa4-abdaea7f9e17"
servicePrincipalName="Azure-ARM-${spname}"

# Verify the ID of the active subscription
echo "Using subscription ID $subscriptionID"
echo "Creating SP for RBAC with name $servicePrincipalName, with role $roleName and in scopes     /subscriptions/$subscriptionId"

az ad sp create-for-rbac --name $servicePrincipalName --role $roleName --scopes /subscriptions/$subscriptionId --sdk-auth

echo "Please ensure that the information created here is properly save for future use."
