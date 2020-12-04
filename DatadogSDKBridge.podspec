Pod::Spec.new do |s|
  s.name         = "DatadogSDKBridge"
  s.module_name  = "DatadogBridge"
  s.version      = "0.0.1"
  s.summary      = "Official Datadog SDK Bridge for cross-platform projects."
  
  s.homepage     = "https://www.datadoghq.com"
  s.social_media_url   = "https://twitter.com/datadoghq"

  s.license            = { :type => "Apache", :file => 'LICENSE' }
  s.authors            = { 
    "Maciek Grzybowski" => "maciek.grzybowski@datadoghq.com",
    "Mert Buran" => "mert.buran@datadoghq.com"
  }

  s.swift_version      = '5.1'
  s.ios.deployment_target = '11.0'

  s.source = { :git => "https://github.com/DataDog/dd-sdk-ios.git", :tag => s.version.to_s }
  
  s.source_files = ["Sources/Bridge/**/*.swift"]
  s.dependency 'DatadogSDK'
  s.dependency 'Kronos', '~> 4.1'
end
