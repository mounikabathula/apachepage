set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=mounika
# image name
IMAGE=apachepage
docker build -t $USERNAME/$IMAGE:latest .