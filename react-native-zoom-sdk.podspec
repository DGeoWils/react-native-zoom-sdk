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
  s.vendored_frameworks = "ios/lib/prod/MobileRTC.framework"
#   s.vendored_frameworks = "ios/lib/dev/MobileRTC.framework"

#   s.prepare_command = <<-CMD
#                           echo "installing mobilertc"
#                           rm -rf ios/lib-dev
#                           rm -rf ios/lib-prod
#                           ## Pull Down Debug

#                           curl -o dev-temp.zip -L https://github.com/zoom/zoom-sdk-ios/releases/download/v4.3.1.47201.0322/ios-mobilertc-all-4.3.47201.0322-n.zip
#                           unzip -d dev-temp dev-temp.zip
#                           mv dev-temp/*/* dev-temp
#                           mkdir ios/lib-dev
#                           mv dev-temp/lib/MobileRTC.framework ios/lib-dev
#                           mv dev-temp/lib/MobileRTCResources.bundle ios/lib-dev
#                           rm dev-temp.zip
#                           rm -rf dev-temp
#
#                         curl -o prod-temp.zip -L https://github.com/zoom/zoom-sdk-ios/archive/v4.6.15805.0403.zip
#                         unzip -d prod-temp prod-temp.zip
#                         mkdir ios/lib-prod
#                         mv prod-temp/*/* prod-temp
#                         mv prod-temp/lib/MobileRTC.framework ios/lib-prod
#                         mv prod-temp/lib/MobileRTCResources.bundle ios/lib-prod
#                         rm prod-temp.zip
#                         rm -rf prod-temp
#                         CMD

#   s.default_subspec = 'Core'
#
#   s.subspec 'Core' do |cs|
#     cs.dependency 'react-native-zoom-sdk/DebugLib', :configurations => ['Debug']
#     cs.dependency 'react-native-zoom-sdk/ReleaseLib', :configurations => ['Release']
#   end
#
#   s.subspec 'DebugLib' do |sd|
#     sd.script_phase = { :name => 'Copy Correct Mobile RTC', :script => 'cp -R ios/lib/dev/MobileRTC.framework ios/lib' }
#   end
#
#   s.subspec 'ReleaseLib' do |sr|
# #     sr.vendored_frameworks = "ios/lib/prod/MobileRTC.framework"
#   end
end
