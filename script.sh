#! /bin/bash

DIR="./NITCbase"

if [ -z "$(ls -A $DIR)" ]; then

cd $DIR

wget https://github.com/leepCh/mynitcbase/archive/main.tar.gz -O nitcbase.tar.gz
tar -xzvf nitcbase.tar.gz
rm -rf nitcbase.tar.gz
mv mynitcbase-main mynitcbase
(cd mynitcbase && make)
mkdir -p {Disk,Files/Batch_Execution_Files,Files/Input_Files,Files/Output_Files}


else

echo "ERROR: $DIR directory already exists. If you want to install a fresh copy, remove the existing directory and retry."

fi

          