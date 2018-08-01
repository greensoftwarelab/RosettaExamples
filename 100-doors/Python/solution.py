doors = [False] * 100
for i in range(100):
   for j in range(i, 100, i+1):
       doors[j] = not doors[j]
   print("Door %d is " % (i+1), 'Open' if doors[i] else 'Closed')
