require 'spec_helper'

RSpec.describe 'Range' do
  let(:sample) { (5..15) }
  it 'has intersection' do
    expect { sample.intersection(10) }.to raise_error(ArgumentError, /Range/)

    result = sample & (10..15)
    expect(result).to be_a(Range)
    expect(result.min).to be_eql(10)
    expect(result.max).to be_eql(15)

    result = sample & (15..20)
    expect(result).to be_a(Range)
    expect(result.min).to be_eql(15)
    expect(result.max).to be_eql(15)

    result = sample & (0..10)
    expect(result).to be_a(Range)
    expect(result.min).to be_eql(5)
    expect(result.max).to be_eql(10)

    result = sample & (-10..0)
    expect(result).to be_nil
  end

  it 'has union' do
    expect { sample.union(10) }.to raise_error(ArgumentError, /Range/)

    result = sample | (0..10)
    expect(result).to be_a(Range)
    expect(result.min).to be_eql(0)
    expect(result.max).to be_eql(15)
  end

  it 'has subtract' do
    expect { sample.subtract(10) }.to raise_error(ArgumentError, /Range/)

    result = sample - (10..20)
    expect(result).to be_a(Range)
    expect(result.min).to be_eql(5)
    expect(result.max).to be_eql(10)

    result = sample - (0..10)
    expect(result).to be_a(Range)
    expect(result.min).to be_eql(10)
    expect(result.max).to be_eql(15)

    result = sample - (20..25)
    expect(result).to be_a(Range)
    expect(result.min).to be_eql(5)
    expect(result.max).to be_eql(15)

    result = sample - (5..15)
    expect(result).to be_nil
  end

  it 'has add' do
    expect { sample.add(10) }.to raise_error(ArgumentError, /Range/)

    result = sample + (0..10)
    expect(result).to be_a(Range)
    expect(result.min).to be_eql(0)
    expect(result.max).to be_eql(15)

    result = sample + (20..25)
    expect(result).to be_eql(sample)
  end
end
