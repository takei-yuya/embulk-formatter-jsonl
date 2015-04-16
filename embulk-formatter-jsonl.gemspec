
Gem::Specification.new do |spec|
  spec.name          = "embulk-formatter-jsonl"
  spec.version       = "0.1.4"
  spec.authors       = ["TAKEI Yuya"]
  spec.summary       = "Jsonl formatter plugin for Embulk"
  spec.description   = "Formats Embulk Formatter Jsonl files for other file output plugins."
  spec.email         = ["takei.yuya+github@gmail.com"]
  spec.licenses      = ["MIT"]
  spec.homepage      = "https://github.com/takei-yuya/embulk-formatter-jsonl"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  #spec.add_dependency 'YOUR_GEM_DEPENDENCY', ['~> YOUR_GEM_DEPENDENCY_VERSION']
  spec.add_dependency 'jrjackson', ['~> 0.2.8']
  spec.add_development_dependency 'bundler', ['~> 1.0']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
