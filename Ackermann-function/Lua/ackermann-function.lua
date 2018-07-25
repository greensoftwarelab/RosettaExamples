function ack(M,N)
    if M == 0 then return N + 1 end
    if N == 0 then return ack(M-1,1) end
    return ack(M-1,ack(M, N-1))
end

for m=0,3 do
    for n=0,13 do
        print(ack(m,n))
    end
end

