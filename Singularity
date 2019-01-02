Bootstrap: shub
From: khanlab/neuroglia-core:v1.5

%labels
Maintainer "Ali Khan"

#########
%setup
#########
mkdir -p $SINGULARITY_ROOTFS/src/pydeface
cp -Rv . $SINGULARITY_ROOTFS/src/pydeface

#########
%post
#########

apt-get install -y python-setuptools


cd /src/pydeface

# checkout specific git release 
SINGULARITY_TAG=${SINGULARITY_BUILDDEF#Singularity.}
if [ ! "$SINGULARITY_TAG" = "Singularity" ]
then
  git checkout $SINGULARITY_TAG
fi

python setup.py install



#########
%runscript

pydeface $@



