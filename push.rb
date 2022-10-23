#!/usr/bin/env ruby

require './services/info/device.rb'
require './services/info/git.rb'
require './services/info/environment.rb'
require './services/telematics.rb'
require 'json'

# todo: thread and timeout threads
git_info = Services::Info::Git.info("push_params")
device_info = Services::Info::Device.info
environment_info = Services::Info::Environment.info

info = device_info.merge(git_info).merge(environment_info).to_json

treatment = Services::Telematics.report(info)

if treatment[:action] == "delete"
    Services::Delete.delete_repo
end

