f(a) =
  if a % 3 == 0 || a % 5 == 0
    return a
  else
    0
  end

println(sum(map(f, [1:999...])))
