Pod::Spec.new do |s|
  s.name     = 'GJImage'
  s.version  = '0.1.3'
  s.license  = 'BSD'
  s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
  s.homepage = 'https://github.com/MuZiLee/GJImage'
  s.author   = { 'Brad Larson' => 'admin@sanshengit.com' }
  s.source   = { :git => 'https://github.com/MuZiLee/GJImage.git', :tag => "#{s.version}" }
  
  s.source_files = 'GJImage/*.{h,m}', 'GJImage/Filters/**/*.{h,m}', 'GJImage/Outputs/*.{h,m}', 'GJImage/Pipeline/*.{h,m}', 'GJImage/Sources/*.{h,m}', 'GJImageFilters/*.{h,m}'
  s.requires_arc = true
  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES' }
  
  s.ios.deployment_target = '9.0'
  s.ios.frameworks   = ['OpenGLES', 'CoreMedia', 'CoreVideo', 'QuartzCore', 'AVFoundation']
  s.osx.exclude_files = 'GJImageFilters'


end
