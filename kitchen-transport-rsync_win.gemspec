# -*- encoding: utf-8 -*-
#
# Copyright 2018 WalmartLabs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$:.push File.expand_path('../lib', __FILE__)

require 'kitchen-transport-rsync_win/version'

Gem::Specification.new do |spec|
  spec.name = 'kitchen-transport-rsync_win'
  spec.version = Kitchen::Transport::Rsync_win::VERSION
  spec.authors = 'Dennis Schelchkov'
  spec.email = 'dschelchkov@walmartlabs.com'
  spec.description = 'Additional Test kitchen transport using rsync, modified to work with cygwin'
  spec.summary = spec.description
  spec.homepage = 'https://github.com/dschelchkov/kitchen-transport-rsync_win'
  spec.license = 'Apache 2.0'

  spec.files = `git ls-files`.split($/)
  spec.executables = []
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_dependency 'test-kitchen', '~> 1.4'
  spec.add_development_dependency 'rake', '~> 10.4'
  spec.add_development_dependency 'rspec', '~> 3.3'
end
