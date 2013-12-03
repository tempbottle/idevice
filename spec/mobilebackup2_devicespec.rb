require_relative 'spec_helper'

describe Idevice::MobileBackup2Client do
  before :each do
    @mb2 = Idevice::MobileBackup2Client.attach(idevice:shared_idevice)
  end

  after :each do
  end

  it "should attach" do
    @mb2.should be_a Idevice::MobileBackup2Client
  end

  it "should exchange versions" do
    versions = [1.0, 1.1, 1.2, 1.3, 2.0, 2.1, 2.2, 2.3]
    versions.should include(@mb2.version_exchange(versions))
  end

  it "should raise an exception attempting to negotiate an invalid version" do
    lambda{ @mb2.version_exchange([999.99]) }.should raise_error Idevice::MobileBackup2Error
  end

  it "should send a message"

  it "should receive a message"

  it "should send a raw message"

  it "should receive a raw message"

  it "should send a request"

  it "should send a status response"

end


