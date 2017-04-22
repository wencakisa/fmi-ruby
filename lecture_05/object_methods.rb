class Dummy
  def foo() end
  def bar() end
end

p Dummy.new.methods - Object.new.methods