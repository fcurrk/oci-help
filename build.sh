# v2.2.0
#!/bin/bash

BUILD() {
  cd oci-help
  go get github.com/fatih/color
  go get github.com/oracle/oci-go-sdk/v65/common
  go get github.com/oracle/oci-go-sdk/v65/core
  go get github.com/oracle/oci-go-sdk/v65/example/helpers
  go get github.com/oracle/oci-go-sdk/v65/identity
  appName="oci-help"

  rm -rf .git/
  xgo -targets=linux/amd64,windows/amd64,linux/arm64 -out "$appName" -ldflags="-X main.Version=2.2.1" -tags=jsoniter .
  mkdir -p "build"
  mv oci-help* build
  mv go* build


 cd build
 upx -9 ./oci-help-linux*
 upx -9 ./oci-help-windows*
 find . -type f -print0 | xargs -0 md5sum >md5.txt
 cat md5.txt
 cd .. || exit
}

if [ "$1" = "build" ]; then
  BUILD build
else
  echo -e "${RED_COLOR} Parameter error ${RES}"
fi