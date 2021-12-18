# ShortestPathInGraph

## Task:
Given a positive weighted directed graph, find the shortest paths between two nodes in a graph.
Tests: 
1) cycle contains 10000 vertices
2) 100 X 100 matrix 

## Realization:

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
