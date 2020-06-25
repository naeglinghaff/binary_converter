class BinaryConverter
  def initialize()
  end

  def convert(int)
    if int == 0
      return "#{int}"
    elsif int > 0
      return "01"
    end
  end
end
