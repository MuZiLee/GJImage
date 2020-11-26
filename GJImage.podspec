Pod::Spec.new do |s|
  s.name     = 'GJImage'
  s.version  = '0.1.6'
  s.license  = 'BSD'
  s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
  s.homepage = 'https://github.com/MuZiLee/GJImage'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author   = { 'MuZiLee' => 'admin@sanshengit.com' }
  s.source   = { :git => 'https://github.com/MuZiLee/GJImage.git', :tag => "#{s.version}" }
  
  s.ios.deployment_target = '8.0'

  s.source_files = 'GJImage/*.{h,m}', 'GJImageFilters/*.{h,m}'
  s.resource = 'GJImageFilters/ARCSoft/lib/libarcsoft_spotlight.a'

  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES', 'OTHER_LDFLAGS' => '-ObjC', 'ENABLE_BITCODE' => 'NO' }
  s.requires_arc = true
  s.static_framework = true
  
  s.frameworks   = ['UIKit', 'OpenGLES', 'CoreMedia', 'CoreVideo', 'QuartzCore', 'AVFoundation']

  s.dependency 'GPUImage', '0.1.4'

end
