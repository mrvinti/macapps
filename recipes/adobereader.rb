#
# Cookbook Name:: ud-macapps
# Recipe:: adobereader
#
# Copyright 2013, Urbandecoder Labs LLC
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

dmg_package "Adobe Reader XI Installer" do
  source "https://ardownload.adobe.com/pub/adobe/reader/mac/11.x/11.0.04/en_US/AdbeRdr11004_en_US.dmg"
  action :install
  volumes_dir "AdbeRdr11004_en_US"
  checksum "75ffa292c15328bdb09043e19759f4053585444614433fc8ea05a3ed55f9e4e0"
  type "pkg"
  package_id "com.adobe.acrobat.reader.11004.reader.app.pkg.en_US"
end