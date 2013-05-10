
require File.join(File.dirname(__FILE__), 'prime_dec')

describe BasePrime do
  describe "#all" do
    it "returns an array" do
			bases = BasePrime.all
      bases.class.should == Array
    end
  end
  describe "#all does not list 1 as prime" do
    it "returns an array" do
			bases = BasePrime.all
      bases.include?(1).should be false
    end
	end
end

