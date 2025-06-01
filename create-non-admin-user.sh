
cf create-user testuser $TESTUSER_PASSWORD 
cf set-org-role testuser test OrgManager
cf set-space-role testuser test test-space SpaceDeveloper
