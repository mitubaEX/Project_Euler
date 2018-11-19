function f(x::Int, y::Int)
  # println(string(y))
  if length(string(y)) == 1000
    return y
  else
    return f(y, x + y)
  end
end

println(f(1,1))
