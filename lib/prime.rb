require 'inline'

class Prime

  def self.primes
    Enumerator.new do |y|
      n = 2
      loop do
        y.yield n if (2...n).all? { |divisor| n % divisor != 0 }
        n += 1
      end
    end
  end

  inline do |builder|
    builder.c_singleton '
    int prime(int num) {
      int x;
      for (x = 2; x < (num - 1) ; x++) {
        if (num == 2) {
          return 1;
        }
        if (num % x == 0) {
          return x;
        }
      }
      return 1;
    }'
  end
end
