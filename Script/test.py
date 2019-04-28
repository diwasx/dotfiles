def factorials_up_to(x):
    a = 1
    for i in range(1, x+1):
        a *= i
        yield a

for x in factorials_up_to(6):
    print(x)
