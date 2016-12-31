Pod::Spec.new do |s|
  s.name             = 'Ranger'
  s.version          = '0.1.0'
  s.summary          = 'Providing reverse range operators to Swift.'

  s.description      = <<-DESC
Swift, for an unsusual reason, doesn't allow easy creation of reverse ranges. This pod allows you to create a reverse range by simply using two new operators: `..>` and `>>>`.
                       DESC

  s.homepage         = 'https://github.com/heshamsalman/Ranger'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hesham Salman' => 'hesham8@gmail.com' }
  s.source           = { :git => 'https://github.com/heshamsalman/Ranger.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/whatsasoftware'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Ranger/Classes/**/*'

end
