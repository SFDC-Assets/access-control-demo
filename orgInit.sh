

# Create the demo org
sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p access -e control.demo

# Push the metadata into the new scratch org.
sf project deploy start

# Set the default password.
sf demoutil user password set -p salesforce1 -g User -l User

# Create User
sf apex run -f ./scripts/createUsers.apex

# Open the org.
sf org open


