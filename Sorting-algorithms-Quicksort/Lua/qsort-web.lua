function rest(xs)
  local ys = {}
  for i = 2, #xs do
    table.insert(ys, xs[i])
  end
  return ys
end

function concat(xs, ys)
  local zs = {}
  for _, v in ipairs(xs) do
    table.insert(zs, v)
  end
  for _, v in ipairs(ys) do
    table.insert(zs, v)
  end
  return zs
end

function qsort(xs)
  if (#xs < 2) then
    return xs
  end
  local p, xs = xs[1], rest(xs)
  local lesser, greater = {}, {}
  for _, x in ipairs(xs) do
    if x < p then
      table.insert(lesser, x)
    else
      table.insert(greater, x)
    end
  end
  return concat(qsort(lesser), concat({p}, qsort(greater)))
end

list = {1,2,9,4,6}
io.write('[')
for _, x in ipairs(qsort(list)) do
  io.write(x .. ',')
end
io.write(']')
print()
-- to check if the original xs isn't destroyed
--for _, x in ipairs(xs) do
--  io.write(x .. ' ')
--end

