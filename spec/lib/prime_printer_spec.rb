require_relative "../../lib/prime_printer"

describe PrimePrinter do
  context "with user specified table size" do
    subject { PrimePrinter.new(3) }
    it "generates multiplication table of primes from count" do
      expected_data = [
          [1, 2, 3, 5],
          [2, 4, 6, 10],
          [3, 6, 9, 15],
          [5, 10, 15, 25]
      ]
      expect(subject.data).to eq(expected_data)
    end

    it "renders the table" do
      expect(MultiplicationTable).to receive(:draw).with(subject.data)
      subject.render
    end
  end

end
