require 'spec_helper'
require_relative '../lib/binary_converter'

describe BinaryConverter do

  before(:each) do
    @converter = BinaryConverter.new
  end

  describe "#convert" do
    it 'should return 0 when submitted 0 ' do
      expect(@converter.convert(0)).to eq("0")
    end

    it 'should return the binary value of a decimal 1' do
      expect(@converter.convert(1)).to eq("01")
    end

    it 'should return the binary value of decimal 2' do
      expect(@converter.convert(2)).to eq("10")
    end
  end

end
