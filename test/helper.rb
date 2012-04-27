# encoding: ASCII-8BIT
require 'test/unit'
require 'rubygems'
require 'test/unit/xml' ## RubyJedi

if RUBY_VERSION >= "1.9"
  require 'test/unit/assertions'

  module Test::Unit::Assertions
    def _wrap_assertion
      yield if block_given?
    end
  end
end

ENV['DEBUG_SOAP4R'] = 'true' ## Needed to force wsdl2ruby.rb and xsd2ruby.rb to use DEVELOPMENT soap4r libs instead of installed soap4r libs
$DEBUG = !!ENV['WIREDUMPS']
