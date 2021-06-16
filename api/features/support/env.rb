require 'cucumber'
require 'httparty'
HTTParty::Basement.default_options.update(verify: false)
require 'rspec'
require 'report_builder'
require 'pry'
require 'json'
require 'faker'

TARGET ||= ENV['TARGET']

# include AllureCucumber::DSL

Cucumber::Core::Test::Step.module_eval do
  def name
    return text if text == 'Before hook'
    return text if text == 'After hook'

    "#{source.last.keyword}#{text}"
  end
end