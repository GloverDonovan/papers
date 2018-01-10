require "../spec_helper"

describe "The tex file" do
  it "should exist" do
    File.exists?(TEX).should eq true
  end

  it "should have me as the author" do
    File.read(TEX).should contain "\n\\author{Donovan Glover}"
  end

  it "should use the microtype package" do
    File.read(TEX).should contain "\n\\usepackage{microtype}"
  end
end

