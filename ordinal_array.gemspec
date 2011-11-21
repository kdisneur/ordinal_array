$:.push File.expand_path("../lib", __FILE__)

version = File.read(File.expand_path("../VERSION",__FILE__)).strip

Gem::Specification.new do |s|
  s.name        = "ordinal_array"
  s.version     = version
  s.authors     = ["Kevin Disneur"]
  s.email       = ["kevin.disneur@gmail.com"]
  s.homepage    = "https://github.com/kdisneur/ordinal_array"
  s.summary     = "You can access to the first element of an array by the 'first' method. Now you can access to the second element by 'second' and that until the 999th elements"
  s.description = "You can access to the first element of an array by the 'first' method. Now you can access to the second element by 'second' and that until the 999th elements"
  s.files = Dir["lib/**/*"] + ["README.rdoc"]
end
