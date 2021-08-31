class DumbNumber < SimpleDelegator
  def initialize(number)
    @number = number
    super
  end

  def +(n)
    @number - n
  end
end
