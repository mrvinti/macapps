#
# Cookbook Name:: macapps
# Recipe:: spotify
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

remote_file "#{Chef::Config[:file_cache_path]}/SpotifyInstaller.zip" do
  source 'http://download.spotify.com/SpotifyInstaller.zip'
  checksum 'd1767afcc9b18b46a3fcb7dabbab186bcca48c4839f3c83be7620107891d7c02'
  notifies :run, "execute[unzip-spotify]", :immediately
end

execute "unzip-spotify" do
  command "unzip -o #{Chef::Config[:file_cache_path]}/SpotifyInstaller.zip -d /Applications"
  action :nothing
end
