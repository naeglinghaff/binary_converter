class BinaryConverter
  def initialize()
  end

  def convert(int)
    int == 0 ? "#{int}" : calculate(int)
  end

  private

  def calculate(int)
    results = []
    int / 2 == 1 ? results.push(1) : results.push(0)
    int % 2 == 1 ? results.push(1) : results.push(0)
    results.join("")
  end
end
