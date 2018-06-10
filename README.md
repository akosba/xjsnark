# xJsnark

This is a high-level framework for developing applications for zk-SNARKs. [xJsnark](http://www.cs.umd.edu/~akosba/papers/xjsnark.pdf) aims at bridging the gap between high-level programming and performance. It provides a collection of front end features that enables programmers to write zk-SNARK circuits in a higher level way than before (especially for cryptographic applications).  On the other side, xjsnark's back end uses several techniques to reduce the cost of the output circuits, which could finally get to the cost of manually-developed circuits for some applications.

xJsnark's front end is currently developed as a java extension on top of Jetbrains MPS V 3.3.5 (Installation instructions below). Using this framework enabled to have assistive customizable IDE features for our purposes, but users might need to get familiar to editing in this environment in the beginning. In the future, we will also consider extending the back end of our circuit generation to other front ends. xjsnark's back end code have not been released yet. It's just released as a jar with class files in this repo. 

At this point, xJsnark produces circuits using the same format as [jsnark](https://github.com/akosba/jsnark), which are transformed to r1cs constraints using the jsnark-libsnark interface (See guidelines below about how to run xJsnark circuits on libsnark).

### Examples included 

This is a list of the examples included in this release. Note that the code is viewable through the framework after checking out the project. The code of some of these examples, like the ZeroCash pour circuit, or RSA can be found in the [online full version of the paper](http://www.cs.umd.edu/~akosba/papers/xjsnark.pdf), with minor differences.

- **SHA-256**: High-level implementation of SHA-256 that is compiled to an optimized circuit that is similar to the one produced by manual/low-level libraries, as in [jsnark](https://github.com/akosba/jsnark).
- **AES-128**: This example applies an improved technique for S-Box implementation in the back end. See the paper for details.
- **Secret Key Knowledge for RSA**: This example illustrates the native long integer types.
- **Secret Key Knowledge for ECDSA (NIST P-256 Curve)**: This example illustrates the customizable finite field types. Check FieldDefTable for the field definition. Note that the complexity of the code does not change when the field is different from the field that the zk-SNARK circuit uses. 
- **Sorting verification using permutation verifier**: This example illustrates how to use the external code blocks for non-determinism (setting the values of the external witnesses provided by the prover), and the usage of the permutation verification native instruction which could enable writing more optimized circuits for some applications, like sorting, or pointer chasing.
- **ZeroCash Pour Circuit**: High-level implementation of the Pour circuit in the [ZeroCash](http://zerocash-project.org/media/pdf/zerocash-extended-20140518.pdf) paper, that results into an optimized circuit. The code can also be found in the appendix [here](http://www.cs.umd.edu/~akosba/papers/xjsnark.pdf). 

Please stay tuned for more updates and examples. 
 
## Getting started 
 
### Installation

- Install MPS 3.3.5: https://confluence.jetbrains.com/display/MPS/Download+MPS+3.3.5
(Consistency with future versions not guaranteed, so updating to higher versions might require some migration effort). With respect to the operating system, I think xjsnark should work on all the operating system versions in the above link (Both Ubuntu and Windows were tried). However, if running the output circuits on libsnark is desired, then any libsnark environment constraints will apply.

- Install Git: https://git-scm.com/downloads (if not installed already), then link the Git executable to the MPS framework: File->Settings->Version Control->Git -> Path to Git Executable

- Open MPS. Go to (VCS ->) Check out from Version Control, and provide a link to this repo. This will install the project in a directory (both xjsnark's front end and the back end jar). To open the project, File->Open the directory that contains the .mps files.

After checking out and opening the project using the MPS framework,

- To view the project files, you might need to press alt + 1. Under xjsnark in the left bar, three directories should appear. 
	- **xjsnark**: That's the language extension files, e.g. structure, typesystem, code generation rules, ..etc. 
	- **xjsnark.runtime**: This is where we link xjsnark's back end. 
	- **xjnsark.sandbox**: This where we developed the example circuits in. 

- Rebuild the language extension. Right-click on xjsnark -> Rebuild. 

### Running and generating an example circuit

The sandbox solution contains the examples listed above, each in a separate module. 

- To build an example module, right click on the module, and click Make or Rebuild. To view the produced java files after transforming xJsnark code to java code, there are two ways: 
	- Either go to the path ``xJsnark\languages\xjsnark\sandbox\source_gen`` from the workspace directory. 
	- Right click on an xJsnark file in the MPS Framework, and click Preview Generated Text.

- To run an example program in the sandbox solution, right click on the Program file, e.g. AES128, and do Run Class 'AES128' (this step also builds the code if there are any changes).  If a program is expected to exceed the default heap size, the maximum heap size can be increased in (Run->Edit Configurations..), using the -Xmx option. Another approach for very large circuits is also described below.

- Usability hints: To invoke the editor auto-completion when editing the code/writing applications, ctrl-space can be useful. To import a class from a library that is not visible, ctrl-R (while checking the non-project module box) can help.  
While generating a circuit,  the Run console can be kept open to keep track of the xjsnark's printing messages.  The Run window can be opened by Alt+4, and can be switched to floating mode from its top right. 
(More hints will be provided soon)

- **Defining a sample run**: the input values to the Program can be set using xJsnark's SampleRun construct, which is available in all the example Programs. You can define more than one SampleRun, but each should have a unique name. The SampleRun also enables to have code to be executed after the circuit evaluation, which is helpful for tests (See the PourCircuit example).

- **Generating circuit and sample input files**: The java ``main()`` method inside the Program file in each module can be used to set configurations (see SHA256 as an example for the arithmetic optimizer settings), while the actual circuit code appears in ``outsource()``. To configure the framework to output circuit and sample input files, the two configuration values below will need to be set inside the main method. (Note that if the outputFilesPath is left as empty string, the circuit and input files will appear in the working directory where the java process was initialized by the framework, which is likely going to be different from the Program path)

```java
    Config.writeCircuits = true;
    Config.outputFilesPath = ""; // set the path of the output circuit
```

Note: To paste the above two lines or java code into the MPS framework, right click in the editor -> paste as java statements (or java class content if the copied code xappears outside methods).

More detailed instructions and editing hints will be added incrementally about how to define your own circuit, and set other configurations.

### Running xJsnark output circuits on libsnark

- Install and build  [jsnark](https://github.com/akosba/jsnark). jsnark has a snapshot of an earlier version of libsnark, for which we developed an interface.  Note that the produced executable is single-threaded. The makefile could be modified to make it multi-threaded.

- Use the executable interface  ``run_libsnark`` that appears in ``jsnark/libsnark/src/interface`` to run libsnark on the circuit. The executable takes two arguments: the arithmetic circuit file path, and a sample input path.

### Generating circuits on a different platform

- In some cases, it might be preferable to generate the circuit on another platform (different from the development environment), or the circuit might be too large to generate on the machine running the MPS Framework. In that case, the programmer can just use the MPS framework to transform the xJsnark code to java files (as illustrated earlier), and use the java files only with the back end jar available in   ``xJsnark\languages\xjsnark\runtime\lib`` to generate the circuit on another machine.

-  As an example, if external circuit generation is desired, the following can be done:
	- Create a new directory ``gen``, with two subdirectories ``src`` and ``bin``.
	- Copy the back end jar ``xjsnark_backend.jar`` to the gen directory.
	- Copy the generated java files to the above ``src`` directory while preserving the package structure. For example, if the java files are defined to be in the ``xjsnark.sha256`` package, then the java files can appear under ``gen/src/xjsnark/sha256/``.
	- In the gen directory, compile the java files with the back end jar in the classpath. (Note that it's possible to modify the main method of the generated file before compiling to use updated configurations, e.g. changing number of threads/timeouts or a size parameter, or updating the output path. No need to get back to use the framework for the simple task.):
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
