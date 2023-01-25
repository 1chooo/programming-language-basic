# Greatest way

class MathTest: 

    def __init__(self) :
        self.x = 10
        self.y = 10

    def addTest(self) :
        return self.x + self.y

    def minusTest(self) :
        return self.x - self.y

    def mutiplyTest(self) :
        return self.x * self.y

    def divideTest(self) :
        return self.x / self.y


# Bad Way

class MathTestTwo: 

    def addTest(self, x, y) :
        x = 10
        y = 10
        return x + y

    def minusTest(self, x, y) :
        x = 10
        y = 10
        return x - y

    def mutiplyTest(self, x, y) :
        x = 10
        y = 10
        return x * y

    def divideTest(self, x, y) :
        x = 10
        y = 10
        return x / y