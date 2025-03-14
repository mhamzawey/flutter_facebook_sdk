#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_facebook_sdk.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_facebook_sdk'
  s.version          = '0.0.2'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://saadfarhan.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Mohamed Hamza' => 'hamza@hotdesk-app.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'FBSDKCoreKit', '~> 11.2.1'
  s.platform = :ios, '10.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
