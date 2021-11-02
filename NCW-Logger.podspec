Pod::Spec.new do |s|
  s.name             = 'NCW-Logger'
  s.version          = '0.0.1'
  s.summary          = 'Crypto.com log SDK for iOS'

  s.homepage         = 'https://github.com/Crypto-Doby/NCW-Logger'
  # s.license          = { :type => 'Commercial', :file => 'License.txt' }
  s.author           = { 'doby' => 'jianbin.wang@crypto.com' }
  s.source           = { :git => 'git@github.com:Crypto-Doby/NCW-Logger.git', :tag => s.version }
  s.platform     = :ios, "11.0"
  s.ios.deployment_target = '11.0'
  s.swift_versions = '5.0'
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.source_files =  	'Sources/NCW-Logger/**'

  s.dependency 'SwiftyBeaver','1.9.5'
  
end
