

proxy:
	protoc --python_out ccc_client -I proto  --grpc_out=ccc_client --plugin=protoc-gen-grpc=`which grpc_python_plugin`  `./get_api_proto_files.sh`

