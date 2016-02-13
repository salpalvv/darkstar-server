packages = [
  'git',
  'wget',
  'rsync']

ports = [
  "22",
  "80",
  "3306",
  "53445",
  "54230",
  "54231",
  "54001",
  "54002",
  "54003",
  "54230"]


shared_examples 'firewall::init' do

  describe "Firewall Checks" do

    packages.each do|p|
      describe package(p) do
        it { should be_installed }
      end
    end

    ports.each do|p|
      describe port(p) do
        it { should be_listening }
      end
    end

  end

end