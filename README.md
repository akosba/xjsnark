# xJsnark

This is a high-level framework for developing applications for zk-SNARKs. [xJsnark](https://akosba.github.io/papers/xjsnark.pdf) aims at bridging the gap between high-level programming and performance. It provides a collection of front end features that enables programmers to write zk-SNARK circuits in a [higher level way](https://github.com/akosba/xjsnark/blob/master/doc/code_previews/README.md) than before (especially for cryptographic applications).  On the other side, xjsnark's back end uses several techniques to reduce the cost of the output circuits, which could finally get to the cost of manually-developed circuits for some applications.

xJsnark's front end is currently developed as a java extension on top of Jetbrains MPS V 3.3.5 (Installation instructions below). Using this framework enabled to have assistive customizable IDE features for our purposes, but users might need to get familiar to editing in this environment in the beginning. In the future, we will also consider extending the back end of our circuit generation to other front ends. xJsnark's back end code has not been released yet. It's just released as a jar with class files in this repo, but the implementation of some techniques can be found in the low-level gadgets that are provided in [jsnark](https://github.com/akosba/jsnark), such as RSA and AES gadgets. xJsnark produces circuits using the same format as [jsnark](https://github.com/akosba/jsnark), which are transformed to r1cs constraints using the [jsnark-libsnark interface](https://github.com/akosba/libsnark) (See guidelines below about how to run xJsnark circuits on libsnark).

### Examples included 

This table includes a list of the examples that are currently available in the repository, with the current number of gates and links to code previews. Please note that the code is editable through the framework after checking out the project. Also, the front end has some updates compared to the examples presented in the paper, so please refer to the most recent version of the examples and the comments within the code, when using the framework.

| Example ([previews](https://github.com/akosba/xjsnark/tree/master/doc/code_previews#code-previews)) | Description | Number of constraints |
| ----- | --- | --- |
| [SHA-256 (Unpadded)](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#sha-256-unpadded) |  High-level implementation of SHA-256 which is compiled to an optimized circuit similar to the one produced by manual/low-level libraries, as in [jsnark](https://github.com/akosba/jsnark). | 25538 | 
| [AES 128](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#aes-128) |  This example applies an improved technique for S-Box implementation in the back end. The reported cost is for encrypting 1 block and includes the cost of the key expansion | 14240 |
| [RSA Secret Key Knowledge](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#rsa-secret-key-knowledge)  |  This example illustrates the long integer types provided by xJsnark and the underlying efficient long integer checks/operations. The reported cost assumes a key size of 2048. | 2578 |
| [EC Secret Key Knowledge](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#ec-secret-key-knowledge)| This example illustrates the customizable non-native finite field types. You can check FieldDefTable for the field definition. Note that the complexity of the code does not change when the field is different from the field that the zk-SNARK circuit uses. This example proves the knowledge of a secret key for an ECDSA public key using the Nist P-256 curve.  | 687228 |
| [Sudoku 9x9](https://github.com/akosba/xjsnark/tree/master/doc/code_previews#sudoku-9x9)  | This example shows how to write an efficient circuit proving the knowledge of a valid 9x9 sudoku puzzle solution, using built-in permutation verification and constraints on native field elements. | 756 |
| [Sorting](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#sorting)  | This example illustrates how to use the external code blocks for non-determinism (setting the values of the external witnesses provided by the prover), and the usage of the permutation verification native instruction which could enable writing more optimized circuits for some applications, like sorting, or pointer chasing. The reported cost is for sorting an array of 1024 16-bit unsigned integers.  | 29166 |
| [ZeroCash Pour Circuit](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#zerocash-pour-circuit)| High-level implementation of the Pour circuit in the [ZeroCash](http://zerocash-project.org/media/pdf/zerocash-extended-20140518.pdf) paper, that results into an optimized circuit similar to the manually-optimized circuit. The number of constraints reported assumes a height of 64 for the Merkle trees. | 3814991 |
| [RSA Modular Exponentiation](https://github.com/akosba/xjsnark/tree/master/doc/code_previews/README.md#rsa-modular-exponentiation)  | This example shows how to use the long integer modular arithmetic supported by xJsnark to implement modular exponentiation for RSA. This is supported through a type for the multiplicative group of integers modulo N. See the code for more notes. This version includes examples for fixed modulus fixed exponent and fixed modulus variable exponent. Support for types with variable modulus has not been pushed to the front end of this version yet. Note that [Jsnark](https://github.com/akosba/jsnark/tree/master/JsnarkCircuitBuilder/src/examples/gadgets/rsa) has implementations that can support all these cases and includes the optimizations of xJsnark. The reported cost in this table is for a hardcoded 2048-bit modulus and a hardcoded exponent 0x10001. | 88949 |

 
## Getting started 
 
### Installation

- Install MPS 3.3.5: https://www.jetbrains.com/mps/download/previous.html. Consistency with other versions is not guaranteed, so using more recent versions of MPS might require some migration effort. 
With respect to the operating system, I think xjsnark should work on all the provided versions of MPS 3.3.5 in the above link (Both Ubuntu and Windows were tried). However, if running the output circuits on libsnark is desired, then any libsnark environment constraints will apply.

- Install Git: https://git-scm.com/downloads (if not installed already), then link the Git executable to the MPS framework: File->Settings->Version Control->Git -> Path to Git Executable

- Open MPS. Go to (VCS ->) Check out from Version Control, and provide a link to this repo. This will install the project in a directory (both xjsnark's front end and the back end jar). To open the project, File->Open the directory that contains the .mps files.

After checking out and opening the project using the MPS framework,

- To view the project files, you might need to press alt + 1. Under xjsnark in the left bar, three directories should appear. 
	- **xjsnark**: That's the language extension files, e.g. structure, typesystem, code generation rules, ..etc. 
	- **xjsnark.runtime**: This is where we link xjsnark's back end. 
	- **xjnsark.sandbox**: This where we developed the example circuits in. 

- Rebuild the language extension (the icon marked with 'L'). Right-click on xjsnark -> Rebuild Language. 

### Running and generating an example circuit

The sandbox solution contains the examples listed above, each in a separate module. 

- To build an example module, right click on the module, and click Make or Rebuild. To view the produced java files after transforming xJsnark code to java code, there are two ways: 
	- Either go to the path ``xJsnark\languages\xjsnark\sandbox\source_gen`` from the workspace directory. 
	- Right click on an xJsnark file in the MPS Framework, and click Preview Generated Text.

- To run an example program in the sandbox solution, right click on the Program file, e.g. AES128, and do Run Class 'AES128' (this step also builds the code if there are any changes).  If a program is expected to exceed the default heap size, the maximum heap size can be increased in (Run->Edit Configurations..), using the -Xmx option. Another approach for very large circuits is also described below.

- Usability hints: To invoke the editor auto-completion when editing the code/writing applications, ctrl+space can be useful. To import a class from a library that is not visible, ctrl+r (while checking the non-project module box) can help.  
While generating a circuit,  the Run console can be kept open to keep track of the xjsnark's printing messages.  The Run window can be opened by alt+4, and can be switched to floating mode from its top right. 
(More hints will be provided soon)

- **Defining a sample run**: the input values to the Program can be set using xJsnark's SampleRun construct, which is available in all the example Programs. You can define more than one SampleRun, but each should have a unique name. The SampleRun also enables to have code to be executed after the circuit evaluation, which is helpful for tests (See the PourCircuit example).

- **Generating circuit and sample input files**: The java ``main()`` method inside the Program file in each module can be used to set configurations (see SHA256 as an example for the arithmetic optimizer settings), while the actual circuit code appears in ``outsource()``. To configure the framework to output circuit and sample input files, the two configuration values below will need to be set inside the main method. (Note that if the outputFilesPath is left as empty string, the circuit and input files will appear in the working directory where the java process was initialized by the framework, which is likely going to be different from the Program path)

```java
    Config.writeCircuits = true;
    Config.outputFilesPath = ""; // set the path of the output circuit
```

Note: To paste the above two lines or java code into the MPS framework, right click in the editor -> paste as java statements (or java class content if the copied code appears outside methods). If the Config class is not visible, use ctrl+r as mentioned before.

More detailed instructions and editing hints will be added incrementally about how to define your own circuit, and set other configurations.

### Running xJsnark output circuits on libsnark

- Install and build  [jsnark](https://github.com/akosba/jsnark). jsnark has an interface to libsnark that can be used to run the cryptographic algorithms on xJsnark output circuits.  Note that the produced executable is single-threaded. The CMakeLists [file](https://github.com/akosba/libsnark/blob/5aec0646a26c7dc41b70195b744659e67abf3554/CMakeLists.txt) could be modified to make it multi-threaded.

- Use the executable interface  ``run_ppzksnark`` that appears in ``jsnark/libsnark/build/libsnark/jsnark_interface`` to run libsnark algorithms on the circuit. The executable currently allows to run the proof systems ``r1cs_ppzksnark`` (default) and ``r1cs_gg_ppzksnark`` implemented in libsnark. To run the first, the executable just takes two arguments: the arithmetic circuit file path, and a sample input file path. To run the ``r1cs_gg_ppzksnark`` proof system [Gro16], the first argument should be ``gg``, followed by the arithmetic circuit file path, and the sample input file path. 

### Field Configuration

By default, xJsnark circuits use the scalar field corresponding to the [bn128 curve](https://github.com/scipr-lab/libff/blob/04094606d6e90f4d6a2d6a9d32a3a5a660b67bd4/libff/algebra/curves/bn128/bn128_init.cpp) (as in the case of jsnark default configuration). Note that if the default finite field is not used, i.e. other curves are used, the jsnark-libsnark interface will need to be modified as well.

To update the field configuration, the following can be done in the main method of the xjsnark program:
```java
    Config.setFiniteFieldModulus(new BigInteger(".."));
```
Note: To paste java code into the MPS framework, right click in the editor -> paste as java statements (or java class content if the copied code appears outside methods). If the Config class is not visible, use ctrl+r as mentioned before.

### Debugging Circuits

To trace the intermediate values of xJsnark variables/expressions, you could use the log instruction ``log(<expression>, "message")``. To view the values of the logged expressions, ``Config.debugVerbose`` will need to be enabled in the main method. (To import the Config class when it is not visible, you could use using ctrl+r, while checking the non-project module box).

### Generating circuits on a different platform

- In some cases, it might be preferable to generate the circuit on another platform (different from the development environment), or the circuit might be too large to generate on the machine running the MPS Framework. In that case, the programmer can just use the MPS framework to transform the xJsnark code to java files (as illustrated earlier), and use the java files only with the back end jar available in   ``xJsnark\languages\xjsnark\runtime\lib`` to generate the circuit on another machine.

-  As an example, if external circuit generation is desired, the following can be done in the other system:
	- Create a new directory ``gen``, with two subdirectories ``src`` and ``bin``.
	- Copy the back end jar ``xjsnark_backend.jar`` to the gen directory.
	- Copy the generated java files to the above ``src`` directory while preserving the package structure. For example, if the java files are defined to be in the ``xjsnark.sha256`` package, then the java files can appear under ``gen/src/xjsnark/sha256/``.
	- In the ``gen`` directory, compile the java files with the back end jar in the classpath. (Note that it's possible to modify the main method of the generated file before compiling to use updated configurations, e.g. changing number of threads/timeouts or a size parameter, or updating the output path. No need to get back to use the framework for the simple task.):
	```
	javac -d bin  -cp xjsnark_backend.jar $(find ./* | grep ".java$")
	```
	
	- Finally, to generate the circuit,
	```
	 java -cp bin:xjsnark_backend.jar xjsnark.sha256.SHA256 
	```
	For very large circuits, the -Xmx option should be set adequately. 

### Updating the project

To apply any updates and add new examples automatically: apply VCS-> Update Project from the MPS framework. You might need to rebuild the xJsnark language after updates (right-click-> rebuild).

## Disclaimer

This is an early release that could contain issues and inconsistencies. The project is still in dev mode. At this point, I am still optimizing the back end, and adding features and refinements beyond what was in the conference version of the paper, and consequently a lot of integration and testing are still ongoing. 
