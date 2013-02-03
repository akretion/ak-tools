#!/usr/bin/env rake

require 'foodcritic'
require 'rake/testtask'

FoodCritic::Rake::LintTask.new do |t|
  t.options = { :fail_tags => ['any'], :tags => ['~FC041'] }
end

Rake::TestTask.new do |t|
  t.name = "unit"
  t.test_files = FileList['test/unit/**/*_spec.rb']
  t.verbose = true
end

begin
  require 'jamie/rake_tasks'
  Jamie::RakeTasks.new
rescue LoadError
  puts ">>>>> Jamie gem not loaded, omitting tasks" unless ENV['CI']
end

task :default => [:foodcritic, :unit]
