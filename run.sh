#!/bin/bash
docker run --rm -it -p 8888:8888 -v `pwd`:/notebooks/yolo_tl yolo_tl_img:latest
