#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# install
echo ""
echo "install prerequisites..."
source /etc/os-release
OS_NAME=$(echo $ID)
if [ $OS_NAME = "ubuntu" ] || [ $OS_NAME = "debian" ]; then
    $SCRIPT_DIR/scripts/install_for_debian.sh
fi
echo ">>> Done"
echo ""

# setup
$SCRIPT_DIR/scripts/setup.sh

echo ""
echo "==="
echo "Finish!!"
echo "==="
