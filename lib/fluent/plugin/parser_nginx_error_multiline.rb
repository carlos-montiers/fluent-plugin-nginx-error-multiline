#
# Copyright 2018- Carlos Montiers A.
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

require 'fluent/plugin/parser_multiline'

module Fluent
  module Plugin
    class NginxErrorMultilineParser < MultilineParser
      #The multiline word is needed for tail plugin
      Plugin.register_parser("nginx_error_multiline", self)

      def configure(conf)
        @format_firstline = "/^\\d{4}\\/\\d{2}\\/\\d{2} \\d{2}:\\d{2}:\\d{2} \\[\\w+\\] (?<pid>\\d+).(?<tid>\\d+): /"
        conf["format1"] = "/^(?<time>\\d{4}\\/\\d{2}\\/\\d{2} \\d{2}:\\d{2}:\\d{2}) \\[(?<log_level>\\w+)\\] (?<pid>\\d+).(?<tid>\\d+): (?<message>.*)/"
        super
      end

    end
  end
end

