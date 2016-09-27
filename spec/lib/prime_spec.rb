require_relative "../../lib/prime.rb"

describe Prime do
  it "returns prime numbers up for a given count" do
    expect(Prime.primes.first).to eq(2)
    expect(Prime.primes.first(4)).to eq([2, 3, 5, 7])
  end
end
