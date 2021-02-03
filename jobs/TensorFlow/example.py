import tensorflow as tf
# Create hello world tensor
hello = tf.constant("hello world")
# Access tensor with numpy
print(hello.numpy())
# Create a 2D tensor
matrix = [[1,2,3,4,5],
          [6,7,8,9,10],
          [11,12,13,14,15],
          [16,17,18,19,20],
          [21,22,23,24,25]]
#Define tensor matrix and type (integer)
tensor = tf.Variable(matrix, dtype=tf.int32) 
#print the tensor rank
print(tf.rank(tensor))
#print the tensor shape (row by column)
print(tensor.shape)
