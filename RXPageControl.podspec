









Pod::Spec.new do |s|
  s.name     = "RXPageControl"
  s.version  = "0.1"
  s.license  = "MIT"
  s.summary  = "RXPageControl is a custom UIPageControl"
  s.homepage = "https://github.com/xzjxylophone/RXPageControl"
  s.author   = { 'Rush.D.Xzj' => 'xzjxylophoe@gmail.com' }
  s.social_media_url = "http://weibo.com/xzjxylophone"
  s.source   = { :git => 'https://github.com/xzjxylophone/RXPageControl.git', :tag => "v#{s.version}" }
  s.description = %{
    RXPageControl is a custom UIPageControl.
  }
  s.source_files = 'RXPageControl/*.{h,m}'
  s.frameworks = 'Foundation', 'UIKit'
  s.requires_arc = true
  s.platform = :ios, '7.0'
end






