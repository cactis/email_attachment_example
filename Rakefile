# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require "rubygems"
require 'motion-cocoapods'
require 'bundler'
Bundler.require
require 'motion-prime'

require 'bubble-wrap/mail'

require File.expand_path 'app/environment.rb'
Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Mail Test'

  app.version = '0.0.1'
  app.icons = %w{Icon.png}

  app.provisioning_profile = '/Users/ctslin/BTSync/_myself/_mac/distribution.mobileprovision'
end
