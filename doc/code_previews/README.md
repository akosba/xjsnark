# Code Previews

For illustration purposes, this file includes snapshots from the examples currently implemented in the framework. The ``sample_generated_intermediate_code`` directory shows examples of the intermediate java files that xJsnark generates after processing the code below.

# Examples
- [SHA-256 (Unpadded)](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#sha-256-unpadded)
- [RSA Secret Key Knowledge](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#rsa-secret-key-knowledge)
- [RSA Modular Exponentiation](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#rsa-modular-exponentiation)
- [EC Secret Key Knowledge](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#ec-secret-key-knowledge)
- [AES 128](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#aes-128)
- [Sudoku 9x9](https://github.com/akosba/xjsnark/tree/master/doc/code_previews#sudoku-9x9)
- [Sorting](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#sorting)
- [ZeroCash Pour Circuit](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#zerocash-pour-circuit)

## SHA-256 (Unpadded)
This is a high-level code for SHA-256. Compared to manually-developed circuit in low-level libraries such as libsnark gadget libraries or [jsnark](https://github.com/akosba/jsnark/blob/d12b6d93a0ec1760ffe34b7f36e4fb4d8562ca93/JsnarkCircuitBuilder/src/examples/gadgets/hash/SHA256Gadget.java), in which the programmer has to take care of the range of the variables, and write optimizations for maj and ch computations, xJsnark aims to produce optimized circuits from the high-level code, whenever possible. The back end applies several techniques to minimize the number of constraints which leads to an optimized implementation.
![alt text](examples_snapshots/SHA256.png)
## RSA Secret Key Knowledge
This example illustrates the support for long integer types and operations by xJsnark.
![alt text](examples_snapshots/RSA_Secret_Key_Knowledge.png)
## RSA Modular Exponentiation
This example shows how to use the long integer modular arithmetic supported by xJsnark to implement modular exponentiation for RSA. This is supported through a type for the multiplicative group of integers modulo N. See the code for more notes. This version includes examples for fixed modulus fixed exponent and fixed modulus variable exponent. Support for types with variable modulus has not been pushed to the front end of this version yet. Note that [Jsnark](https://github.com/akosba/jsnark/tree/master/JsnarkCircuitBuilder/src/examples/gadgets/rsa) has implementations that can support all these cases and includes the optimizations of xJsnark. 

Fixed modulus and fixed exponent:
![alt text](examples_snapshots/RSAModExpFixedModulusFixedExponent.png)

Fixed modulus and variable exponent:
![alt text](examples_snapshots/RSAModExpFixedModulusVariableExponent.png)

## EC Secret Key Knowledge
This example illustrates the parameterized field types that can be defined by the user. Even, if the circuit operates in a non-native zk-SNARK field, the complexity of the code does not change. These field types are not only for making programming easier, but also the back end utilizes these information to make much better decisions.
### Field Definition
![alt text](examples_snapshots/FieldDefTable_EC.png)
### EC Secret Key Knowledge Circuit
![alt text](examples_snapshots/EC_Secret_Key_Knowledge.png)
## AES 128
This example applies an improved technique for S-Box implementation in the back end. To use random access memories in xJsnark, where the index accessed is a circuit variable, the programmer can use the RAM type. Internally, the back end explores the different techniques available for representing the memory accesses and chooses the most efficient implementation based on the workload and several other factors (more optimizations will be added to the memory implementation in the future).
![alt text](examples_snapshots/AES128.png)
## Sudoku 9x9
This example illustrates the usage of native finite field types/constraints and builti-in permutation verification to build a zk-SNARK circuit that proves the knowledge of a valid Sudoku solution.
![alt text](examples_snapshots/sudoku9x9.png)
## Sorting
 This example illustrates how to use the external code blocks for non-determinism (setting the values of the external witnesses provided by the prover), and the usage of the permutation verification native instruction which could enable writing more optimized circuits for some applications, like sorting, or pointer chasing.
![alt text](examples_snapshots/sorting.png)
## ZeroCash Pour Circuit
High-level implementation of the Pour circuit in the [ZeroCash](http://zerocash-project.org/media/pdf/zerocash-extended-20140518.pdf) paper, that results into an optimized circuit similar to the manually-optimized circuit.

### Helper Classes
These are structures that are used within the Pour circuit. Each structure can only have xJsnark types, and can have methods. However, inheritance and polymorphism are not supported for xJsnark's structs.
#### Coin Information
![alt text](examples_snapshots/zerocash_coin.png)
#### Merkle Authentication Path
![alt text](examples_snapshots/zerocash_merkle_auth_path.png)
#### Keys
![alt text](examples_snapshots/zerocash_keys.png)
#### Digest
![alt text](examples_snapshots/zerocash_digest.png)
### Pour Circuit
![alt text](examples_snapshots/zerocash_pour.png)
