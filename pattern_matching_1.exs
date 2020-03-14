a = [1, 2, 3]
print(a)
a = 4
print(a)
4 = a
print(4)
[a, b] = [1, 2, 3] # ** (MatchError) no match of right hand side value: [1, 2, 3]
print([a, b])
a = [[1, 2, 3]]
print(a)
[a] = [[1, 2, 3]]
print([a])
[[a]] = [[1, 2, 3]] # ** (MatchError) no match of right hand side value: [[1, 2, 3]]
print([[a]])