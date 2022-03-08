# -*- encoding: utf-8 -*-
# stub: mjml-rails 4.7.2 ruby lib

Gem::Specification.new do |s|
  s.name = "mjml-rails".freeze
  s.version = "4.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Simon Loffler".freeze, "Steven Pickles".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIEPDCCAqSgAwIBAgIBATANBgkqhkiG9w0BAQsFADAkMSIwIAYDVQQDDBlzaWdo\nbW9uL0RDPXNpZ2htb24vREM9Y29tMB4XDTIxMTIxODA1MDcyM1oXDTIyMTIxODA1\nMDcyM1owJDEiMCAGA1UEAwwZc2lnaG1vbi9EQz1zaWdobW9uL0RDPWNvbTCCAaIw\nDQYJKoZIhvcNAQEBBQADggGPADCCAYoCggGBALvTbM9xGlGQ9pByLEAJjAqc6U76\n64uCOSIkgIFbC4iQdU5vzB/w4Y+mjgkH4oMsuW2NQfFBV+xI3jxQA0dN4qMgHooB\nAWT/CSk0AAqTY1qCfCSASHLUWb5ZxURvsHmlXX/HCLX9bPcaYB0nQ+VT/u0lCicZ\nbeXMczHsNAj8f3ZJWDR9mw5OYc6cdGHM7Se3sqrmEsMYL9s8d08tChDcllxKV7cE\nr2zb0oPrRFoYpakOIz1ViCl4KqBpQsDqXbwEw1kDCkKMXGHCsmDKML55kXsVVu4Q\n9vqGvtEuvseWsDpKb6Psy4nJoktswhotUf21dNVM9k8ufXNaWvZed+cYnBFPLdQV\ndaaEqh6hIC/yUP98D5u+xmTYLRQQEsjhkbdfoLmB8UOwrsEZu79TXN6Iq4MZqmBe\nqkCTlXOMaO/EbWVRRvs64iibC/boVVlXu6RZCVNyzXEvYxg/zyl0zjS8KPR8Vf4f\nRKOUVKJCcL/nW4VZ1mvmJtiXI3eARaJdrBEjjQIDAQABo3kwdzAJBgNVHRMEAjAA\nMAsGA1UdDwQEAwIEsDAdBgNVHQ4EFgQUC9Ln2Rotb61VZFq2rxBPP7sJIiUwHgYD\nVR0RBBcwFYETc2lnaG1vbkBzaWdobW9uLmNvbTAeBgNVHRIEFzAVgRNzaWdobW9u\nQHNpZ2htb24uY29tMA0GCSqGSIb3DQEBCwUAA4IBgQBN7i1ChHKDNa5ceCXUXdJ/\nZQnVQTx2KMvWwZ6qpkIWFbzwwL5w/xQdhQbLMjuaie5X1ZYOB9753ipw3tvl7iJz\nvHEdTcOWAzMzHytySVcSa2DhanDopC+hrO5N+GoQ+5X9CN+xKG1Png4ho4FsuUtI\nfESG8Kb48iNlpLGbfcM8Nqm/mYk/Xwqh3aSVb2E1NVUNr3QW84xB/xmzy2d9qNBm\n0GecfnBmH+ARmR9Qk9H7YjtnhQv1W2wOBiz1k6GeO8wMLKRRHVI2TGcPR8AqhQGd\nejWL8tjMzIw5ggxro3WDklV1hn0iFSeWXNWd9tN40PjLYZqZ3krQ2wWgcgw/9eC9\nyVr+12iQ7XbbPqlveO/FhP4gLa8e2q1TgWjYAXIaM61em83Dlm/3p75ch0YCB3X5\nR9NsaxhBfawJEJcYoPZflGkLjJU8pjSuvIW5+rNgAiqY8D37hTtZMu/n2Fz8Qp24\n7EZetZmcvBzARf8vQSJjga3y0Bftk8u7LmblOEWddzE=\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2022-01-21"
  s.description = "Render MJML + ERb template views in Rails".freeze
  s.email = "sighmon@sighmon.com".freeze
  s.homepage = "https://github.com/sighmon/mjml-rails".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "Don't forget to install MJML e.g. \n$ npm install mjml".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.2.3".freeze
  s.summary = "MJML + ERb templates".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<byebug>.freeze, [">= 0"])
    s.add_development_dependency(%q<mocha>.freeze, ["= 1.4.0"])
    s.add_development_dependency(%q<rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.23.0"])
    s.add_development_dependency(%q<rubocop-performance>.freeze, ["~> 1.12.0"])
    s.add_development_dependency(%q<rubocop-rails>.freeze, ["~> 2.12.4"])
    s.add_development_dependency(%q<warning>.freeze, ["= 1.2.1"])
  else
    s.add_dependency(%q<byebug>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, ["= 1.4.0"])
    s.add_dependency(%q<rails>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 1.23.0"])
    s.add_dependency(%q<rubocop-performance>.freeze, ["~> 1.12.0"])
    s.add_dependency(%q<rubocop-rails>.freeze, ["~> 2.12.4"])
    s.add_dependency(%q<warning>.freeze, ["= 1.2.1"])
  end
end
