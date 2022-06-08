# set source function
export SRC_PKG=./resource-func/src/hello.go
#set function package destination
export DEPLOY_PKG=./go-func-package/hello.so

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