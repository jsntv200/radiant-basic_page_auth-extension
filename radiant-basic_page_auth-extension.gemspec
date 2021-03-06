# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-basic_page_auth-extension"

Gem::Specification.new do |s|
  s.name        = "radiant-basic_page_auth-extension"
  s.version     = RadiantBasicPageAuthExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = RadiantBasicPageAuthExtension::AUTHORS
  s.email       = RadiantBasicPageAuthExtension::EMAIL
  s.homepage    = RadiantBasicPageAuthExtension::URL
  s.summary     = RadiantBasicPageAuthExtension::SUMMARY
  s.description = RadiantBasicPageAuthExtension::DESCRIPTION

  ignores = if File.exist?('.gitignore')
    File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end

  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  s.require_paths = ["lib"]
end
