#
# Cookbook Name:: dunst
# Attributes:: default
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

default["dunst"]["packages"] = %w(
  dunst
  libnotify-tools
)

default["dunst"]["zypper"]["enabled"] = true
default["dunst"]["zypper"]["alias"] = "x11-windowmanagers"
default["dunst"]["zypper"]["title"] = "X11 Windowmanagers"
default["dunst"]["zypper"]["repo"] = "http://download.opensuse.org/repositories/X11:/windowmanagers/openSUSE_#{node["platform_version"].to_i.to_s == node["platform_version"] ? "Tumbleweed" : node["platform_version"]}/"
default["dunst"]["zypper"]["key"] = "#{node["dunst"]["zypper"]["repo"]}repodata/repomd.xml.key"
