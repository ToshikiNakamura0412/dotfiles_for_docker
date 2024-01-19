source /etc/os-release
OS_NAME=$(echo $ID)

if [ $OS_NAME = "alpine" ]; then
    alias ll='ls -l'
    alias la='ls -lA'
    alias l='ls -la'
elif [ $OS_NAME = "ubuntu" ]; then
    # Set basic alias commands
    alias cw='cd $ROS_WORKSPACE'
    alias cs='cd $ROS_WORKSPACE/src'
    alias cb='catkin build -DCMAKE_BUILD_TYPE=RelWithDebInfo'
    alias cbt='catkin build --this -DCMAKE_BUILD_TYPE=RelWithDebInfo'

    # Set alias commands for ROS completion and build
    function create-simple-compile-flags() {
        echo "-I/opt/ros/$ROS_DISTRO/include" > compile_flags.txt
        echo "-I$PWD/include" >> compile_flags.txt
    }
    function cbt-export-compile-commands() {
        catkin build --this -DCMAKE_EXPORT_COMPILE_COMMANDS=1
        echo ""
        if [ -e package.xml ]; then
            local package_name=$(cat package.xml | grep '<name>' | awk -F '[>]' '{print $2}' | awk -F '[<]' '{print $1}')
            if [ -e $ROS_WORKSPACE/build/$package_name/compile_commands.json ]; then
                ln -sfv $ROS_WORKSPACE/build/$package_name/compile_commands.json ./compile_commands.json
            else
                echo "Error: compile_commands.json not found in build directory"
            fi
        else
            echo "Error: package.xml not found in current directory, so can't create symlink to compile_commands.json"
        fi
    }
fi
