Pod::Spec.new do |s|
  s.name     = 'GJUImage'
  s.version  = '0.1'
  s.license  = 'BSD'
  s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
  s.homepage = 'https://github.com/MuZiLee/GJUImage'
  s.author   = { 'Brad Larson' => 'admin@sanshengit.com' }
  s.source   = { :git => 'https://github.com/MuZiLee/GJUImage.git', :tag => "#{s.version}" }
  
  s.source_files = '/**/*.{h,m}'
  s.resources = '/*.png'
  s.requires_arc = true
  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES' }
  
  s.ios.deployment_target = '8.0'
  s.ios.frameworks   = ['OpenGLES', 'CoreMedia', 'CoreVideo', 'QuartzCore', 'AVFoundation']
  s.osx.exclude_files = 'GJImageFilters',
                        'GPUImageFilterPipeline'
  s.osx.xcconfig = { 'GCC_WARN_ABOUT_RETURN_TYPE' => 'YES', "ENABLE_BITCODE" => "NO" }
end
