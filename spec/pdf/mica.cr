require "../spec_helper"

describe "The pdf file" do
  it "should exist" do
    File.exists?(PDF).should eq true
  end

  it "should have empty metadata" do
    File.read(PDF).should contain "<<\n" +
      "/Author()/Title()/Subject()/Creator()/Producer()/Keywords()\n" +
      "/Trapped /False\n" +
      ">>"
  end
end
