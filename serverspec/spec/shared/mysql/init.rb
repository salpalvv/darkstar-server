packages = [
  'git',
  'mysql',
  'wget',
  'rsync',
  'ansible']

ports = [
  "22",
  "80",
  "3306"]


shared_examples 'darkstar::init' do

  describe "CentOS Operating System Checks" do

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