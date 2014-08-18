# Cookbook Name:: wlp
# Attributes:: default_server
#
# (C) Copyright IBM Corporation 2013.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#<> Defines a `defaultServer` server instance. Used by the `serverconfig` recipe.
default[:wlp][:servers][:defaultServer] = {
  "enabled" => true,
  "serverName" => "defaultServer",
  "description" => "Default Server",
  "featureManager" => {
    "feature" => [ "jsp-2.2", "jdbc-4.0","jpa-2.0","adminCenter-1.0"]
  },
  "httpEndpoint" => {
    "id" => "defaultHttpEndpoint",
    "host" => "*",
    "httpPort" => "9080",
    "httpsPort" => "9443"
  },
  "quickStartSecurity" => {
    "userName" => "admin",
    "userPassword" => "admin"
  },
  "keyStore" => {
    "id" => "defaultKeyStore",
    "password" => "Liberty"
  },
  "library" => {
    "id" => "DBLib",
    "fileset" => {
     "dir" => "/opt/db2/java",
     "includes" => "db2jcc4.jar db2jcc_license_cisuz.jar"
   }
  },
  "dataSource" => {
    "id" => "db",
    "jndiName" => "jdbc/db",
    "connectionSharing" => "MatchCurrentState",
    "isolationLevel" => "TRANSACTION_READ_COMMITTED",
    "jdbcDriver" => {
       "libraryRef" => "DBLib"
    },
    "properties.db2.jcc" => {
      "databaseName" => "SAMPLE",
      "serverName" => "172.31.1.3",
      "portNumber" => "50000",
      "currentLockTimeout" => "30s",
      "user" => "db2inst1",
      "password" => "passw0rd"
    }
  }  
}
