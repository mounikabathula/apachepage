set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=mounika
# image name
IMAGE=apachepage
# ensure we're up to date
git pull origin master
# bump version
# docker run --rm -v "$PWD":/app mounika/bump patch
version=`cat VERSION`
echo "version: $version"
# run build
./build.sh
# tag it
git add -A
git commit -m "version $version"
git tag -a "$version" -m "version $version"
git push
git push --tags
# docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version
# push it
# docker push $USERNAME/$IMAGE:latest
# docker push $USERNAME/$IMAGE:$version