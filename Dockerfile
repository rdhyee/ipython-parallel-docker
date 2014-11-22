FROM ipython/scipyserver

MAINTAINER Raymond Yee  <raymond.yee@gmail.com>

RUN apt-get install wget && \
  apt-get -y install mpich2 && \
  apt-get -y install libtiff4-dev libjpeg8-dev zlib1g-dev \
    libfreetype6-dev liblcms2-dev libwebp-dev tcl8.5-dev tk8.5-dev python-tk && \
  apt-get -y install python-opencv opencv-doc opencv-data && \  
  pip install networkx && \
  pip install scikit-image && \
  pip install sympy && \
  pip install beautifulsoup4 && \
  pip install Pillow && \
  pip install mpi4py && \
  apt-get clean -y

# RUN mkdir /notebooks2

# RUN cd /notebooks2 && git clone -v https://github.com/minrk/IPython-parallel-tutorial.git IPython-parallel-tutorial

# some of the stuff I've started installing for OpenCV --> not complete yet
# maybe http://packages.ubuntu.com/source/trusty/opencv
# next step is https://launchpad.net/~jon-severinsson/+archive/ubuntu/ffmpeg for ffmpeg

#RUN apt-get -y install software-properties-common python-software-properties
#
#RUN add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ trusty universe multiverse" && \
#    add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates universe multiverse"
#
#RUN apt-get update
#RUN apt-get upgrade -y


#EXPOSE 8888
#WORKDIR /notebooks
#CMD /notebook.sh

VOLUME ["/notebooks", "/data"]
