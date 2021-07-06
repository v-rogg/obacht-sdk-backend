proto:
	protoc --go_out=xx_communication/protobuf --go_opt=paths=source_relative rawdata.proto
	python -m grpc_tools.protoc -I.. --python_out=xx_tracking --grpc_python_out=xx_tracking --proto_path=. rawdata.proto