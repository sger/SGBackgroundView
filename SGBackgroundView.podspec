Pod::Spec.new do |s|
  s.name              = "SGBackgroundView"
  s.version           = "1.1"
  s.summary        = "Easily create background views in UIKit."
  s.description    = "SGBackgroundView is a simple utility for creating custom background in UITableViewCell."
  s.homepage       = "https://github.com/sger/SGBackgroundView"
  s.license            = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Spiros Gerokostas" => "spiros.gerokostas@gmail.com" }
  s.source              = { :git => "https://github.com/sger/SGBackgroundView.git", :tag => s.version.to_s }
  s.platform          = :ios, '8.0'
  s.requires_arc    = true

  s.source_files    = 'Pod/Classes/**/*'
  s.frameworks     = 'UIKit'
end
