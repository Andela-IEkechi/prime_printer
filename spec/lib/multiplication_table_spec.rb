require_relative "../../lib/multiplication_table"

describe MultiplicationTable do
  it "renders a multiplication table with the given data" do
    data = [
        [1, 2, 3, 5, 7],
        [2, 4, 6, 10, 14],
        [3, 6, 9, 15, 21],
        [5, 10, 15, 25, 35],
        [7, 14, 21, 35, 49]
    ]
    expected_output = "    2  3  5  7 \n 2  4  6 10 14 \n 3  6  9 15 21 \n 5 10 15 25 35 \n 7 14 21 35 49 \n"
    expect(MultiplicationTable.draw(data)).to eq expected_output
  end
end
