import sys

def ack2(M, N):
    if M == 0:
        return N + 1
    elif N == 0:
        return ack2(M - 1, 1)
    else:
        return ack2(M - 1, ack2(M, N - 1))

if __name__ == "__main__":
    sys.setrecursionlimit(5000)
    for m in range(4):
        for n in range(14):
            print(ack2(m,n))
