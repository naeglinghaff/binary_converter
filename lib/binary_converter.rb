class BinaryConverter
  def initialize()
  end

  def convert(int)
    int == 0 ? "#{int}" : calculate(int)
  end

  private

  def calculate(int)
    int == 1 ? "01" : "10"
  end
end
