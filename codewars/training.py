# -*- coding: utf-8 -*-
def f(n):
    current = 0
    an_1 = 3
    an_2 = 2
    an_3 = 1
    for i in range(2, n):
        current = an_1 + an_2 - 2 * an_3
        an_3 = an_2
        an_2 = an_1
        an_1 = current
    print(current)
    print(1276538859311178639666612897162414)
    print(current == 1276538859311178639666612897162414)

f(301)