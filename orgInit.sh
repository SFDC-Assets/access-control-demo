

# Create the demo org
sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s --wait 60 --userprefix access -o control.demo 

# Push the metadata into the new scratch org.
sfdx force:source:push

# Pullthe metadata into the new scratch org.
# sfdx force:source:pull

# Set the default password.
sfdx shane:user:password:set -g User -l User -p salesforce1

# Create User
#sfdx force:user:create FirstName="Quentin" LastName="Engineer" Alias="Quentin" profileName="System Administrator"
#sfdx force:user:create FirstName="Jeff" LastName="Ronald" Alias="Jeff" profileName="System Administrator"
sfdx force:user:create FirstName="Quentin" LastName="Engineer" Alias="Quentin" profileName="System Administrator" 
sfdx force:user:create FirstName="Tim" LastName="Service" Alias="Tim" profileName="System Administrator" 
sfdx force:user:create FirstName="Sue" LastName="Marketing" Alias="Sue" profileName="System Administrator" 
sfdx force:user:create FirstName="Cindy" LastName="Sales" Alias="Cindy" profileName="System Administrator" 
# Open the org.
sfdx force:org:open



