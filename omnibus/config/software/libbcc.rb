# Unless explicitly stated otherwise all files in this repository are licensed
# under the Apache License Version 2.0.
# This product includes software developed at Datadog (https:#www.datadoghq.com/).
# Copyright 2016-2020 Datadog, Inc.

name 'bcc'

dependency 'libelf'

build do
  command "#{ENV['S3_CP_CMD']} #{ENV['S3_ARTIFACTS_URI']}/libbcc-#{ENV['PACKAGE_ARCH']}.tar.xz /tmp/libbcc.tar.xz"
  command "tar -xvf /tmp/libbcc.tar.xz -C #{install_dir}/embedded"
  delete '/tmp/libbcc.tar.xz'
end