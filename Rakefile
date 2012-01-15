require 'rubygems'
require 'rake/gempackagetask'

spec = Gem::Specification::new do |spec|
  spec.name = "oldskool-password"
  spec.version = "0.0.2"
  spec.platform = Gem::Platform::RUBY
  spec.summary = "oldskool-password"
  spec.description = "description: Generate random passwords in Oldskool using the passmakr gem"

  spec.files = FileList["lib/**/*.rb", "views/*.erb"]
  spec.executables = []

  spec.require_path = "lib"

  spec.has_rdoc = false
  spec.test_files = nil
  spec.add_dependency 'passmakr'

  spec.extensions.push(*[])

  spec.author = "R.I.Pienaar"
  spec.email = "rip@devco.net"
  spec.homepage = "http://devco.net/"
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_zip = false
  pkg.need_tar = false
end
