export IMAGE_TAG=$(cat VERSION)
export AARCH=`uname -m`

docker build -f Dockerfile.synchronizer -t cachengo/hssdb-synchronizer-$AARCH:$IMAGE_TAG .
docker push cachengo/hssdb-synchronizer-$AARCH:$IMAGE_TAG
