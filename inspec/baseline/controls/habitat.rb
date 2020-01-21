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

control 'habitat' do
  impact 1.0
  title 'habitat installation tests'
  desc 'verify the necessary steps have been completed to install, configure and start the habitat supervisor'
  describe group('hab') do
    it { should exist }
  end
  describe user('hab') do
    it { should exist }
    its('group') { should eq 'hab' }
  end
  describe file('/tmp/install_hab.sh') do
    it { should exist }
    it { should be_executable }
  end
end