# Change this to the owner of the forked "gke-demo" repo, don't leave it like this
GITHUB_USERNAME=dineshmetkari21

# Run container with all the tooling we need:
# NOTE: you can change "TF_VAR_project_id" in this command to point to the existing GCP project
sudo docker run -d --name gke-demo \
  -e TF_VAR_project_id=gke-demo-$GITHUB_USERNAME \
  -e TF_VAR_github_demo_owner=$GITHUB_USERNAME \
  ilyalesikov/gke-demo

# Attach to the container
sudo docker exec -it gke-demo bash

