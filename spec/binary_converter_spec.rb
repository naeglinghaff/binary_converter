require 'spec_helper'
require_relative '../lib/binary_converter'

describe BinaryConverter do

  before(:each) do
    @number = BinaryConverter.new
  end

  describe "#convert" do
    it 'should return 0 when submitted 0 ' do
      expect(@number.convert(integer: 0)).to eq("0")
    end

    it 'should return the binary value of a decimal 1' do
      expect(@number.convert(integer: 1)).to eq("00000001")
    end

    it 'should return the binary value of decimal 2' do
      expect(@number.convert(integer: 2)).to eq("00000010")
    end

    it 'should return the binary value of decimal 3' do
      expect(@number.convert(integer: 3)).to eq("00000011")
    end

    it 'should return the binary value of decimal 4' do
      expect(@number.convert(integer: 4)).to eq("00000100")
    end

    it 'should return the binary value of decimal 5' do
      expect(@number.convert(integer: 5)).to eq("00000101")
    end

    it 'should handle even double digits' do
      expect(@number.convert(integer: 10)).to eq("00001010")
    end

    it 'should handle odd double digits' do
      expect(@number.convert(integer: 13)).to eq("00001101")
    end

    it 'should handle even triple digits' do
      expect(@number.convert(integer: 100)).to eq("01100100")
    end

    it 'should handle odd triple digits' do
      expect(@number.convert(integer: 101)).to eq("01100101")
    end
  end

end
