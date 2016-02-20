require 'spec_helper'

packages = [
  'git',
  'wget',
  'rsync']

portsTCP = [
  "22"]

processes = [
  ""]

  describe "ELK Checks" do

    packages.each do|p|
      describe package(p) do
        it { should be_installed }
      end
    end

    portsTCP.each do|p|
      describe port(p) do
        it { should be_listening.with('tcp') }
      end
    end

    processes.each do|p|
      describe process(p) do
        it { should be_running }
      end
    end

  end
