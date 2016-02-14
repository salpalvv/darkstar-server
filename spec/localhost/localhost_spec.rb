require 'spec_helper'

packages = [
  'git',
  'mysql',
  'wget',
  'rsync',
  'ansible']

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

services = [
  "./dsconnect",
  "./dsgame",
  "./dssearch"]

  describe "Darkstar Checks" do

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

    services.each do|p|
      describe service(p) do
        it { should be_running }
      end
    end

  end
