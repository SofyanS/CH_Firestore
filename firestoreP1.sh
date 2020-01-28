# Set up variables and firebase
export REGISTRY_ID=config-demo
export CLOUD_REGION=us-central1
export GCLOUD_PROJECT=$(gcloud config list project --format "value(core.project)")

# Create a Pub/Sub a Pub/Sub topic
gcloud pubsub topics create device-events

# Create a Cloud IoT core Registry
gcloud iot registries create $REGISTRY_ID --region=$CLOUD_REGION --event-notification-config=subfolder="",topic=device-events