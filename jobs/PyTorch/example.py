import torch
print("Welcome to PyTorch!")
#Define tensor 1 5x5
t1 = torch.rand(5)
#Print tensor size
print(t1.size())
print(f"\nAddition Example")
#Print tensor 1
print(t1)
print("+")
#Define tensor 2 5x5
t2 = torch.rand(5)
#Print tensor 2
print(t2)
print("=")
#Add tensors
print(torch.add(t1, t2))
print(f"\nMultiplication Example")
#Begin multiplication
print(t1)
print("*")
print(t2)
print("=")
#Multiply tensors
print(torch.multiply(t1, t2))