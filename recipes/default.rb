#
# Cookbook Name:: dunst
# Recipe:: default
#
# Copyright 2013-2014, Thomas Boerger <thomas@webhippie.de>
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
#

case node["platform_family"]
when "suse"
  include_recipe "zypper"

  zypper_repository node["dunst"]["zypper"]["alias"] do
    uri node["dunst"]["zypper"]["repo"]
    key node["dunst"]["zypper"]["key"]
    title node["dunst"]["zypper"]["title"]

    action :add

    only_if do
      node["dunst"]["zypper"]["enabled"]
    end
  end
end

node["dunst"]["packages"].each do |name|
  package name do
    action :install
  end
end