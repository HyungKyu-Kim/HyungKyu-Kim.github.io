# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-theme-hkk'
  spec.version       = '1.0.2'
  spec.authors       = ['Hyungkyu']
  spec.email         = ['hkkxkk@gmail.com']

  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README))!i)
  end

  spec.add_runtime_dependency 'jekyll', '~> 3.8'
  spec.add_runtime_dependency 'jekyll-feed', '~> 0.10.0'
  spec.add_runtime_dependency 'jekyll-seo-tag', '~> 2.5.0', '>= 2.5.0'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 12.0'
end
