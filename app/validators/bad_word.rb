class BadWord
  BAD_WORD = ["porn", "corn", "pop", "iop"]

  def initialize(string)
    @string = string
  end

  def valid?
    !BAD_WORD.any? { |word| @string.include?(word) }
  end
end