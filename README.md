# Image Compression with Singular Value Decomposition
Transformations are functions that take some points to other points by:
- Stretching (or compressing) horizontally and vertically
- Rotating by an angle

SVD breaks down each matrix into three portions: A rotation, a linear scaling, and another rotation, performed on an identity matrix in that order. This informs us about the properties of the matrix.

Any transformation can be represented this way, hence, any matrix can be represented this way.
(see Spectral Theorem for Hermitian Matrices)

The key function of SVD from the image compression perspective is **dimensionality reduction**.

Since the singular values in the diagonal matrix are always ordered from the largest to the smallest, we can pick the most significant "features" of an image by selecting the Rank 1 matrices associated with the largest singular values.

References: 
- https://dmicz.github.io/machine-learning/svd-image-compression/
- https://andrew.gibiansky.com/blog/mathematics/cool-linear-algebra-singular-value-decomposition/

![Output image](/output.jpg)
