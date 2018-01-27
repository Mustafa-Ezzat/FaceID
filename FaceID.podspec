Pod::Spec.new do |s|
  s.name             = 'FaceID'
  s.version          = '1.0.2'
  s.summary          = 'For Local auth'
 
  s.description      = <<-DESC
Auth through Touch ID or Face ID!
                       DESC
 
  s.homepage         = 'https://github.com/Mustafa-Ezzat/FaceID'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mustafa Ezzat' => 'mustafa.fci.cs@gmail.com' }
  s.source           = { :git => 'https://github.com/Mustafa-Ezzat/FaceID.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '11.2'
  s.source_files = 'Source/LocalAuth.swift'
 
end