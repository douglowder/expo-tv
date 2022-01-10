require 'json'

package = JSON.parse(File.read(File.join(__dir__, '..', 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'EXRandom'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.platforms     = {:ios => '12.0', :tvos => '12.0'}
  s.source         = { git: 'https://github.com/expo/expo.git' }
  s.static_framework = true
  s.source_files   = 'EXRandom/**/*.{h,m}'
  s.preserve_paths = 'EXRandom/**/*.{h,m}'
  s.requires_arc   = true

  s.dependency 'React-Core'
end


