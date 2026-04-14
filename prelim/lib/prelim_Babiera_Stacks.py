#JOHN CARL V. BABIERA BSIT- 1 SC 239
class stacks:
    def __init__(self):
        self.value = []
    def push(self, data):
        self.value.append(data)
    def pop(self):
        if len(self.value) != 0:
           return self.value.pop()
        else: return 'Empty'
           
    def peek(self):
        if len(self.value) != 0:
              return self.value
        else: return 'Empty'

stack = stacks()
print('Pushing: 10, 20, 30')
stack.push(10)
stack.push(20)
stack.push(30)
print(f'Stack: {stack.peek()}')
print(f'Popped: {stack.peek()[-1]}')
stack.pop()
print(f'Stack after pop: {stack.peek()}')
print('='*20)
class queues:
    def __init__(self):
        self.holder = []
    def enqueue(self, data):
        self.holder.append(data)
    def dequeue(self):
        if len(self.holder) != 0:
           self.holder.pop(0)
        else:
           return 'Empty'
    def display(self):
        return self.holder