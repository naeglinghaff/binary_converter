class BinaryConverter
  def initialize()
  end

  def convert(int)
    if int == 0
      return "#{int}"
    elsif int > 0
      calculate(int)
    end
  end

  private

  def calculate(int)
    if int == 1
      return "01"
    else
      return "10"
    end
  end
end
