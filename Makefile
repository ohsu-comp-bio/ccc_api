
GOPATH := $(shell pwd)
export GOPATH
PATH := ${PATH}:$(shell pwd)/bin
export PATH

PROTO_INC= -I ./ -I $(GOPATH)/src/github.com/gengo/grpc-gateway/third_party/googleapis/ -I proto/

all: install_tools python_client swagger

python_client:
	protoc $(PROTO_INC) --python_out ccc_client --grpc_out=ccc_client --plugin=protoc-gen-grpc=`which grpc_python_plugin`  `./get_api_proto_files.sh`

swagger: FORCE
	protoc $(PROTO_INC) \
 		--swagger_out=logtostderr=true:swagger \
 		`./get_api_proto_files.sh`

install_tools:
	echo $(GOPATH)
	go get -u github.com/gengo/grpc-gateway/protoc-gen-swagger
	go get -u github.com/golang/protobuf/protoc-gen-go

FORCE: 
