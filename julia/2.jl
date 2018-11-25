ans = 0
function fibo(a, b)
  if iseven(a)
    global ans += a
  end

  if a >= 4000000
    a
  else
    fibo(b, a + b)
  end
end


fibo(1,1)
println(ans)
