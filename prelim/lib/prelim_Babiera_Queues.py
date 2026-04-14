class queues:
    def __init__(self):
        self.holder = []
    def enqueue(self, data):
        self.holder.append(data)
    def dequeue(self,item):
        if len(self.holder) != 0:
           self.holder.remove(item)
        else:
           return 'Empty'
    def display(self):
        return self.holder
    
q = queues()
print('Enqueuing: A, B, C')
q.enqueue('A')
q.enqueue('B')
q.enqueue('C')
print(f'Queue: {q.display()}')
print(f'Dequeued: {q.display()[-1]}')
q.dequeue('A')
print(f'Queue after dequeue: {q.display()}')   
print('='*20)