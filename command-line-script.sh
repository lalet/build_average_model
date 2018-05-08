#!/bin/sh

die () {
    # die $DIR Error message
    local DIR=$1
    shift
    local D=`date`
    echo "[ ERROR ] [ $D ] $*"
    exit 1
}

echo $1 $2 $3 $4 $5

if [ $# -lt 5 ]; then
  die ${INITDIR} "Needs 5 arguments. Usage: $0 <NUMBER_OF_ITERATIONS> --serial <MODEL_FILE> <MODEL_MASK_FILE> <LIST_FILES> --spline -o <OUTPUT>"
fi

#export ruby lib
export RUBYLIB=/usr/local/build_average_model/;
#source minc toolkit
. /opt/minc/1.9.15/minc-toolkit-config.sh;
#create output folder
mkdir -p $5;
#build avg model scipt and parameters
/usr/local/build_average_model/build_average_model.rb --verbose --log -f $1 --serial --model $2 --model-mask $3 --list $4 --spline -o $5


