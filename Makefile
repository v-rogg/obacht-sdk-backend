proto:
	protoc --go_out=xx_communication/pb --go-grpc_out=xx_communication/pb --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative rawdata.proto
	python -m grpc_tools.protoc -I.. --python_out=xx_tracking --grpc_python_out=xx_tracking --proto_path=. rawdata.proto