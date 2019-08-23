Pod::Spec.new do |s|
s.name         = 'LMJHorizontalScrollText'
s.version      = '2.0.0'
s.summary      = 'An easy way to use horizontal-scroll-text'
s.homepage     = 'https://github.com/JerryLMJ/LMJHorizontalScrollText'
s.license      = {:type => 'MIT', :file => 'LICENSE' }
s.authors      = {'JerryLMJ' => 'limingjie_mail@163.com'}
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/JerryLMJ/LMJHorizontalScrollText.git', :tag => s.version}
s.source_files = 'LMJHorizontalScrollText/**/*'
s.requires_arc = true
end
