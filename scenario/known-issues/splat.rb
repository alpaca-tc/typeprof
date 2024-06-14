## update
class Foo < BasicObject
  def to_hash
    { a: 1 }
  end

  def splat
    { **new }
  end
end

## assert
class Foo < BasicObject
  def to_hash: -> Hash[:a, Integer]
  def splat: -> Hash[:a, Integer]
end

## update
class Foo < BasicObject
end

def splat
  { **Foo.new }
end

## diagnostics
(5,5)-(5,13): no implicit conversion of Foo into Hash
