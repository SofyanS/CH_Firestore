# Set up variables and firebase
export REGISTRY_ID=config-demo
export CLOUD_REGION=us-central1
export GCLOUD_PROJECT=$(gcloud config list project --format "value(core.project)")

# Deploy the Relay Function
cd functions
firebase --project $GCLOUD_PROJECT functions:config:set \
  iot.core.region=$CLOUD_REGION \
  iot.core.registry=$REGISTRY_ID
firebase --project $GCLOUD_PROJECT deploy --only functions