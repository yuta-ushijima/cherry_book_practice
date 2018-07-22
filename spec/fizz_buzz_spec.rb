require_relative './spec_helper'
require_relative '../lib/fizz_buzz'

RSpec.describe 'Fizz_buzz' do
  it '#fizz_buzz' do
    expect(fizz_buzz(1)).to eq("1")
    expect(fizz_buzz(3)).to eq("fizz")
    expect(fizz_buzz(5)).to eq("buzz")
    expect(fizz_buzz(15)).to eq("fizz_buzz")
  end
end
