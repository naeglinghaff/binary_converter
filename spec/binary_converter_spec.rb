require 'spec_helper'
require_relative '../lib/binary_converter'

describe BinaryConverter do

  before(:each) do
    @converter = BinaryConverter.new
  end

  it 'should return 0 when submitted 0 ' do
    expect(@converter.convert(0)).to eq(0)
  end
end
