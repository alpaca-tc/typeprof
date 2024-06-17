## update
class Foo
  def Foo.foo = :ok
  s = "Foo"
  def (s).foo = :ok
end

def check
  Foo.foo
end

## assert
class Foo
  def self.foo: -> :ok
  def self.???foo: -> :ok
end
class Object
  def check: -> :ok
end

## update
k = Time
class << k
  def foo = :ok
end

## assert
class Time
  def self.foo: -> :ok
end

## update
class Foo
  class << self
    def self.bar = :ok
  end
end

## assert
class Foo
end
