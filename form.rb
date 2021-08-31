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
end

class ABForm
  def initialize(name, value, description, granted)
    @wish = Wish.new(name, value, description)
    @realization = realization(@wish, granted)
  end

  def valid?
    @wish.valid? && @realization.valid?
  end

  def submit
    # send, persist or whatever
  end
end
