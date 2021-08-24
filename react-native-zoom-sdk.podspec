require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.cocoapods_version = '>= 1.9'

  s.name         = 'react-native-zoom-sdk'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/DGeoWils/react-native-zoom-sdk.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
  s.resource = "ios/lib/MobileRTCResources.bundle"
  s.vendored_framework = "ios/lib/MobileRTC.xcframework"

  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => './ios/lib/**/*' }
end
