require "rubygems"
# require "ap"

# IRB::Irb.class_eval do
#   def output_value
#     ap @context.last_value
#   end
# end

if ENV.include?('RAILS_ENV')
  if !Object.const_defined?('RAILS_DEFAULT_LOGGER')
    require 'logger'
    Object.const_set('RAILS_DEFAULT_LOGGER', Logger.new(STDOUT))
  end
end

