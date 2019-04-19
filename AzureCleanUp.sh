#!/usr/bin/env bash
if [ -e "$HOME/.bash_profile" ]; then
    . $HOME/.bash_profile
fi

az account set --subscription "<subscription_id>"

#Get list of resource group names without tag 'DO_NOT_DELETE' as True

list="$(\
    az group list \
        --output table \
        --query "[?tags.DO_NOT_DELETE != 'True' && contains(name, 'ritika') && properties.provisioningState != 'Deleting'].name" \
            | tail -n+3)"

if [ -z "$list" ]
then
      echo "No resource group found, exiting now..."; exit 1;
fi

printf "Resource groups to be deleted:\n$list \n"

while read -r line; do
    echo "Deleting: $line"; 
    az group delete --no-wait --yes --name $line &
done <<< "$list"
