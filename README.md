# Objective-C KVO Memory Management Bug

This repository demonstrates a common but subtle bug in Objective-C related to Key-Value Observing (KVO) and memory management.  The bug occurs when an observer is not properly removed, leading to potential crashes or unexpected behavior. 

## The Bug

The `BuggyKVO.m` file contains code where an object adds itself as an observer, but fails to remove the observer in its `dealloc` method. This results in a dangling pointer.  When the observed object is deallocated, the observer might still try to access it causing a crash. 

## The Solution

The `FixedKVO.m` file shows the corrected code. It properly removes the observer in the `dealloc` method, preventing the memory management issue.