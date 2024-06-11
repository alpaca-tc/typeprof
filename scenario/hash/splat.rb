## update
def splat_1
  { **{} }
end

def splat_2
  a = { a: 1 }
  @b = { b: '' }
  { **a, **@b }
end

def splat_3
  { c: 1.1, **splat_2, b: '' }
end

def splat_4
  { **splat_2, d: :sym, **splat_3 }
end

## assert
class Object
  def splat_1: -> Hash[untyped, untyped]
  def splat_2: -> Hash[:a | :b, Integer | String]
  def splat_3: -> Hash[:a | :b | :c, Float | Integer | String]
  def splat_4: -> Hash[:a | :b | :c | :d, :sym | Float | Integer | String]
end
