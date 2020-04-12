platform :ios, '11.0'
inhibit_all_warnings!

target 'GetStreamActivityFeedDemo' do
  use_frameworks!
  pod 'GetStreamActivityFeed'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '4.2'
    end
  end
end
