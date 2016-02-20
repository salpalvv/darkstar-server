require 'spec_helper'

packages = [
  'git',
  'mysql-common',
  'mysql-server',
  'wget',
  'rsync']

portsTCP = [
  "22",
  "3306",
  "53445",
  "54230",
  "54231",
  "54001",
  "54002",
  "54003"]

portsUDP = [
  "54230"]

processes = [
  "./dsconnect",
  "./dsgame",
  "./dssearch"]

  describe "Darkstar Checks" do

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

    portsUDP.each do|p|
      describe port(p) do
        it { should be_listening.with('udp') }
      end
    end

    processes.each do|p|
      describe process(p) do
        it { should be_running }
      end
    end

  end
