FROM tensorflow/tensorflow:1.4.0-py3

# install basic-yolo-keras deps

# cv2
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y unzip wget build-essential \
    cmake git pkg-config libswscale-dev \
    python3-dev python3-numpy \
    libtbb2 libtbb-dev libjpeg-dev \
    libpng-dev libtiff-dev libjasper-dev

RUN cd \
    && wget https://github.com/Itseez/opencv/archive/3.1.0.zip \
    && unzip 3.1.0.zip \
    && cd opencv-3.1.0 \
    && mkdir build \
    && cd build \
    && cmake .. \
    && make -j3 \
    && make install \
    && cd \
    && rm 3.1.0.zip

# keras
RUN pip install keras imgaug
RUN pip install tqdm
