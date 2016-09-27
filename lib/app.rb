require "optparse"
require_relative "prime_printer"

options ||= {}

OptionParser.new do |opts|
  opts.on "-c", "--count N", "Select amount of primes to generate" do |c|
    options[:size] = c
  end
end.parse!

PrimePrinter.new(options[:size]).render
