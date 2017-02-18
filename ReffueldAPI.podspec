Pod::Spec.new do |s|
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.name         = "ReffueldAPI"
  s.summary      = "Reffueld API client framework."
  s.requires_arc = true

  s.version      = "1.0.0"

  s.license      = { :type => "Proprietary", :file => "LICENSE" }

  s.author       = { "Peter Kovari" => "peter@reffueld.com" }
  s.homepage     = "https://reffueld.com/"

  s.source       = { :git => "https://github.com/reffueld/reffueld-swift3-client.git", :tag => "#{s.version}" }

  s.dependency "Alamofire", "~> 4.0"
  s.dependency 'PromiseKit', '~> 4.0'

  s.source_files  = "Reffueld/Classes/**/*.{swift}"
  s.resources  = "**/*.{png,jpg}"

end
