# SPLabFirstWeek
Linux scripting and source control.

## Explanation of the scripts:
1. Script **AllFileNames.sh** prints all file names on given folder with subfolders.
2. Script **CheckingFiles.sh** prompts the user for a name of a file or directory and reports if it is a regular file, a directory.
3. Script **CountLinesInFile.sh** counts lines in file given in argument.
4. Script **ReverseNum.sh** prints a number in reverse order.

## CMake:
The CMake directory contains *the cmake file, two .cpp files with header file and build.sh clean.sh scripts.* **CMake file** builds and links .cpp files. **build.sh** script make *build* directory, call cmake, make and run the resulting executable file. **clean.sh** script deletes files created during building.
  
## TEST:
The TEST directory contains *scripts and some other files for testing AllFileNames.sh CheckingFiles.sh CountLinesInFile.sh ReverseNum.sh scripts*.

## Docker/docker-ubuntu
The Docker/docker-ubuntu contains **Dockerfile and dockerbuilder.sh script**, whitch build and run the docker. **Dockerfile** create new docker from ubuntu image from docker file and preinstall *vim* and *build-essential* in it.

---

## In branch docker.

### Dockerfile in the root directory
The **Dockerfile** is needed to create a docker from ubuntu image. **Dockerfile** make new directories *sctipts/* and *scripts/TEST/*, add scripts to dir scripts/ and add Test/ to scripts/TEST/. Then **Dockerfile** run tests. The **dockbuilder.sh script** build and run the docker.

---

# Graph

## ShortestPathInGraph

### Task:
Given a positive weighted directed graph, find the shortest paths between two nodes in a graph.
Tests: 
1) cycle contains 10000 vertices
2) 100 X 100 matrix 

### Realization:

Used Dijkstra’s algorithm to find the shortest paths between two vertices in the given graph. Data about the graph is taken from the *input.txt* then after working Dijkstra's algorithm the result is written to the output.txt.
To see how the algorithm works enter, the following commands:

```sh
./build.sh
./run.sh build/rand
./run.sh build/cycle #or ./run.sh build/matrix (for matrix) 
./run.sh build/dijkstra
```

Then the result will be written to output.txt
   
## Testing

To run tests first build the project then run run_tests.sh script. 
