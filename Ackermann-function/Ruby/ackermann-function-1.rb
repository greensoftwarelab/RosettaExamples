def ack(m, n)
  if m == 0
    n + 1
  elsif n == 0
    ack(m-1, 1)
  else
    ack(m-1, ack(m, n-1))
  end
end

for m in 0..3 do
    for n in 0..13 do
        puts ack(m,n)
    end
end
