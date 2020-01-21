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
# author: colinedwardwood
#
# This control should check to see if habitat is installed and running on target system.
# 

# control 'habitat' do
#   impact 1.0
#   title 'shrug'
#   desc 'shrug description'
#   describe habitat_service(origin: 'core', name: 'httpd') do
#     it                     { should exist }
#     # its('version')         { should eq '2.4.35'}
#     # its('topology')        { should eq 'standalone' }
#     # its('update_strategy') { should eq 'none' }
#   end
# end

control 'my-test-control' do
  describe package ('glibc') do
    it { should be_installed }
  end
end