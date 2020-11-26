Pod::Spec.new do |s|
  s.name     = 'GJImage'
  s.version  = '0.1.5'
  s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
  s.homepage = 'https://github.com/MuZiLee/GJImage'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author   = { 'MuZiLee' => 'admin@sanshengit.com' }
  s.source   = { :git => 'https://github.com/MuZiLee/GJImage.git', :tag => '#{s.version}' }
  
  s.ios.deployment_target = '8.0'

  s.source_files = 'GJImage/*.{h,m}', 'GJImage/Filters/**/*.{h,m}', 'GJImage/Outputs/*.{h,m}', 'GJImage/Pipeline/*.{h,m}', 'GJImage/Sources/*.{h,m}', 'GJImageFilters/*.{h,m}'
  
  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES', 'OTHER_LDFLAGS' => '-ObjC', 'ENABLE_BITCODE' => 'NO' }
  s.requires_arc = true
  s.static_framework = true
  
  s.frameworks   = ['UIKit', 'OpenGLES', 'CoreMedia', 'CoreVideo', 'QuartzCore', 'AVFoundation']
  


end
