Gem::Specification.new do |spec|
  spec.name          = "prettydocs-jekyll"
  spec.version       = "0.0.6"
  spec.authors       = ["Alexandru Coman"]
  spec.email         = ["alexandru.coman@tss-yonder.com"]
 
  spec.summary       = %q{PrettyDocs-Jekyll is a free project documentation theme designed for developers & startups.}
  spec.description   = "PrettyDocs-Jekyll is a free project documentation theme designed for developers & startups."
  spec.homepage      = "https://github.com/tss-yonder/prettydocs-jekyll"
  spec.license       = "CC-BY-3.0"

  all_files          = `git ls-files -z`.split("\x0")
  spec.files         = all_files.select { |filename|
    filename.match(%r{^(_data|_includes|_layouts|_sass|assets)/|(LICENSE|README)((\.(txt|md|markdown)|$))}i)
  }
  spec.platform      = Gem::Platform::RUBY

  spec.add_development_dependency "jekyll", "~> 3.3"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.0"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.1"
  spec.add_runtime_dependency "liquid-md5", "~> 0.0.3"
end
