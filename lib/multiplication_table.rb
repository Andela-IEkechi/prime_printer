require_relative "prime"

class MultiplicationTable
  attr_reader :data
  attr_accessor :output

  def initialize(data)
    @data = data
    @output = ""
  end

  def self.draw(data)
    new(data).draw!
  end

  def draw!
    data.each_with_index do |row, index|
      render_row row, index
    end
    print output
    output
  end

  private

  def render_row(row, row_index)
    row.each_with_index do |column, column_index|
      output << render_column(column, row_index, column_index)
      output << column_separator
    end
    output << "\n"
  end

  def render_column(column, row_index, column_index)
    column = "" if row_index == 0 and column_index == 0
    column.to_s.rjust(padding)
  end

  def column_separator
    " "
  end

  def padding
    @padding ||= (header.last**2).to_s.size
  end

  def header
    data.first
  end
end
