# set source function
SRC_PKG_REL=./resource-func/src/hello.go
export SRC_PKG="$(echo "$(cd "$(dirname "$SRC_PKG_REL")"; pwd)/$(basename "$SRC_PKG_REL")")"
#set function package destination
DEPLOY_PKG_REL=./go-func-package/hello.so
export DEPLOY_PKG="$(echo "$(cd "$(dirname "$DEPLOY_PKG_REL")"; pwd)/$(basename "$DEPLOY_PKG_REL")")"


echo "source: ${SRC_PKG}"
echo "dest: ${DEPLOY_PKG}"
echo ""
current_dir=$(ls -la)
root_dir=$(ls -la /)
pwd
echo "current_dir: ${current_dir}"
echo ""
echo "root_dir: ${root_dir}"
echo ""
echo "source file"
ls $SRC_PKG
echo ""
# main
echo "build function"
build

echo ""
echo "function file"
ls $DEPLOY_PKG