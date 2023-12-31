#
# Be sure to run `pod lib lint LXModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'LXModule'
s.version          = '1.0.0'
s.summary          = 'A short description of LXModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage         = 'https://github.com/JacketXia/LXModule'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'xiawenbin' => 'xiaxiaxiawb@163.com' }
s.source           = { :git => 'https://github.com/JacketXia/LXModule.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '12.0'

# s.source_files = 'LXModule/Classes/**/*'

s.subspec 'UI' do |sp|
  # sp.source_files = 'LXModule/Classes/UI/**/*'

  sp.subspec 'NavigationController' do |nc|
    nc.source_files = 'LXModule/Classes/UI/NavigationController/**/*'
  end

end

s.subspec 'iOS' do |is|
  # sp.source_files = 'LXModule/Classes/iOS/**/*'

  is.subspec 'Orientation' do |ot|
    ot.source_files = 'LXModule/Classes/iOS/Orientation/**/*'
  end
  
  is.subspec 'Window' do |wd|
    wd.source_files = 'LXModule/Classes/iOS/Window/**/*'
  end
  
end



# s.resource_bundles = {
#   'LXModule' => ['LXModule/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end
