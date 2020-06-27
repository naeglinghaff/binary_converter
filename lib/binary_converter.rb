class BinaryConverter
  def initialize(powers = {2 => 6 , 4 => 5, 8 => 4, 16 => 3, 32 => 2, 64 => 1, 128 => 0})
    @powers = powers
    @results = [0,0,0,0,0,0,0,0]
  end

  def convert(integer:)
    integer == 0 ? "#{integer}" : calculate(integer: integer)
  end

  private

  def calculate(integer:)
    integer = check_odd(integer: integer)
    check_powers(integer: integer)
    @results.join("")
  end

# modifys the results if int is odd, if not it returns int
  def check_odd(integer:)
    if integer % 2 == 1
      @results[-1] = 1
      integer -= 1
    else
      integer
    end
  end

# checks if integer can be divided by the powers of 2
  def check_powers(integer:)
    @powers.each do | number, position |
      if integer / number == 1
        @results[position] = 1
        integer =- number
      end
    end
  end
end
