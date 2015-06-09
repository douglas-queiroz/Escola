# -*- encoding: utf-8 -*-
# stub: validates_cpf_cnpj 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "validates_cpf_cnpj"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Reginaldo Francisco"]
  s.date = "2013-01-29"
  s.description = "CPF and CNPJ validations for ActiveModel and Rails"
  s.email = ["naldo_ds@yahoo.com.br"]
  s.homepage = "http://github.com/rfs/validates_cpf_cnpj"
  s.rubyforge_project = "validates_cpf_cnpj"
  s.rubygems_version = "2.4.5"
  s.summary = "CPF/CNPJ ActiveModel validations"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<activerecord>, [">= 0"])
      s.add_runtime_dependency(%q<activemodel>, [">= 3.0.0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<activemodel>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<activemodel>, [">= 3.0.0"])
  end
end
