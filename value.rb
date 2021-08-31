class Wish
  attr_accessor :name, :value, :description

  def initialize(name, value, description)
    @name = name
    @value = value
    @description = description
  end

  def valid?
    !name.empty? &&
      !value.nil? &&
      value.positive? &&
      !description.emtpy?
  end
end

class Realization
  attr_accessor :wish, :granted

  def initialize(wish, granted)
    @wish = wish
    @granted = granted
  end

  def valid?
    wish.value > 10_000 && granted = true ||
      wish.value <= 10_000 && granted = false
  end

  def grant!
    granted = valid?
end
