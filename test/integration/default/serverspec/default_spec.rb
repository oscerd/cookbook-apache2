require 'spec_helper'

describe 'apache2::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
 describe service('apache2') do
    it { should be_enabled  }
    it { should be_running  }
 end

 describe port(80) do
   it { should be_listening }
 end

  describe file('/var/www/index.html') do
    it { should be_file }
  end

  describe file('/var/www/index.html') do
    it { should contain '<html>
  <body>
    <h1>hello world</h1>
  </body>
</html>' }
  end
end
