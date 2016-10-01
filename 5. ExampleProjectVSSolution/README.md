ExampleNantScript
=================

Example Nant script for building a Visual Studio solution

If you've never used Nant to build your Visual Studio solutiuon then take a look at the example script included here. It can be tailored and extended to build a wide range of solutions.

Nant is a powerful scripting tool and allows you to extend your build process far beyond what is possible with Visual Studio alone. With Nant you can perform all kinds of other tasks that your build may require such as FTPing your files to your test server, automating unit tests, hooking into your continuous integration server and almost any task you can think of.

The example Nant script suppled here performs the following basic tasks.

 - Validates the environment before proceeding
 - Performs a Clean build
 - Performs a Debug build
 - Performs a Release build
 - Copies the compiled articles to a specified release server 
 - Creates the AssemblyInfo.cs file and versions it using a specified version number and the Subversion revision number
 
 

Usage
=================

Simply copy the files to your solution in the same folder as your .sln file. 

Prerequisite
=================
Nant needs to be installed on your PC along with your other development tools and the location of the tools folder needs to be added to your environment as BUILD_TOOLS.




