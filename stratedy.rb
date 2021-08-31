# Object Orientation

class CalculatePrice
  def initialize(price, am, months, interests_strategy)
    @price = price
    @am = am
    @months = months
    @interests_strategy = interests_strategy
  end

  def calc
    @price * @interests_strategy(@am, @months)
  end
end

def SimpleInterestsStrategy
  def self.call(am, months)
    months * am
  end
end

def CompoundInterestsStrategy
  def self.call(am, months)
     ((1 + am) ** months) - 1
  end
end

# Functional

def calculate_price(price, am, months, interests_function)
  price * interests_function(am, months)
end

def calculate_simple_interests(am, months)
  months * am
end

def calculate_simple_interests(am, months)
  ((1 + am) ** months) - 1
end
