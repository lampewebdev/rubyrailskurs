a = nil
b = 20
a ||= b
a        # => 20


h = {}
#yeahhhh monkey patching
def h.[]=(k, v)
  puts "Setting hash key #{k} with #{v.inspect}"
  super
end

# 1. The standard ||= approach
h[:x] ||= 10
h[:x] ||= 20

# 2. The a = a || b approach
h[:y] = h[:y] || 10
h[:y] = h[:y] || 20

# 3. The a || a = b approach
h[:z] || h[:z] = 10
h[:z] || h[:z] = 20