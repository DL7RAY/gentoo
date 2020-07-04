# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

EGO_SUM=(
	"cloud.google.com/go v0.26.0/go.mod"
	"cloud.google.com/go v0.34.0/go.mod"
	"cloud.google.com/go v0.38.0/go.mod"
	"cloud.google.com/go v0.44.1/go.mod"
	"cloud.google.com/go v0.44.2/go.mod"
	"cloud.google.com/go v0.45.1"
	"cloud.google.com/go v0.45.1/go.mod"
	"cloud.google.com/go/bigquery v1.0.1/go.mod"
	"cloud.google.com/go/datastore v1.0.0/go.mod"
	"github.com/Azure/azure-sdk-for-go v35.0.0+incompatible/go.mod"
	"github.com/Azure/azure-sdk-for-go v36.2.0+incompatible"
	"github.com/Azure/azure-sdk-for-go v36.2.0+incompatible/go.mod"
	"github.com/Azure/go-autorest/autorest v0.9.0/go.mod"
	"github.com/Azure/go-autorest/autorest v0.9.2"
	"github.com/Azure/go-autorest/autorest v0.9.2/go.mod"
	"github.com/Azure/go-autorest/autorest/adal v0.5.0"
	"github.com/Azure/go-autorest/autorest/adal v0.5.0/go.mod"
	"github.com/Azure/go-autorest/autorest/adal v0.8.1-0.20191028180845-3492b2aff503"
	"github.com/Azure/go-autorest/autorest/adal v0.8.1-0.20191028180845-3492b2aff503/go.mod"
	"github.com/Azure/go-autorest/autorest/azure/cli v0.2.0"
	"github.com/Azure/go-autorest/autorest/azure/cli v0.2.0/go.mod"
	"github.com/Azure/go-autorest/autorest/date v0.1.0"
	"github.com/Azure/go-autorest/autorest/date v0.1.0/go.mod"
	"github.com/Azure/go-autorest/autorest/date v0.2.0"
	"github.com/Azure/go-autorest/autorest/date v0.2.0/go.mod"
	"github.com/Azure/go-autorest/autorest/mocks v0.1.0/go.mod"
	"github.com/Azure/go-autorest/autorest/mocks v0.2.0/go.mod"
	"github.com/Azure/go-autorest/autorest/mocks v0.3.0"
	"github.com/Azure/go-autorest/autorest/mocks v0.3.0/go.mod"
	"github.com/Azure/go-autorest/autorest/to v0.3.0"
	"github.com/Azure/go-autorest/autorest/to v0.3.0/go.mod"
	"github.com/Azure/go-autorest/autorest/validation v0.2.0"
	"github.com/Azure/go-autorest/autorest/validation v0.2.0/go.mod"
	"github.com/Azure/go-autorest/logger v0.1.0"
	"github.com/Azure/go-autorest/logger v0.1.0/go.mod"
	"github.com/Azure/go-autorest/tracing v0.5.0"
	"github.com/Azure/go-autorest/tracing v0.5.0/go.mod"
	"github.com/Azure/go-ntlmssp v0.0.0-20180810175552-4a21cbd618b4"
	"github.com/Azure/go-ntlmssp v0.0.0-20180810175552-4a21cbd618b4/go.mod"
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802/go.mod"
	"github.com/ChrisTrenkamp/goxpath v0.0.0-20170922090931-c385f95c6022"
	"github.com/ChrisTrenkamp/goxpath v0.0.0-20170922090931-c385f95c6022/go.mod"
	"github.com/QcloudApi/qcloud_sign_golang v0.0.0-20141224014652-e4130a326409/go.mod"
	"github.com/Unknwon/com v0.0.0-20151008135407-28b053d5a292"
	"github.com/Unknwon/com v0.0.0-20151008135407-28b053d5a292/go.mod"
	"github.com/abdullin/seq v0.0.0-20160510034733-d5467c17e7af"
	"github.com/abdullin/seq v0.0.0-20160510034733-d5467c17e7af/go.mod"
	"github.com/agext/levenshtein v1.2.1/go.mod"
	"github.com/agext/levenshtein v1.2.2"
	"github.com/agext/levenshtein v1.2.2/go.mod"
	"github.com/agl/ed25519 v0.0.0-20150830182803-278e1ec8e8a6"
	"github.com/agl/ed25519 v0.0.0-20150830182803-278e1ec8e8a6/go.mod"
	"github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc/go.mod"
	"github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf/go.mod"
	"github.com/aliyun/alibaba-cloud-sdk-go v0.0.0-20190329064014-6e358769c32a"
	"github.com/aliyun/alibaba-cloud-sdk-go v0.0.0-20190329064014-6e358769c32a/go.mod"
	"github.com/aliyun/aliyun-oss-go-sdk v0.0.0-20190103054945-8205d1f41e70"
	"github.com/aliyun/aliyun-oss-go-sdk v0.0.0-20190103054945-8205d1f41e70/go.mod"
	"github.com/aliyun/aliyun-tablestore-go-sdk v4.1.2+incompatible"
	"github.com/aliyun/aliyun-tablestore-go-sdk v4.1.2+incompatible/go.mod"
	"github.com/antchfx/xpath v0.0.0-20190129040759-c8489ed3251e"
	"github.com/antchfx/xpath v0.0.0-20190129040759-c8489ed3251e/go.mod"
	"github.com/antchfx/xquery v0.0.0-20180515051857-ad5b8c7a47b0"
	"github.com/antchfx/xquery v0.0.0-20180515051857-ad5b8c7a47b0/go.mod"
	"github.com/apparentlymart/go-cidr v1.0.1"
	"github.com/apparentlymart/go-cidr v1.0.1/go.mod"
	"github.com/apparentlymart/go-dump v0.0.0-20180507223929-23540a00eaa3/go.mod"
	"github.com/apparentlymart/go-dump v0.0.0-20190214190832-042adf3cf4a0"
	"github.com/apparentlymart/go-dump v0.0.0-20190214190832-042adf3cf4a0/go.mod"
	"github.com/apparentlymart/go-textseg v1.0.0"
	"github.com/apparentlymart/go-textseg v1.0.0/go.mod"
	"github.com/apparentlymart/go-versions v0.0.2-0.20180815153302-64b99f7cb171"
	"github.com/apparentlymart/go-versions v0.0.2-0.20180815153302-64b99f7cb171/go.mod"
	"github.com/armon/circbuf v0.0.0-20190214190532-5111143e8da2"
	"github.com/armon/circbuf v0.0.0-20190214190532-5111143e8da2/go.mod"
	"github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da"
	"github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da/go.mod"
	"github.com/armon/go-radix v0.0.0-20180808171621-7fddfc383310/go.mod"
	"github.com/armon/go-radix v1.0.0"
	"github.com/armon/go-radix v1.0.0/go.mod"
	"github.com/aws/aws-sdk-go v1.15.78/go.mod"
	"github.com/aws/aws-sdk-go v1.25.3"
	"github.com/aws/aws-sdk-go v1.25.3/go.mod"
	"github.com/aws/aws-sdk-go v1.30.12"
	"github.com/aws/aws-sdk-go v1.30.12/go.mod"
	"github.com/baiyubin/aliyun-sts-go-sdk v0.0.0-20180326062324-cfa1a18b161f"
	"github.com/baiyubin/aliyun-sts-go-sdk v0.0.0-20180326062324-cfa1a18b161f/go.mod"
	"github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973"
	"github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973/go.mod"
	"github.com/bgentry/go-netrc v0.0.0-20140422174119-9fd32a8b3d3d"
	"github.com/bgentry/go-netrc v0.0.0-20140422174119-9fd32a8b3d3d/go.mod"
	"github.com/bgentry/speakeasy v0.1.0"
	"github.com/bgentry/speakeasy v0.1.0/go.mod"
	"github.com/blang/semver v3.5.1+incompatible"
	"github.com/blang/semver v3.5.1+incompatible/go.mod"
	"github.com/bmatcuk/doublestar v1.1.5"
	"github.com/bmatcuk/doublestar v1.1.5/go.mod"
	"github.com/boltdb/bolt v1.3.1"
	"github.com/boltdb/bolt v1.3.1/go.mod"
	"github.com/census-instrumentation/opencensus-proto v0.2.1/go.mod"
	"github.com/cheggaaa/pb v1.0.27/go.mod"
	"github.com/chzyer/logex v1.1.10"
	"github.com/chzyer/logex v1.1.10/go.mod"
	"github.com/chzyer/readline v0.0.0-20180603132655-2972be24d48e"
	"github.com/chzyer/readline v0.0.0-20180603132655-2972be24d48e/go.mod"
	"github.com/chzyer/test v0.0.0-20180213035817-a1ea475d72b1"
	"github.com/chzyer/test v0.0.0-20180213035817-a1ea475d72b1/go.mod"
	"github.com/client9/misspell v0.3.4/go.mod"
	"github.com/coreos/bbolt v1.3.0"
	"github.com/coreos/bbolt v1.3.0/go.mod"
	"github.com/coreos/etcd v3.3.10+incompatible"
	"github.com/coreos/etcd v3.3.10+incompatible/go.mod"
	"github.com/coreos/go-semver v0.2.0"
	"github.com/coreos/go-semver v0.2.0/go.mod"
	"github.com/coreos/go-systemd v0.0.0-20181012123002-c6f51f82210d"
	"github.com/coreos/go-systemd v0.0.0-20181012123002-c6f51f82210d/go.mod"
	"github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f"
	"github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/dgrijalva/jwt-go v3.2.0+incompatible"
	"github.com/dgrijalva/jwt-go v3.2.0+incompatible/go.mod"
	"github.com/dimchansky/utfbom v1.1.0"
	"github.com/dimchansky/utfbom v1.1.0/go.mod"
	"github.com/dnaeon/go-vcr v0.0.0-20180920040454-5637cf3d8a31"
	"github.com/dnaeon/go-vcr v0.0.0-20180920040454-5637cf3d8a31/go.mod"
	"github.com/dylanmei/iso8601 v0.1.0"
	"github.com/dylanmei/iso8601 v0.1.0/go.mod"
	"github.com/dylanmei/winrmtest v0.0.0-20190225150635-99b7fe2fddf1"
	"github.com/dylanmei/winrmtest v0.0.0-20190225150635-99b7fe2fddf1/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.1-0.20191026205805-5f8ba28d4473/go.mod"
	"github.com/envoyproxy/protoc-gen-validate v0.1.0/go.mod"
	"github.com/fatih/color v1.7.0"
	"github.com/fatih/color v1.7.0/go.mod"
	"github.com/ghodss/yaml v1.0.0"
	"github.com/ghodss/yaml v1.0.0/go.mod"
	"github.com/go-kit/kit v0.8.0/go.mod"
	"github.com/go-logfmt/logfmt v0.3.0/go.mod"
	"github.com/go-sql-driver/mysql v1.5.0/go.mod"
	"github.com/go-stack/stack v1.8.0/go.mod"
	"github.com/go-test/deep v1.0.1/go.mod"
	"github.com/go-test/deep v1.0.3"
	"github.com/go-test/deep v1.0.3/go.mod"
	"github.com/gogo/protobuf v1.1.1/go.mod"
	"github.com/gogo/protobuf v1.2.0"
	"github.com/gogo/protobuf v1.2.0/go.mod"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod"
	"github.com/golang/groupcache v0.0.0-20180513044358-24b0969c4cb7"
	"github.com/golang/groupcache v0.0.0-20180513044358-24b0969c4cb7/go.mod"
	"github.com/golang/mock v1.1.1/go.mod"
	"github.com/golang/mock v1.2.0/go.mod"
	"github.com/golang/mock v1.3.1"
	"github.com/golang/mock v1.3.1/go.mod"
	"github.com/golang/protobuf v1.1.0/go.mod"
	"github.com/golang/protobuf v1.2.0/go.mod"
	"github.com/golang/protobuf v1.3.1/go.mod"
	"github.com/golang/protobuf v1.3.2"
	"github.com/golang/protobuf v1.3.2/go.mod"
	"github.com/golang/protobuf v1.3.4"
	"github.com/golang/protobuf v1.3.4/go.mod"
	"github.com/golang/snappy v0.0.0-20180518054509-2e65f85255db"
	"github.com/golang/snappy v0.0.0-20180518054509-2e65f85255db/go.mod"
	"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c/go.mod"
	"github.com/google/btree v1.0.0"
	"github.com/google/btree v1.0.0/go.mod"
	"github.com/google/go-cmp v0.2.0/go.mod"
	"github.com/google/go-cmp v0.3.0"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/google/go-cmp v0.3.1"
	"github.com/google/go-cmp v0.3.1/go.mod"
	"github.com/google/go-querystring v1.0.0"
	"github.com/google/go-querystring v1.0.0/go.mod"
	"github.com/google/martian v2.1.0+incompatible"
	"github.com/google/martian v2.1.0+incompatible/go.mod"
	"github.com/google/pprof v0.0.0-20181206194817-3ea8567a2e57/go.mod"
	"github.com/google/pprof v0.0.0-20190515194954-54271f7e092f/go.mod"
	"github.com/google/uuid v1.1.1"
	"github.com/google/uuid v1.1.1/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.4/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.5"
	"github.com/googleapis/gax-go/v2 v2.0.5/go.mod"
	"github.com/gophercloud/gophercloud v0.0.0-20190208042652-bc37892e1968"
	"github.com/gophercloud/gophercloud v0.0.0-20190208042652-bc37892e1968/go.mod"
	"github.com/gophercloud/utils v0.0.0-20190128072930-fbb6ab446f01"
	"github.com/gophercloud/utils v0.0.0-20190128072930-fbb6ab446f01/go.mod"
	"github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1"
	"github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1/go.mod"
	"github.com/gorilla/websocket v1.4.0"
	"github.com/gorilla/websocket v1.4.0/go.mod"
	"github.com/grpc-ecosystem/go-grpc-middleware v1.0.0"
	"github.com/grpc-ecosystem/go-grpc-middleware v1.0.0/go.mod"
	"github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0"
	"github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0/go.mod"
	"github.com/grpc-ecosystem/grpc-gateway v1.8.5"
	"github.com/grpc-ecosystem/grpc-gateway v1.8.5/go.mod"
	"github.com/hashicorp/aws-sdk-go-base v0.4.0"
	"github.com/hashicorp/aws-sdk-go-base v0.4.0/go.mod"
	"github.com/hashicorp/consul v0.0.0-20171026175957-610f3c86a089"
	"github.com/hashicorp/consul v0.0.0-20171026175957-610f3c86a089/go.mod"
	"github.com/hashicorp/errwrap v1.0.0"
	"github.com/hashicorp/errwrap v1.0.0/go.mod"
	"github.com/hashicorp/go-azure-helpers v0.10.0"
	"github.com/hashicorp/go-azure-helpers v0.10.0/go.mod"
	"github.com/hashicorp/go-checkpoint v0.5.0"
	"github.com/hashicorp/go-checkpoint v0.5.0/go.mod"
	"github.com/hashicorp/go-cleanhttp v0.5.0"
	"github.com/hashicorp/go-cleanhttp v0.5.0/go.mod"
	"github.com/hashicorp/go-cleanhttp v0.5.1"
	"github.com/hashicorp/go-cleanhttp v0.5.1/go.mod"
	"github.com/hashicorp/go-getter v1.4.2-0.20200106182914-9813cbd4eb02"
	"github.com/hashicorp/go-getter v1.4.2-0.20200106182914-9813cbd4eb02/go.mod"
	"github.com/hashicorp/go-hclog v0.0.0-20180709165350-ff2cf002a8dd/go.mod"
	"github.com/hashicorp/go-hclog v0.0.0-20181001195459-61d530d6c27f"
	"github.com/hashicorp/go-hclog v0.0.0-20181001195459-61d530d6c27f/go.mod"
	"github.com/hashicorp/go-immutable-radix v0.0.0-20180129170900-7f3cd4390caa"
	"github.com/hashicorp/go-immutable-radix v0.0.0-20180129170900-7f3cd4390caa/go.mod"
	"github.com/hashicorp/go-msgpack v0.5.4"
	"github.com/hashicorp/go-msgpack v0.5.4/go.mod"
	"github.com/hashicorp/go-multierror v1.0.0"
	"github.com/hashicorp/go-multierror v1.0.0/go.mod"
	"github.com/hashicorp/go-plugin v1.3.0"
	"github.com/hashicorp/go-plugin v1.3.0/go.mod"
	"github.com/hashicorp/go-retryablehttp v0.5.2"
	"github.com/hashicorp/go-retryablehttp v0.5.2/go.mod"
	"github.com/hashicorp/go-rootcerts v1.0.0"
	"github.com/hashicorp/go-rootcerts v1.0.0/go.mod"
	"github.com/hashicorp/go-safetemp v1.0.0"
	"github.com/hashicorp/go-safetemp v1.0.0/go.mod"
	"github.com/hashicorp/go-slug v0.4.1"
	"github.com/hashicorp/go-slug v0.4.1/go.mod"
	"github.com/hashicorp/go-sockaddr v0.0.0-20180320115054-6d291a969b86"
	"github.com/hashicorp/go-sockaddr v0.0.0-20180320115054-6d291a969b86/go.mod"
	"github.com/hashicorp/go-tfe v0.8.1"
	"github.com/hashicorp/go-tfe v0.8.1/go.mod"
	"github.com/hashicorp/go-uuid v1.0.0/go.mod"
	"github.com/hashicorp/go-uuid v1.0.1"
	"github.com/hashicorp/go-uuid v1.0.1/go.mod"
	"github.com/hashicorp/go-version v1.1.0"
	"github.com/hashicorp/go-version v1.1.0/go.mod"
	"github.com/hashicorp/go-version v1.2.0"
	"github.com/hashicorp/go-version v1.2.0/go.mod"
	"github.com/hashicorp/golang-lru v0.5.0/go.mod"
	"github.com/hashicorp/golang-lru v0.5.1"
	"github.com/hashicorp/golang-lru v0.5.1/go.mod"
	"github.com/hashicorp/hcl v0.0.0-20170504190234-a4b07c25de5f"
	"github.com/hashicorp/hcl v0.0.0-20170504190234-a4b07c25de5f/go.mod"
	"github.com/hashicorp/hcl/v2 v2.0.0/go.mod"
	"github.com/hashicorp/hcl/v2 v2.3.0"
	"github.com/hashicorp/hcl/v2 v2.3.0/go.mod"
	"github.com/hashicorp/hil v0.0.0-20190212112733-ab17b08d6590"
	"github.com/hashicorp/hil v0.0.0-20190212112733-ab17b08d6590/go.mod"
	"github.com/hashicorp/memberlist v0.1.0"
	"github.com/hashicorp/memberlist v0.1.0/go.mod"
	"github.com/hashicorp/serf v0.0.0-20160124182025-e4ec8cc423bb"
	"github.com/hashicorp/serf v0.0.0-20160124182025-e4ec8cc423bb/go.mod"
	"github.com/hashicorp/terraform-config-inspect v0.0.0-20191212124732-c6ae6269b9d7"
	"github.com/hashicorp/terraform-config-inspect v0.0.0-20191212124732-c6ae6269b9d7/go.mod"
	"github.com/hashicorp/terraform-svchost v0.0.0-20191011084731-65d371908596"
	"github.com/hashicorp/terraform-svchost v0.0.0-20191011084731-65d371908596/go.mod"
	"github.com/hashicorp/vault v0.10.4"
	"github.com/hashicorp/vault v0.10.4/go.mod"
	"github.com/hashicorp/yamux v0.0.0-20180604194846-3520598351bb"
	"github.com/hashicorp/yamux v0.0.0-20180604194846-3520598351bb/go.mod"
	"github.com/jhump/protoreflect v1.6.0"
	"github.com/jhump/protoreflect v1.6.0/go.mod"
	"github.com/jmespath/go-jmespath v0.0.0-20160202185014-0b12d6b521d8/go.mod"
	"github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af"
	"github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af/go.mod"
	"github.com/jmespath/go-jmespath v0.3.0"
	"github.com/jmespath/go-jmespath v0.3.0/go.mod"
	"github.com/jonboulle/clockwork v0.1.0"
	"github.com/jonboulle/clockwork v0.1.0/go.mod"
	"github.com/joyent/triton-go v0.0.0-20180313100802-d8f9c0314926"
	"github.com/joyent/triton-go v0.0.0-20180313100802-d8f9c0314926/go.mod"
	"github.com/json-iterator/go v1.1.5"
	"github.com/json-iterator/go v1.1.5/go.mod"
	"github.com/jstemmer/go-junit-report v0.0.0-20190106144839-af01ea7f8024/go.mod"
	"github.com/jtolds/gls v4.2.1+incompatible"
	"github.com/jtolds/gls v4.2.1+incompatible/go.mod"
	"github.com/julienschmidt/httprouter v1.2.0/go.mod"
	"github.com/kardianos/osext v0.0.0-20190222173326-2bc1f35cddc0"
	"github.com/kardianos/osext v0.0.0-20190222173326-2bc1f35cddc0/go.mod"
	"github.com/keybase/go-crypto v0.0.0-20161004153544-93f5b35093ba"
	"github.com/keybase/go-crypto v0.0.0-20161004153544-93f5b35093ba/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod"
	"github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515/go.mod"
	"github.com/kr/pretty v0.1.0"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kylelemons/godebug v0.0.0-20170820004349-d65d576e9348/go.mod"
	"github.com/kylelemons/godebug v1.1.0"
	"github.com/kylelemons/godebug v1.1.0/go.mod"
	"github.com/lib/pq v1.0.0"
	"github.com/lib/pq v1.0.0/go.mod"
	"github.com/likexian/gokit v0.0.0-20190309162924-0a377eecf7aa/go.mod"
	"github.com/likexian/gokit v0.0.0-20190418170008-ace88ad0983b/go.mod"
	"github.com/likexian/gokit v0.0.0-20190501133040-e77ea8b19cdc/go.mod"
	"github.com/likexian/gokit v0.20.15"
	"github.com/likexian/gokit v0.20.15/go.mod"
	"github.com/likexian/simplejson-go v0.0.0-20190409170913-40473a74d76d/go.mod"
	"github.com/likexian/simplejson-go v0.0.0-20190419151922-c1f9f0b4f084/go.mod"
	"github.com/likexian/simplejson-go v0.0.0-20190502021454-d8787b4bfa0b/go.mod"
	"github.com/lusis/go-artifactory v0.0.0-20160115162124-7e4ce345df82"
	"github.com/lusis/go-artifactory v0.0.0-20160115162124-7e4ce345df82/go.mod"
	"github.com/masterzen/simplexml v0.0.0-20160608183007-4572e39b1ab9"
	"github.com/masterzen/simplexml v0.0.0-20160608183007-4572e39b1ab9/go.mod"
	"github.com/masterzen/winrm v0.0.0-20190223112901-5e5c9a7fe54b"
	"github.com/masterzen/winrm v0.0.0-20190223112901-5e5c9a7fe54b/go.mod"
	"github.com/mattn/go-colorable v0.0.9/go.mod"
	"github.com/mattn/go-colorable v0.1.1"
	"github.com/mattn/go-colorable v0.1.1/go.mod"
	"github.com/mattn/go-isatty v0.0.3/go.mod"
	"github.com/mattn/go-isatty v0.0.4/go.mod"
	"github.com/mattn/go-isatty v0.0.5"
	"github.com/mattn/go-isatty v0.0.5/go.mod"
	"github.com/mattn/go-runewidth v0.0.4/go.mod"
	"github.com/mattn/go-shellwords v1.0.4"
	"github.com/mattn/go-shellwords v1.0.4/go.mod"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1/go.mod"
	"github.com/miekg/dns v1.0.8"
	"github.com/miekg/dns v1.0.8/go.mod"
	"github.com/mitchellh/cli v1.0.0"
	"github.com/mitchellh/cli v1.0.0/go.mod"
	"github.com/mitchellh/colorstring v0.0.0-20190213212951-d06e56a500db"
	"github.com/mitchellh/colorstring v0.0.0-20190213212951-d06e56a500db/go.mod"
	"github.com/mitchellh/copystructure v1.0.0"
	"github.com/mitchellh/copystructure v1.0.0/go.mod"
	"github.com/mitchellh/go-homedir v1.0.0/go.mod"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/mitchellh/go-homedir v1.1.0/go.mod"
	"github.com/mitchellh/go-linereader v0.0.0-20190213213312-1b945b3263eb"
	"github.com/mitchellh/go-linereader v0.0.0-20190213213312-1b945b3263eb/go.mod"
	"github.com/mitchellh/go-testing-interface v0.0.0-20171004221916-a61a99592b77/go.mod"
	"github.com/mitchellh/go-testing-interface v1.0.0"
	"github.com/mitchellh/go-testing-interface v1.0.0/go.mod"
	"github.com/mitchellh/go-wordwrap v0.0.0-20150314170334-ad45545899c7/go.mod"
	"github.com/mitchellh/go-wordwrap v1.0.0"
	"github.com/mitchellh/go-wordwrap v1.0.0/go.mod"
	"github.com/mitchellh/hashstructure v1.0.0"
	"github.com/mitchellh/hashstructure v1.0.0/go.mod"
	"github.com/mitchellh/mapstructure v1.1.2"
	"github.com/mitchellh/mapstructure v1.1.2/go.mod"
	"github.com/mitchellh/panicwrap v1.0.0"
	"github.com/mitchellh/panicwrap v1.0.0/go.mod"
	"github.com/mitchellh/prefixedio v0.0.0-20190213213902-5733675afd51"
	"github.com/mitchellh/prefixedio v0.0.0-20190213213902-5733675afd51/go.mod"
	"github.com/mitchellh/reflectwalk v1.0.0"
	"github.com/mitchellh/reflectwalk v1.0.0/go.mod"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd/go.mod"
	"github.com/modern-go/reflect2 v1.0.1"
	"github.com/modern-go/reflect2 v1.0.1/go.mod"
	"github.com/mozillazg/go-httpheader v0.2.1"
	"github.com/mozillazg/go-httpheader v0.2.1/go.mod"
	"github.com/mwitkow/go-conntrack v0.0.0-20161129095857-cc309e4a2223/go.mod"
	"github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d"
	"github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d/go.mod"
	"github.com/oklog/run v1.0.0"
	"github.com/oklog/run v1.0.0/go.mod"
	"github.com/packer-community/winrmcp v0.0.0-20180102160824-81144009af58"
	"github.com/packer-community/winrmcp v0.0.0-20180102160824-81144009af58/go.mod"
	"github.com/pascaldekloe/goe v0.0.0-20180627143212-57f6aae5913c"
	"github.com/pascaldekloe/goe v0.0.0-20180627143212-57f6aae5913c/go.mod"
	"github.com/pkg/browser v0.0.0-20180916011732-0a3d74bf9ce4"
	"github.com/pkg/browser v0.0.0-20180916011732-0a3d74bf9ce4/go.mod"
	"github.com/pkg/errors v0.8.0"
	"github.com/pkg/errors v0.8.0/go.mod"
	"github.com/pkg/errors v0.9.1"
	"github.com/pkg/errors v0.9.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/posener/complete v1.1.1/go.mod"
	"github.com/posener/complete v1.2.1"
	"github.com/posener/complete v1.2.1/go.mod"
	"github.com/prometheus/client_golang v0.9.1/go.mod"
	"github.com/prometheus/client_golang v0.9.3-0.20190127221311-3c4408c8b829"
	"github.com/prometheus/client_golang v0.9.3-0.20190127221311-3c4408c8b829/go.mod"
	"github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910/go.mod"
	"github.com/prometheus/client_model v0.0.0-20190115171406-56726106282f"
	"github.com/prometheus/client_model v0.0.0-20190115171406-56726106282f/go.mod"
	"github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4"
	"github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4/go.mod"
	"github.com/prometheus/common v0.2.0"
	"github.com/prometheus/common v0.2.0/go.mod"
	"github.com/prometheus/procfs v0.0.0-20181005140218-185b4288413d/go.mod"
	"github.com/prometheus/procfs v0.0.0-20190117184657-bf6a532e95b1"
	"github.com/prometheus/procfs v0.0.0-20190117184657-bf6a532e95b1/go.mod"
	"github.com/rogpeppe/fastuuid v0.0.0-20150106093220-6724a57986af/go.mod"
	"github.com/satori/go.uuid v1.2.0"
	"github.com/satori/go.uuid v1.2.0/go.mod"
	"github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529"
	"github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529/go.mod"
	"github.com/sergi/go-diff v1.0.0"
	"github.com/sergi/go-diff v1.0.0/go.mod"
	"github.com/sirupsen/logrus v1.2.0"
	"github.com/sirupsen/logrus v1.2.0/go.mod"
	"github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d"
	"github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d/go.mod"
	"github.com/smartystreets/goconvey v0.0.0-20180222194500-ef6db91d284a"
	"github.com/smartystreets/goconvey v0.0.0-20180222194500-ef6db91d284a/go.mod"
	"github.com/soheilhy/cmux v0.1.4"
	"github.com/soheilhy/cmux v0.1.4/go.mod"
	"github.com/spf13/afero v1.2.1"
	"github.com/spf13/afero v1.2.1/go.mod"
	"github.com/spf13/pflag v1.0.2/go.mod"
	"github.com/spf13/pflag v1.0.3"
	"github.com/spf13/pflag v1.0.3/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.1.1/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.5.1"
	"github.com/stretchr/testify v1.5.1/go.mod"
	"github.com/svanharmelen/jsonapi v0.0.0-20180618144545-0c0828c3f16d"
	"github.com/svanharmelen/jsonapi v0.0.0-20180618144545-0c0828c3f16d/go.mod"
	"github.com/tencentcloud/tencentcloud-sdk-go v3.0.82+incompatible"
	"github.com/tencentcloud/tencentcloud-sdk-go v3.0.82+incompatible/go.mod"
	"github.com/tencentyun/cos-go-sdk-v5 v0.0.0-20190808065407-f07404cefc8c"
	"github.com/tencentyun/cos-go-sdk-v5 v0.0.0-20190808065407-f07404cefc8c/go.mod"
	"github.com/terraform-providers/terraform-provider-openstack v1.15.0"
	"github.com/terraform-providers/terraform-provider-openstack v1.15.0/go.mod"
	"github.com/tmc/grpc-websocket-proxy v0.0.0-20171017195756-830351dc03c6"
	"github.com/tmc/grpc-websocket-proxy v0.0.0-20171017195756-830351dc03c6/go.mod"
	"github.com/ugorji/go v0.0.0-20180813092308-00b869d2f4a5"
	"github.com/ugorji/go v0.0.0-20180813092308-00b869d2f4a5/go.mod"
	"github.com/ulikunitz/xz v0.5.5"
	"github.com/ulikunitz/xz v0.5.5/go.mod"
	"github.com/vmihailenco/msgpack v3.3.3+incompatible/go.mod"
	"github.com/vmihailenco/msgpack v4.0.1+incompatible"
	"github.com/vmihailenco/msgpack v4.0.1+incompatible/go.mod"
	"github.com/xanzy/ssh-agent v0.2.1"
	"github.com/xanzy/ssh-agent v0.2.1/go.mod"
	"github.com/xiang90/probing v0.0.0-20160813154853-07dd2e8dfe18"
	"github.com/xiang90/probing v0.0.0-20160813154853-07dd2e8dfe18/go.mod"
	"github.com/xlab/treeprint v0.0.0-20161029104018-1d6e34225557"
	"github.com/xlab/treeprint v0.0.0-20161029104018-1d6e34225557/go.mod"
	"github.com/zclconf/go-cty v1.0.0/go.mod"
	"github.com/zclconf/go-cty v1.1.0"
	"github.com/zclconf/go-cty v1.1.0/go.mod"
	"github.com/zclconf/go-cty v1.2.0"
	"github.com/zclconf/go-cty v1.2.0/go.mod"
	"github.com/zclconf/go-cty v1.2.1"
	"github.com/zclconf/go-cty v1.2.1/go.mod"
	"github.com/zclconf/go-cty-yaml v1.0.1"
	"github.com/zclconf/go-cty-yaml v1.0.1/go.mod"
	"go.opencensus.io v0.21.0/go.mod"
	"go.opencensus.io v0.22.0"
	"go.opencensus.io v0.22.0/go.mod"
	"go.uber.org/atomic v1.3.2"
	"go.uber.org/atomic v1.3.2/go.mod"
	"go.uber.org/multierr v1.1.0"
	"go.uber.org/multierr v1.1.0/go.mod"
	"go.uber.org/zap v1.9.1"
	"go.uber.org/zap v1.9.1/go.mod"
	"golang.org/x/crypto v0.0.0-20180904163835-0709b304e793/go.mod"
	"golang.org/x/crypto v0.0.0-20190219172222-a4c6cb3142f2/go.mod"
	"golang.org/x/crypto v0.0.0-20190222235706-ffb98f73852f/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190426145343-a29dc8fdc734/go.mod"
	"golang.org/x/crypto v0.0.0-20190605123033-f99c8df09eb5/go.mod"
	"golang.org/x/crypto v0.0.0-20200510223506-06a226fb4e37"
	"golang.org/x/crypto v0.0.0-20200510223506-06a226fb4e37/go.mod"
	"golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod"
	"golang.org/x/exp v0.0.0-20190510132918-efd6b22b2522/go.mod"
	"golang.org/x/image v0.0.0-20190227222117-0694c2d4d067/go.mod"
	"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod"
	"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961/go.mod"
	"golang.org/x/lint v0.0.0-20190301231843-5614ed5bae6f/go.mod"
	"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod"
	"golang.org/x/lint v0.0.0-20190409202823-959b441ac422/go.mod"
	"golang.org/x/mobile v0.0.0-20190312151609-d3739f865fa6/go.mod"
	"golang.org/x/net v0.0.0-20180530234432-1e491301e022/go.mod"
	"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
	"golang.org/x/net v0.0.0-20180811021610-c39426892332/go.mod"
	"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod"
	"golang.org/x/net v0.0.0-20181114220301-adae6a3d119a/go.mod"
	"golang.org/x/net v0.0.0-20181220203305-927f97764cc3/go.mod"
	"golang.org/x/net v0.0.0-20190108225652-1e06a53dbb7e/go.mod"
	"golang.org/x/net v0.0.0-20190125091013-d26f9f9a57f3/go.mod"
	"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd/go.mod"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190501004415-9ce7a6920f09/go.mod"
	"golang.org/x/net v0.0.0-20190503192946-f4e77d36d62c/go.mod"
	"golang.org/x/net v0.0.0-20190603091049-60506f45cf65/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20191009170851-d66e71096ffb"
	"golang.org/x/net v0.0.0-20191009170851-d66e71096ffb/go.mod"
	"golang.org/x/net v0.0.0-20200202094626-16171245cfb2"
	"golang.org/x/net v0.0.0-20200202094626-16171245cfb2/go.mod"
	"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190226205417-e64efc72b421/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45"
	"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45/go.mod"
	"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
	"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
	"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
	"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sys v0.0.0-20180823144017-11551d06cbcc/go.mod"
	"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod"
	"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod"
	"golang.org/x/sys v0.0.0-20181107165924-66b7b1311ac8/go.mod"
	"golang.org/x/sys v0.0.0-20181116152217-5ac8a444bdc5/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190221075227-b4e8571b14e0/go.mod"
	"golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223/go.mod"
	"golang.org/x/sys v0.0.0-20190312061237-fead79001313/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190502145724-3ef323f4f1fd/go.mod"
	"golang.org/x/sys v0.0.0-20190502175342-a43fa875dd82/go.mod"
	"golang.org/x/sys v0.0.0-20190507160741-ecd444e8653b/go.mod"
	"golang.org/x/sys v0.0.0-20190606165138-5da285871e9c/go.mod"
	"golang.org/x/sys v0.0.0-20190624142023-c5567b49c5d0/go.mod"
	"golang.org/x/sys v0.0.0-20190804053845-51ab0e2deafa"
	"golang.org/x/sys v0.0.0-20190804053845-51ab0e2deafa/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.1-0.20180807135948-17ff2d5776d2/go.mod"
	"golang.org/x/text v0.3.2"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/time v0.0.0-20181108054448-85acf8d2951c/go.mod"
	"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4"
	"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod"
	"golang.org/x/tools v0.0.0-20190226205152-f727befe758c/go.mod"
	"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
	"golang.org/x/tools v0.0.0-20190312151545-0bb0c0a6e846/go.mod"
	"golang.org/x/tools v0.0.0-20190312170243-e65039ee4138/go.mod"
	"golang.org/x/tools v0.0.0-20190425150028-36563e24a262/go.mod"
	"golang.org/x/tools v0.0.0-20190506145303-2d16b83fe98c/go.mod"
	"golang.org/x/tools v0.0.0-20190524140312-2c0ae7006135/go.mod"
	"golang.org/x/tools v0.0.0-20190606124116-d0a3d012864b/go.mod"
	"golang.org/x/tools v0.0.0-20190628153133-6cdbf07be9d0"
	"golang.org/x/tools v0.0.0-20190628153133-6cdbf07be9d0/go.mod"
	"google.golang.org/api v0.4.0/go.mod"
	"google.golang.org/api v0.7.0/go.mod"
	"google.golang.org/api v0.8.0/go.mod"
	"google.golang.org/api v0.9.0"
	"google.golang.org/api v0.9.0/go.mod"
	"google.golang.org/appengine v1.1.0/go.mod"
	"google.golang.org/appengine v1.4.0/go.mod"
	"google.golang.org/appengine v1.5.0/go.mod"
	"google.golang.org/appengine v1.6.1"
	"google.golang.org/appengine v1.6.1/go.mod"
	"google.golang.org/genproto v0.0.0-20170818010345-ee236bd376b0/go.mod"
	"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod"
	"google.golang.org/genproto v0.0.0-20190307195333-5fe7a883aa19/go.mod"
	"google.golang.org/genproto v0.0.0-20190418145605-e7d98fc518a7/go.mod"
	"google.golang.org/genproto v0.0.0-20190425155659-357c62f0e4bb/go.mod"
	"google.golang.org/genproto v0.0.0-20190502173448-54afdca5d873/go.mod"
	"google.golang.org/genproto v0.0.0-20190801165951-fa694d86fc64/go.mod"
	"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55"
	"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55/go.mod"
	"google.golang.org/grpc v1.8.0/go.mod"
	"google.golang.org/grpc v1.19.0/go.mod"
	"google.golang.org/grpc v1.20.1/go.mod"
	"google.golang.org/grpc v1.21.1"
	"google.golang.org/grpc v1.21.1/go.mod"
	"google.golang.org/grpc v1.23.0/go.mod"
	"google.golang.org/grpc v1.27.1"
	"google.golang.org/grpc v1.27.1/go.mod"
	"gopkg.in/alecthomas/kingpin.v2 v2.2.6/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/cheggaaa/pb.v1 v1.0.27/go.mod"
	"gopkg.in/ini.v1 v1.42.0"
	"gopkg.in/ini.v1 v1.42.0/go.mod"
	"gopkg.in/resty.v1 v1.12.0/go.mod"
	"gopkg.in/yaml.v2 v2.0.0-20170812160011-eb3733d160e7/go.mod"
	"gopkg.in/yaml.v2 v2.2.1/go.mod"
	"gopkg.in/yaml.v2 v2.2.2"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod"
	"honnef.co/go/tools v0.0.0-20190106161140-3f1c8253044a/go.mod"
	"honnef.co/go/tools v0.0.0-20190418001031-e561f6794a2a/go.mod"
	"honnef.co/go/tools v0.0.0-20190523083050-ea95bdfd59fc/go.mod"
	"rsc.io/binaryregexp v0.2.0/go.mod"
)

go-module_set_globals

DESCRIPTION="A tool for building, changing, and combining infrastructure safely"
HOMEPAGE="https://www.terraform.io/"
SRC_URI="https://github.com/hashicorp/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="Apache-2.0 BSD-2 BSD-4 ECL-2.0 imagemagick ISC JSON MIT MIT-with-advertising MPL-2.0 unicode"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="test"

DOCS=( {README,CHANGELOG}.md )

src_compile() {
	go build \
		-work -o "bin/${PN}" ./ || die
}

src_install() {
	dobin bin/terraform

	einstalldocs
}

pkg_postinst() {
	elog "If you would like to install shell completions please run:"
	elog "    terraform -install-autocomplete"
}
