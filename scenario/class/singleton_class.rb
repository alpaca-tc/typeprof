## update
class << Time
  def foo = :ok
end

## assert
class Time
  def self.foo: -> :ok
end

## update
class Foo
  class << self
    def foo = :ok
  end
end

## assert
class Foo
  def self.foo: -> :ok
end
