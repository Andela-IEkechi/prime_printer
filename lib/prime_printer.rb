require_relative "prime"
require_relative "multiplication_table"

class PrimePrinter
  attr_reader :size, :data

  def initialize(size)
    @size = size.to_i
    @data = table_data
  end

  def render
    MultiplicationTable.draw(data)
  end

  private

  def table_header
    @header_data ||= [1] + Array(Prime.primes.first(size))
  end

  def table_data
    table_header.map do |x|
      table_header.map do |y|
        x*y
      end
    end
  end
end
