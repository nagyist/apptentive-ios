Pod::Spec.new do |s|
  s.name     = 'apptentive-ios'
  s.version  = '1.5.0'
  s.license  = 'BSD'
  s.summary  = 'Apptentive Customer Communications SDK.'
  s.homepage = 'https://www.apptentive.com/'
  s.author   = { "Andrew Wooster" => "andrew@apptentive.com" }
  s.source   = { :git => 'https://github.com/apptentive/apptentive-ios.git', :tag => "trunkTest" }
  s.platform = :ios, '5.0'
  s.source_files   = 'ApptentiveConnect/source/**/*.{h,m}','ApptentiveConnect/ext/**/*.{h,m}','ApptentiveConnect/source/Misc/ATLog.h'
  s.exclude_files = 'ApptentiveConnect/ext/PrefixedTTTAttributedLabel/**/*.*'
  s.subspec 'arc-files' do |sna|
    sna.requires_arc = true
    sna.source_files = 'ApptentiveConnect/ext/PrefixedTTTAttributedLabel/TTTAttributedLabel/*.{h,m}'
  end
  s.requires_arc = false
  s.frameworks     = 'Accelerate', 'AssetsLibrary', 'CoreGraphics', 'Foundation', 'QuartzCore', 'SystemConfiguration', 'UIKit', 'CoreData', 'CoreText'
  s.resource_bundle = { 'ApptentiveResources' => ['ApptentiveConnect/source/Model/*.xcdatamodeld', 'ApptentiveConnect/xibs/**/*.*', 'ApptentiveConnect/resources/localization/*.lproj','ApptentiveConnect/art/generated/**/*.*', 'ApptentiveConnect/resources/CocoaPodsResources/Info.plist'] }
  s.weak_frameworks = 'StoreKit', 'CoreTelephony'
  s.prefix_header_contents = '#import "ATLog.h"'
  s.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => "TTTATTRIBUTEDLABEL_PREFIX=AT AT_LOGGING_LEVEL_ERROR=1" }
end
