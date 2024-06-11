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
  { **splat_2 }
end

## assert
class Object
  def splat_1: -> Hash[untyped, untyped]
  def splat_2: -> Hash[:a | :b, Integer | String]
  def splat_3: -> Hash[:a | :b, Integer | String]
end
