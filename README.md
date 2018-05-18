# xJsnark

This is a framework for developing applications for zk-SNARKs. xJsnark aims at bridging the gap between high-level programming and the cost of the compilation output. It provides a collection of front end features that enables programmers to write programs easily, and in a higher level way than before (especially for cryptographic applications).  On the other side, xjsnark's back end uses several techniques to reduce the cost of the output circuits, which could finally get to the cost of manually-developed circuits for some applications.

xJsnark's front end is currently developed as a java extension on top of Jetbrains MPS V 3.3.5 (Installation instructions below). Using this framework enabled to have assistive customizable IDE features for our purposes, but users might need to get familiar to editing in this environment in the beginning. In the future, we will also consider extending the back end of our circuit generation to other front ends. xjsnark's back end code have not been released yet. It's just released as a jar with class files in this repo. 

xJsnark targets circuits for preprocessing QAP-based zk-SNARKs, and its outputs can be run on libsnark, through the jsnark interface. (Guidelines will be provided later)

### Disclaimer

This is an early release that could contain issues and inconsistencies. The project is still in dev mode. At this point, I am still optimizing the back end, and adding features and refinements beyond what was in the paper, and consequently a lot of testing is still needed. 

 
### Getting started

- Install MPS 3.3.5: https://confluence.jetbrains.com/display/MPS/Download+MPS+3.3.5
(Consistency with future versions not guaranteed, so updating to higher versions might require some migration effort). With respect to the operating system, I think xjsnark should work on all the operating system versions in the above link (Both Ubuntu and Windows were tried). However, if running the output circuits on libsnark is desired, then any libsnark environment constraints will apply.

- Install Git: https://git-scm.com/downloads (if not installed already), then link the Git executable to the MPS framework: File->Settings->Version Control->Git -> Path to Git Executable

- Open MPS. Go to (VCS ->) Check out from Version Control, and provide a link to this repo. This will install the project in a directory (both xjsnark's front end and the back end jar). To open the project, File->Open the directory that contains the .mps files.

- To view the project files, you might need to press alt + 1. Under xjsnark in the left bar, three directories should appear. 1) xjsnark: that's the language extension files, e.g. structure, typesystem, code generation rules, ..etc. 2) xjsnark.runtime: this is where we link xjsnark's back end, and 3) xjnsark.sandbox which we developed the example circuits in. 

- Rebuild the language extension. Right-click on xjsnark -> Rebuild.

- Then to run an example program in the sandbox solution, right click on the Program file, e.g. AES128, and do Run Class 'AES128' for example. (For usability purposes, you might want to keep the Run console open to keep track of the xjsnark's printing messages.  The Run window can be opened by Alt+4, and can be switched to floating mode from its top right.)

More detailed instructions and editing hints will be added incrementally about how to define your own circuit, running outputs on libsnark and about other features.

### Examples included 
(Note that the code is viewable through the framework after checking out the project, and not through the github interface)

- SHA 256 
- AES 128
- Secret Key Knowledge for RSA
- Secret Key Knowledge for ECDSA (P-256 Curve)

Please stay tuned for more updates and examples. To apply any updates automatically, VCS-> Update Project from the MPS framework.
