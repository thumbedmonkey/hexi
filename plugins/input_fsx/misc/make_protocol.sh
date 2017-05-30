#!/bin/bash
protoc -I=./protocol --python_out=./dest_python --csharp_out=./dest_csharp ./protocol/fsx.proto
cp ./dest_python/fsx_pb2.py ../
cp ./dest_csharp/Fsx.cs ../../../extras/hexi-fsx-plugin/FsxProtocol.cs
