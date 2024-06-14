## update
def splat_1
  { **{} }
end

def splat_2
  a = { a: 1 }
  { **a, b: '' }
end

def splat_3
  { **{ **{ **{ a: 1 }, b: 1.1 }, c: '' } }
end

## assert
class Object
  def splat_1: -> Hash[untyped, untyped]
  def splat_2: -> Hash[:a | :b, Integer | String]
  def splat_3: -> Hash[:a | :b | :c, Float | Integer | String]
end
