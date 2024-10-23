# OpenCV Samples for Intel® RealSense™ cameras
Examples in this folder are designed to complement existing [SDK examples](../../examples) and demonstrate how Intel RealSense cameras can be used together with `opencv` in domain of computer-vision. 

> RealSense examples have been designed and tested with OpenCV 3.4,
> Working with latest OpenCV 4 requires minor code changes
 
## List of Samples:
1. [ImShow](./imshow) - Minimal OpenCV application for visualizing depth data
2. [GrabCuts](./grabcuts) - Simple background removal using the GrabCut algorithm
3. [Latency-Tool](./latency-tool) - Basic latency estimation using computer vision
4. [DNN](./dnn) - Intel RealSense camera used for real-time object-detection ***this is the applicable one for autev.***
5. [Depth Filter](./depth-filter) - Depth Filtering for Collision Avoidance
6. [Rotate](./rotate-pointcloud) - Rotate point cloud before visualization

## Getting Started:
This page is certainly **not** a comprehensive guide to getting started with OpenCV and CMake, but it can help get on the right track. 

* [Linux Installation](#linux)

### Linux

1. Build `opencv` from source using the [official guide](https://docs.opencv.org/trunk/d7/d9f/tutorial_linux_install.html)
> Please use `git checkout 3.4` to use version 3.4

2. Run `export OpenCV_DIR=~/opencv/build` (`~/opencv/build` is the folder containing `OpenCVConfig.cmake`)
3. Follow [the instructions](https://github.com/IntelRealSense/librealsense/blob/master/doc/installation.md) to build `librealsense` from source
4. Add `-DBUILD_CV_EXAMPLES=true` to your `cmake` command
