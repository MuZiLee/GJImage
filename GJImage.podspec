Pod::Spec.new do |s|
  s.name     = 'GJImage'
  s.version  = '0.1.7'
  s.license  = 'BSD'
  s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
  s.homepage = 'https://github.com/MuZiLee/GJImage'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author   = { 'MuZiLee' => 'admin@sanshengit.com' }
  s.source   = { :git => 'https://github.com/MuZiLee/GJImage.git', :tag => "#{s.version}" }
  
  s.ios.deployment_target = '8.0'

  s.subspec 'GPUImage' do |ss|
    ss.source_files        = 'GJImage/GPUImage/**/*.{h,m}'
    ss.public_header_files = 'GJImage/GPUImage/**/*.h'
    # ss.resource     =  ['GPUImage/Resources/*']
  end
  s.subspec 'GJImage' do |ss|
    ss.source_files        = 'GJImage/GJImageFilters/**/*.{h,m}'
    ss.public_header_files = 'GPUImage/GJImageFilters/**/*.h'
    # ss.resource     = 'GJImageFilters/ARCSoft/lib/libarcsoft_spotlight.a'
    ss.vendored_libraries  = 'GJImage/GJImageFilters/ARCSoft/lib/libarcsoft_spotlight.a'
  end
  

  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES', 'OTHER_LDFLAGS' => '-ObjC', 'ENABLE_BITCODE' => 'NO' }
  s.requires_arc = true
  s.static_framework = true
  
  s.frameworks   = ['UIKit', 'OpenGLES', 'CoreMedia', 'CoreVideo', 'QuartzCore', 'AVFoundation']

  # s.dependency 'GPUImage', '0.1.5'

end
