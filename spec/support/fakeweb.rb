require 'fakeweb'

fixture = File.open(Rails.root.join('spec', 'fixtures', 'site.txt')).read

FakeWeb.register_uri(:get, 'https://github.com/matheusvetor', response: fixture)
