#
# Cookbook Name:: macapps
# Recipe:: flip4mac
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

dmg_properties = node['macapps']['flip4mac']['dmg']

dmg_package "Flip4Mac" do
  dmg_name "Flip4Mac"
  volumes_dir "Flip4Mac"
  source dmg_properties['url']
  checksum dmg_properties['checksum']
  action :install
end