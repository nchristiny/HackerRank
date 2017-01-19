# BUFFER:
# class Difference:
  # Add your code here
    def __init__(self, elements):
        self.elements = elements
        self.maximumDifference = 0

    def computeDifference(self):
        self.maximumDifference = max(self.elements) - min(self.elements)
        return self.maximumDifference

# End of Difference class
# BUFFER:
# _ = input()
# a = [int(e) for e in input().split(' ')]

# d = Difference(a)
# d.computeDifference()

# print(d.maximumDifference)
