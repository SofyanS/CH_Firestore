# Set up variables and firebase
export REGISTRY_ID=config-demo
export CLOUD_REGION=us-central1
export GCLOUD_PROJECT=$(gcloud config list project --format "value(core.project)")

# Create two devices
cd ../sample-device
gcloud iot devices create sample-device --region $CLOUD_REGION --registry $REGISTRY_ID --public-key path=./ec_public.pem,type=ES256
gcloud iot devices create sample-binary --region $CLOUD_REGION --registry $REGISTRY_ID --public-key path=./ec_public.pem,type=ES256

# Cleaning up (Create a third device and delete in a separate tab?)
yes | gcloud iot devices delete sample-device --registry $REGISTRY_ID --region $CLOUD_REGION
yes | gcloud iot devices delete sample-binary --registry $REGISTRY_ID --region $CLOUD_REGION