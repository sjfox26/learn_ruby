def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(array)
  array.inject(0){|sum,x| sum + x }
end

def multiply(*numbers)
  result = 1
  numbers.each { |n| result = result * n }
  result
end

def power(a, b)
  return a ** b
end

def factorial(a)
  if a == 0
    return 1
  else
    return a * factorial(a-1)
  end
end