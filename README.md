# ChatGPTWolfram
## Introduction to the repository
The main goal of this repository is to analyze how [ChatGPT](https://chat.openai.com/) and [Wolfram Mathematica](https://www.wolfram.com/mathematica/) can work together. In case any of these names seem unfamiliar, let us provide some basic definitions. **ChatGPT** is an AI language model designed to understand and generate human-like text based on the input it receives. **Wolfram Mathematica**, on the other hand, is a computing environment used for mathematical computation, algorithm development, data visualization, and symbolic manipulation, widely used in scientific, engineering, mathematical, and computing fields.


## How to combine ChatGPT & Wolfram Mathematica
| Step | Instructions                                 | Example                                                                    |
|------|----------------------------------------------|----------------------------------------------------------------------------|
| 1    | Click on your current version of ChatGPT    | <p align="center"><img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Plugin%20installation/step1.png" width="500"/></p> |
| 2    | Select "Plugins" from the dropdown    | <p align="center"><img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Plugin%20installation/step2.png" width="300"/></p> |
| 3    | In case you do not have the Wolfram Mathematica plugin installed, click on the "No plugins installed" dropdown and click on "Plugin store"    | <p align="center"><img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Plugin%20installation/step3.png" width="300"/></p> |
| 4    | Search for Wolfram on the search tab and click on Install    | <p align="center"><img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Plugin%20installation/step4.png" width="300"/></p> |
| 5    | Finally, select it in the plugins dropdown    | <p align="center"><img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Plugin%20installation/step5.png" width="300"/></p> |



## Interacting with Wolfram Mathematica
Combining ChatGPT and Wolfram Mathematica can be a powerful way to leverage the strengths of both platforms. ChatGPT is proficient in natural language processing and can handle a wide range of queries and tasks, while Wolfram Mathematica excels in computational mathematics, data analysis, and visualization. Here are a few ways to integrate them:
1. Automating Mathematica Scripts: ChatGPT can be used to create a user-friendly interface to create Mathematica scripts. Users can **describe in natural language** what they want to compute or analyze, and then ChatGPT will **translate** into a Mathematica script and execute it.
2. Data Anaylsis and Visualization: It can also be used to interpret and structure data analysis queries. After passing these structured queries, Mathematica can then perform complex data analysis and generate visualizations.
3. Algorithm Design: Combining them for algorithm development can be achieved by using ChatGPT for initial brainstorming and pseudocode generation, and then translating these ideas into Mathematica's powerful computational language for detailed analysis and visualization.

### Example: Networking graphs
We would like to provide a preliminary glimpse of what these platforms, when used together, can achieve through an example from one of our previous projects that demonstrates the potential of `packet latency` and `reinforcement learning`. Our goal is to check if, given a specific network, we can **find the shortest path** from one router to another using Wolfram Mathematica. Later on, we might want to try to ask ChatGPT to transform the generated code into R code (find the generated code [here](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/networkingraphs_test.R)).

#### Step 1: Generate the network
To begin with, we will try to generate a 5-router network by providing the following adjacency matrix (1 means there is connection, otherwise 0):
|         | State 1 | State 2 | State 3 | State 4 | State 5 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
| State 1 |    0    |    1    |    1    |    0    |    0    |
| State 2 |    1    |    0    |    1    |    1    |    0    |
| State 3 |    1    |    1    |    0    |    0    |    1    |
| State 4 |    0    |    1    |    0    |    0    |    1    |
| State 5 |    0    |    0    |    1    |    1    |    0    |

In the following picture we can observe the answer of ChatGPT after having given the specifications:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Networking graphs/generating_graphs.png" width = 650>
</p>

Moreover, we asked ChatGPT to run the generated output on Wolfram Mathematica, and we can check that the output was correctly generated:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Networking graphs/generating_graphs2.png" width = 650>
</p>

#### Step 2: Assigning distance, load and BeR values to the links
Moving on, we need to assign certain variables to each of the links, such as distance, load and Bit Error Rate values. The values will be the following ones:
1. Distance values:

|         | State 1  | State 2  | State 3  | State 4   | State 5   |
|:-------:|:--------:|:--------:|:--------:|:---------:|:---------:|
| State 1 | Infinity | 18.79648 | 6.26380  | Infinity  | Infinity  |
| State 2 | 18.79648 | Infinity | 3.61530  | 2.988675  | Infinity  |
| State 3 | 6.26380  | 3.61530  | Infinity | Infinity  | 11.64145  |
| State 4 | Infinity | 2.988675 | Infinity | Infinity  | 14.27574  |
| State 5 | Infinity | Infinity | 11.64145 | 14.27574  | Infinity  |

2. Load values:

|         | State 1   | State 2   | State 3   | State 4   | State 5   |
|:-------:|:---------:|:---------:|:---------:|:---------:|:---------:|
| State 1 | Infinity  | 0.1386221 | 0.5984568 | Infinity  | Infinity  |
| State 2 | 0.1386221 | Infinity  | 0.5240758 | 0.8631663 | Infinity  |
| State 3 | 0.5984568 | 0.5240758 | Infinity  | Infinity  | 0.3763395 |
| State 4 | Infinity  | 0.8631663 | Infinity  | Infinity  | 0.3248558 |
| State 5 | Infinity  | Infinity  | 0.3763395 | 0.3248558 | Infinity  |

3. BeR values:

|         | State 1  | State 2  | State 3  | State 4  | State 5  |
|:-------:|:--------:|:--------:|:--------:|:--------:|:--------:|
| State 1 | Infinity | 1e-08    | 1e-04    | Infinity | Infinity |
| State 2 | 1e-08    | Infinity | 1e-06    | 0.001    | Infinity |
| State 3 | 1e-04    | 1e-06    | Infinity | Infinity | 0.001    |
| State 4 | Infinity | 0.001    | Infinity | Infinity | 0.001    |
| State 5 | Infinity | Infinity | 1e-03    | 0.001    | Infinity |

This is the way in which these tables would be expressed in Wolfram Mathematica:
```ruby
(* Define the matrices for distance, load, and BeR *)
distanceMatrix = {
    {Infinity, 18.796483, 6.26380, Infinity, Infinity},
    {18.79648, Infinity, 3.61530, 2.988675, Infinity},
    {6.26380, 3.615300, Infinity, Infinity, 11.64145},
    {Infinity, 2.988675, Infinity, Infinity, 14.27574},
    {Infinity, Infinity, 11.64145, 14.275740, Infinity}
};

loadMatrix = {
    {Infinity, 0.1386221, 0.5984568, Infinity, Infinity},
    {0.1386221, Infinity, 0.5240758, 0.8631663, Infinity},
    {0.5984568, 0.5240758, Infinity, Infinity, 0.3763395},
    {Infinity, 0.8631663, Infinity, Infinity, 0.3248558},
    {Infinity, Infinity, 0.3763395, 0.3248558, Infinity}
};

berMatrix = {
    {Infinity, 1*10^-8, 1*10^-4, Infinity, Infinity},
    {1*10^-8, Infinity, 1*10^-6, 0.001, Infinity},
    {1*10^-4, 1*10^-6, Infinity, Infinity, 0.001},
    {Infinity, 0.001, Infinity, Infinity, 0.001},
    {Infinity, Infinity, 0.001, 0.001, Infinity}
};
```

#### Step 3: Choosing the best path
In this last part of the experiment, we will try to get the best path from one router to another. To do this, there is a key aspect that must be provided, which is the metric by which we are going to know if a path is preferrable to another. This metric will take into account aspects along the lines of:
- Propagation delay: We will penalize 5us for each kilometer in the fiber.
- Transmission queue delay: We will penalize 1us for each 1/(1-load).
- BeR penalty: If BeR >= 10^-4 and Ber <= 1, we will assign a penalty of 1000us; If BeR > 10^-5 and BeR < 10^-4, the penalty will be of 50us; Otherwise, there is no penalty (0us).

Finally, once this was specified, we asked ChatGPT the code that would be use to compute the best path from router 2 to router 4:
```ruby
(* Define the adjacency matrix *)
adjMatrix = {
    {0, 1, 1, 0, 0},
    {1, 0, 1, 1, 0},
    {1, 1, 0, 0, 1},
    {0, 1, 0, 0, 1},
    {0, 0, 1, 1, 0}
};

(* Define the matrices for distance, load, and BeR *)
distanceMatrix = {
    {Infinity, 18.796483, 6.26380, Infinity, Infinity},
    {18.79648, Infinity, 3.61530, 2.988675, Infinity},
    {6.26380, 3.615300, Infinity, Infinity, 11.64145},
    {Infinity, 2.988675, Infinity, Infinity, 14.27574},
    {Infinity, Infinity, 11.64145, 14.275740, Infinity}
};

loadMatrix = {
    {Infinity, 0.1386221, 0.5984568, Infinity, Infinity},
    {0.1386221, Infinity, 0.5240758, 0.8631663, Infinity},
    {0.5984568, 0.5240758, Infinity, Infinity, 0.3763395},
    {Infinity, 0.8631663, Infinity, Infinity, 0.3248558},
    {Infinity, Infinity, 0.3763395, 0.3248558, Infinity}
};

berMatrix = {
    {Infinity, 1*10^-8, 1*10^-4, Infinity, Infinity},
    {1*10^-8, Infinity, 1*10^-6, 0.001, Infinity},
    {1*10^-4, 1*10^-6, Infinity, Infinity, 0.001},
    {Infinity, 0.001, Infinity, Infinity, 0.001},
    {Infinity, Infinity, 0.001, 0.001, Infinity}
};

(* Define the cost function *)
calculateTotalCost[distance_, load_, ber_] := Module[{propagationDelay, transmissionQueueDelay, berPenalty},
    propagationDelay = 5 * distance;
    transmissionQueueDelay = 1 / (1 - load);
    berPenalty = Which[
        ber >= 10^-4 && ber <= 1, 1000,
        ber > 10^-5 && ber < 10^-4, 50,
        True, 0
    ];
    propagationDelay + transmissionQueueDelay + berPenalty
];

(* Apply the cost function to each valid link *)
costMatrix = MapThread[
    If[#1 != Infinity && #2 != Infinity && #3 != Infinity, calculateTotalCost[#1, #2, #3], Infinity] &,
    {distanceMatrix, loadMatrix, berMatrix}, 2
];

(* Create the weighted graph *)
graph = WeightedAdjacencyGraph[costMatrix, VertexLabels -> "Name", EdgeLabels -> "EdgeWeight"];

(* Find the shortest path from router 2 to router 4 *)
shortestPath = FindShortestPath[graph, 2, 4];

shortestPath
```

#### Extra step: Getting an R equivalent of the code
```ruby
# Defining the adjacency matrix:
adjMatrix <- matrix(c(
  0, 1, 1, 0, 0,
  1, 0, 1, 1, 0,
  1, 1, 0, 0, 1,
  0, 1, 0, 0, 1,
  0, 0, 1, 1, 0
), nrow = 5, byrow = TRUE)


# Defining the matrices for distance, load, and BeR:
distanceMatrix <- matrix(c(
  Inf, 18.796483, 6.26380, Inf, Inf,
  18.79648, Inf, 3.61530, 2.988675, Inf,
  6.26380, 3.615300, Inf, Inf, 11.64145,
  Inf, 2.988675, Inf, Inf, 14.27574,
  Inf, Inf, 11.64145, 14.275740, Inf
), nrow = 5, byrow = TRUE)

loadMatrix <- matrix(c(
  Inf, 0.1386221, 0.5984568, Inf, Inf,
  0.1386221, Inf, 0.5240758, 0.8631663, Inf,
  0.5984568, 0.5240758, Inf, Inf, 0.3763395,
  Inf, 0.8631663, Inf, Inf, 0.3248558,
  Inf, Inf, 0.3763395, 0.3248558, Inf
), nrow = 5, byrow = TRUE)

berMatrix <- matrix(c(
  Inf, 1e-08, 1e-04, Inf, Inf,
  1e-08, Inf, 1e-06, 0.001, Inf,
  1e-04, 1e-06, Inf, Inf, 0.001,
  Inf, 0.001, Inf, Inf, 0.001,
  Inf, Inf, 0.001, 0.001, Inf
), nrow = 5, byrow = TRUE)


# Defining the cost function:
calculateTotalCost <- function(distance, load, ber) {
  propagationDelay <- 5 * distance
  transmissionQueueDelay <- 1 / (1 - load)
  berPenalty <- ifelse(ber >= 1e-04 & ber <= 1, 1000, ifelse(ber > 1e-05 & ber < 1e-04, 50, 0))
  return(propagationDelay + transmissionQueueDelay + berPenalty)
}


# Applying the cost function to each valid link:
costMatrix <- matrix(nrow = 5, ncol = 5)
for (i in 1:5) {
  for (j in 1:5) {
    if (distanceMatrix[i, j] != Inf && loadMatrix[i, j] != Inf && berMatrix[i, j] != Inf) {
      costMatrix[i, j] <- calculateTotalCost(distanceMatrix[i, j], loadMatrix[i, j], berMatrix[i, j])
    } else {
      costMatrix[i, j] <- Inf
    }
  }
}


# Creating the weighted graph and finding the shortest path (using the igraph package):
library(igraph)
g <- graph_from_adjacency_matrix(adjMatrix, mode = "undirected", weighted = TRUE)
E(g)$weight <- costMatrix[upper.tri(costMatrix, diag = TRUE)]
shortestPath <- shortest_paths(g, from = 2, to = 4, output = "vpath")$vpath[[1]]
```

#### Outcomes and important functions
With this example, we have had the opportunity to witness the strengths and capabilities of these platforms firsthand.

Before ending this section, it would be worth mentioning key functions that made the code simpler and efficient:
1. WeightedAdjacencyGraph: creates a graph from the given matrix, where non-zero elements represent the weights of edges between nodes. The position of a non-zero element in the matrix corresponds to the nodes it connects. For example, a non-zero element at the (i, j) position of the matrix would represent an edge with a certain weight between nodes i and j.
2. FindShortestPath: The basic usage is FindShortestPath[graph, start, end], where graph is a graph object, and start and end are the nodes between which you want to find the shortest path.


## Prompting Wolfram Mathematica with ChatGPT
One of our other objectives is finding out how much we can do with only text. In order to do this, we would like to discover the correct manner of prompting ChatGPT. We have seen before that with plugins, it is highly powerful, being able to solve an entire network problem itself. However, what if we could do it in fewer steps, just by correctly prompting it?

### Available resources
First off, we would like to know if there are already some investigations/guides in this regard. We found out that there are no specific texts on the most efficient way of prompting Wolfram Mathematica with ChatGPT. However, there is an interesting introduction to using the plugin in the offical Wolfram webpage: [Plugin de Wolfram para ChatGPT](https://www.wolfram.com/wolfram-plugin-chatgpt/). It provides an installation guide and some applications of it and, at the end of the page, there is a link about [using the Wolfram Plugin for ChatGPT](https://www.youtube.com/watch?v=EOQV9VakBgE&ab_channel=Wolfram), where several prompts are tested.

**Note that the only resources that are close to talking about prompting the plugin are YouTube videos.**


## Experiments
In order to `test how much we can do by simply giving text as input`, we provided some mathematical problems with varying difficulty. There will be two different sections of experiments, each corresponding to a different version of ChatGPT (ChatGPT-3.5, ChatGPT-4).

Inside each, there will be two subsections for two different types of prompting: `Zero-shot prompting` and `Zero-shot-CoT prompting`. For each one we will test their performance by being very specific about what we want to do and by not being specific about what we want to do (for example, instead of asking ChatGPT to solve an integral in a range (specific instructions), we could ask to obtain the area and check if it knows that an integral must be computed (general instructions)). With this, we are trying to solve two main questions: Does ChatGPT require background thinking? How much we can do without being very specific?


## ChatGPT-3.5
### Zero-shot prompting
#### Specific instructions
##### Level 1: Inverting a matrix.
In this case, we will consider a matrix from this PDF: [Inverse Matrices](https://web.viu.ca/pughg/Spring2006/math152S0602/homework8.pdf).
- Prompt:
```ruby
Given the matrix A = [[1, -2, 1], [-2, 3, 1], [5, -7, -3]], find the inverse (A^-1).
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level1.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level1.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level1.3.png" width = 600>
</p>

The answer is not correct, since it does not coincide with the solution of the PDF.

##### Level 2: Generating normally distributed variables with a specific mean and variance.
- Prompt:
```ruby
Generate several normally distributed variables with mean=45.6 and variance=13.84.
```

- ChatGTP Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level2.2.png" width = 600>
</p>

We can see that even though it did not return an example, it showed how to generate these variables in Python.

##### Level 3: Plotting a function.
- Prompt:
```ruby
Plot the function -3*(x-2)^2-5.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level3.2.png" width = 600>
</p>

Again, in this case, it only returned the lines of code that would generate this graph. If we were to run this code in Python, we would obtain the following graph:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level3.3.png" width = 600>
</p>

In order to check if the answer is correct, we used the tool [Graphing Calculator](https://www.geogebra.org/graphing) and compared the graphs generated by both. As observed, they coincide:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level3.4.png" width = 600>
</p>

##### Level 4: Finding a minimum.
- Prompt:
```ruby
Find the minimum of the function f(x)=(x^2-x-2)/(x^2-6x+9).
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level4.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level4.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level4.3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level4.4.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level4.5.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level4.6.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level4.7.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level4.8.png" width = 600>
</p>

The results are, by far, not the correct ones. There must be a minimum at x=7/5.

##### Level 5: Intersecting two functions.
- Prompt:
```ruby
Find the intersection points of the functions f(x)=|x-5| and g(x)=logx.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level5.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level5.2.png" width = 600>
</p>

No solution was given. 

##### Level 6: Deriving a function.
- Prompt:
```ruby
What is the derivative of f(x)=5/(sqrt(3x-1))?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level6.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level6.2.png" width = 600>
</p>

As a way of checking that the answer is correct, we simply asked Wolfram Alpha to derive the function, and check if it coincides with the derivative obtained by ChatGPT. The solution of Wolfram Alpha is:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level6.png" width = 200>
</p>

Hence, the answer is incorrect.

##### Level 7: Integrating a function.
- Prompt:
```ruby
What is the integral of sin2xcos2x?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level7.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level7.2.png" width = 600>
</p>

For this level, to check if the answer is correct, we solved the integral using [Integral Calculator](https://www.integral-calculator.com/):
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level7.png" width = 500>
</p>

It does not coincide with the result given by ChatGPT.

##### Level 8: Mathematical Series.
- Prompt:
```ruby
Study the convergence of the infinite series starting from n equals 1 to infinity of the sum of the reciprocal of the product of n and n plus 1.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level8.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level8.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level8.3.png" width = 600>
</p>

The tool [Symbolab](https://www.symbolab.com/) was used to study the convergence of the proposed function. The series has a value of 1, which corresponds to the value obtained by ChatGPT:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level8.png" width = 600>
</p>

##### Level 9: Fourier transform.
- Prompt:
```ruby
Compute the Fourier transform of f(t)=cosω0t.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level9.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level9.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level9.3.png" width = 600>
</p>

For this problem, we used again [Symbolab](https://www.symbolab.com/) to compute the Fourier transform. After comparing it with the result obtained from ChatGPT, the solutions do not coincide:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level9.png" width = 600>
</p>

##### Level 10: Doing regression in some data.
- Prompt:
```ruby
The following table shows information regarding the sales of daily press in the year 1998, as the number of daily copies sold per thousand inhabitants in 8 autonomous Spanish regions. The sales are assumed to be related to economic activity levels as measured by the Gross Domestic Product (GDP) per inhabitant in thousands of euros (Source: INE. Anuario Estadistico).

GDP 8.3 9.7 10.7 11.7 12.4 15.4 16.3 17.2
Copies sold 57.4 106.8 104.4 131.9 144.6 146.4 177.4 186.9

Use least squares to estimate a simple regression model that explains the number of copies sold as a function of GDP per capita.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level10.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level10.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/Specific%20instructions/level10.3.png" width = 600>
</p>

The solution is incorrect.

#### General instructions
##### Level 11: Finding the area.
The example from below comes from this pdf: [Finding areas by integration](https://www.mathcentre.ac.uk/resources/uploaded/mc-ty-areas-2009-1.pdf).

- Prompt:
```ruby
Find the area bounded by the curve y = x^2 + x + 4, the x-axis and the ordinates x = 1 and x = 3.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level11.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level11.2.png" width = 600>
</p>

In this case, ChatGPT has correctly guessed that integrals are required to solve this problem. As indicated in the PDF, the solution is doing the integral of x^2+x+4 between 1 and 3. To check if the answers were correct, the platform [Integral Calculator](https://www.integral-calculator.com/) was used. As observed, the results coincide:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level11.png" width = 500>
</p>

##### Level 12: Predicting the range of a projectile.
- Prompt:
```ruby
A soccer player kicks a ball at an angle of 30 degrees to the horizontal. The initial speed of the ball is 20 meters per second. Assuming no air resistance and that the ball is kicked from ground level, predict how far the ball will travel horizontally before hitting the ground. Use the acceleration due to gravity as 9.8 m/s^2.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level12.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level12.2.png" width = 600>
</p>

The problem of this level was proposed by ChatGPT, and the solution coincides with the results obtained above:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.3.png" width = 600>
</p>

##### Level 13: Getting the best path from one node to another.
The example from below comes from this pdf: [Fundamental Algorithms 12 - Solution Examples](https://www7.in.tum.de/~kretinsk/teaching/fundamental%20algorithms/fundalg12sol.pdf).

- Prompt:
```ruby
Imagine I have a graph (with nodes s, s1, s2, s3, s4, s5, t), whose connections (with weights) are represented with the following adjacency matrix: ((0,1,3,0,0,0,0), (1,0,0,8,4,0,0), (3,0,0,0,3,0,0), (0,8,0,0,0,1,7), (0,4,3,0,0,1,0), (0,0,0,1,1,0,10),(0,0,0,7,0,10,0)). Obtain the shortest path from s to t.
```
- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level13.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level13.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level13.3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level13.4.png" width = 600>
</p>

If we were to check the solutions, we could see that the shortest path is `s, s1, s4, s5, s3, t`; not like the one proposed by ChatGPT.

##### Level 14: Predicting the next number in a complex sequence.
- Prompt:
```ruby
Consider the following sequence of numbers: 3, 8, 15, 24, 35, 48, ...Your task is to predict the next number in this sequence.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level14.png" width = 600>
</p>

The underlying sequence was perfectly discovered.

##### Level 15: Calculating the future value of an investment.
The example from below comes from this webpage: [Calculating the Future Value](https://ecampusontario.pressbooks.pub/businessfinancialmath/chapter/4-2-calculating-future-value/).

- Prompt:
```ruby
If you invested $5,000 for 10 years at 9% compounded quarterly, how much money would you have? What is the interest earned during the term?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level15.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level15.2.png" width = 600>
</p>

By checking the results, we can see that these do not coincide with the solutions.

##### Level 16: Deciphering a phrase knowing each letter was shifted by a certain number.
The example from below comes from the following PDF: [Caesar Cipher Decoding: Answer Key](https://s3.amazonaws.com/prod-hmhco-vmg-craftcms-public/CipherAnswers.pdf).

- Prompt:
```ruby
Decode this phrase "SERR CVMMN VA GUR PNSRGREVN" knowing that each letter was shifted by 13.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level16.png" width = 600>
</p>

This constitutes another problem that it did not solve correctly. After checking the solutions, we see that the deciphered message should be "FREE PIZZA IN THE CAFETERIA". 

##### Level 17: Calculating the time it takes for an object to cool down to a certain temperature.
- Prompt:
```ruby
A freshly baked pie is taken out of the oven and left to cool in a room. The temperature of the oven was 200ºC, and the room temperature is a constant 25ºC. When the pie is first taken out, its temperature is 180ºC. After 20 minutes, the temperature of the pie drops to 100ºC. Calculate the time it takes for the pie to cool down to 50ºC.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level17.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level17.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level17.3.png" width = 600>
</p>

In this case, ChatGPT was unable to solve this problem. Even though it understood that it was a problem related to Newton's Law of Cooling, the answer does not coincide with the solution.

##### Level 18: Calculating the work done in compressing a spring.
The example from below comes from the following YouTube video: [Work done by Spring Example](https://www.youtube.com/watch?v=uUgMK8wQAcU).

- Prompt:
```ruby
A person compresses a spring a distance of 5cm, which requires a force of 100N. How much work does the person do?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level18.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level18.2.png" width = 600>
</p>

In this case, ChatGPT failed to know that in order to find the work we must know the spring constant K. 

##### Level 19: Computing the quantity a company should make for its inventory given production cost, demand rate, and other variables.
The example from below comes from the following webpage: [Economic Order Quantity (EOQ): Practical Problems and Solutions](https://www.financestrategists.com/accounting/cost-accounting/material-costing/economic-order-quantity-eoq-problems-and-solutions/).

- Prompt:
```ruby
The John Equipment Company estimates its carrying cost at 15% and its ordering cost at $9 per order. The estimated annual requirement is 48,000 units at a price of $4 per unit. What is the most economical number of units to order? How many orders should be placed in a year? How often should an order be placed?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level19.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level19.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level19.3.png" width = 600>
</p>

ChatGPT understood that it was an EOQ problem, so it proceeded correctly by using the EOQ formula from below. However, the answer to all of the questions are incorrect.

##### Level 20: Computing the orbital period.
The example from below comes from the following PDF: [Solutions to Physics I Gravity and Kepler’s Laws Practice Problems](https://www.lehman.edu/faculty/anchordoqui/101-P4_s.pdf).

- Prompt:
```ruby
Titan, the largest moon of Saturn, has a mean orbital radius of 1.22x109 m. The orbital period of Titan is 15.95 days. Hyperion, another moon of Saturn, orbits at a mean radius of 1.48x109 m. Predict the orbital period of Hyperion in days.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level20.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level20.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot/General%20instructions/level20.3.png" width = 600>
</p>

Even though the answer is not exactly the solution, it understood the problem correctly.

##### Conclusions
As observed, not many exercises were solved correctly. Regarding the section **Specific instructions**, only 3 exercises were correct.

| Level 1 | Level 2 | Level 3 | Level 4 | Level 5 | Level 6 | Level 7 | Level 8 | Level 9 | Level 10 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|    Fail    |    Pass    |    Pass    |    Fail    |    Fail    |    Fail    |    Fail    |    Pass    |    Fail    |    Fail    |

For the case of **General instructions**, only 4 exercises were solved correctly.

| Level 11 | Level 12 | Level 13 | Level 14 | Level 15 | Level 16 | Level 17 | Level 18 | Level 19 | Level 20 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|    Pass    |    Pass    |    Fail    |    Pass    |    Fail    |    Fail    |    Fail    |    Fail    |    Fail    |    Pass    |

### Zero-shot-CoT prompting
#### Specific instructions
##### Level 1: Inverting a matrix.
In this case, we will consider a matrix from this PDF: [Inverse Matrices](https://web.viu.ca/pughg/Spring2006/math152S0602/homework8.pdf).
- Prompt:
```ruby
Given the matrix A = [[1, -2, 1], [-2, 3, 1], [5, -7, -3]], find the inverse (A^-1).
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level1.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level1.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level1.3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level1.4.png" width = 600>
</p>

The answer is not correct; it does not coincide with the solution.

##### Level 2: Generating normally distributed variables with a specific mean and variance.
- Prompt:
```ruby
Generate several normally distributed variables with mean=45.6 and variance=13.84.
Let's think step by step.
```

- ChatGTP Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level2.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level2.3.png" width = 600>
</p>

Even though it did not give examples, it showed the code that will generate the random variable.

##### Level 3: Plotting a function.
- Prompt:
```ruby
Plot the function -3*(x-2)^2-5.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level3.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level3.3.png" width = 600>
</p>

ChatGPT did not run the code, but we could run it in Python and compare it to a plot generated by [Graphing Calculator](https://www.geogebra.org/graphing). When compared, they coincide:
Graphing Calculator        |  ChatGPT
:-------------------------:|:-------------------------:
![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level3.4.png)  |  ![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level3.4.png)

##### Level 4: Finding a minimum.
- Prompt:
```ruby
Find the minimum of the function f(x)=(x^2-x-2)/(x^2-6x+9).
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level4.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level4.2.png" width = 600>
</p>

As we will see in some other levels, this happens more than expected. ChatGPT does not return the answer; it only gives the steps and lets the user **"make the calculations"**.

##### Level 5: Intersecting two functions.
- Prompt:
```ruby
Find the intersection points of the functions f(x)=|x-5| and g(x)=logx.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level5.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level5.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level5.3.png" width = 600>
</p>

As before, no results are given.

##### Level 6: Deriving a function.
- Prompt:
```ruby
What is the derivative of f(x)=5/(sqrt(3x-1))?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level6.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level6.2.png" width = 600>
</p>

As a way of checking that the answer is correct, we simply asked Wolfram Alpha to derive the function, and check if it coincides with the derivative obtained by ChatGPT. The solution of Wolfram Alpha is:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level6.png" width = 200>
</p>

Hence, the answer is wrong.

##### Level 7: Integrating a function.
- Prompt:
```ruby
What is the integral of sin2xcos2x?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level7.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level7.2.png" width = 600>
</p>

For this level, to check if the answer is correct, we solved the integral using [Integral Calculator](https://www.integral-calculator.com/):
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level7.png" width = 500>
</p>

It coincides with the result given by ChatGPT.

##### Level 8: Mathematical Series.
- Prompt:
```ruby
Study the convergence of the infinite series starting from n equals 1 to infinity of the sum of the reciprocal of the product of n and n plus 1.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level8.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level8.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level8.3.png" width = 600>
</p>

The tool [Symbolab](https://www.symbolab.com/) was used to study the convergence of the proposed function. The series has a value of 1 (converges), which corresponds to the value obtained by ChatGPT:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level8.png" width = 600>
</p>

##### Level 9: Fourier transform.
- Prompt:
```ruby
Compute the Fourier transform of f(t)=cosω0t.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level9.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level9.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level9.3.png" width = 600>
</p>

For this problem, we used again [Symbolab](https://www.symbolab.com/) to compute the Fourier transform. After comparing it with the result obtained from ChatGPT, the solutions coincide:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level9.png" width = 600>
</p>

These two expressions are different due to the scaling factors, but they represent the same underlying signal structure with different scaling.

##### Level 10: Doing regression in some data.
- Prompt:
```ruby
The following table shows information regarding the sales of daily press in the year 1998, as the number of daily copies sold per thousand inhabitants in 8 autonomous Spanish regions. The sales are assumed to be related to economic activity levels as measured by the Gross Domestic Product (GDP) per inhabitant in thousands of euros (Source: INE. Anuario Estadistico).

GDP 8.3 9.7 10.7 11.7 12.4 15.4 16.3 17.2
Copies sold 57.4 106.8 104.4 131.9 144.6 146.4 177.4 186.9

Use least squares to estimate a simple regression model that explains the number of copies sold as a function of GDP per capita.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level10.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level10.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level10.3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/Specific%20instructions/level10.4.png" width = 600>
</p>

The process was stated, but no answer given.

#### General instructions
##### Level 11: Finding the area.
The example from below comes from this pdf: [Finding areas by integration](https://www.mathcentre.ac.uk/resources/uploaded/mc-ty-areas-2009-1.pdf).

- Prompt:
```ruby
Find the area bounded by the curve y = x^2 + x + 4, the x-axis and the ordinates x = 1 and x = 3.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level11.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level11.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level11.3.png" width = 600>
</p>

As in the rest of the cases, ChatGPT has correctly guessed that integrals are required to solve this problem. As indicated in the PDF, the solution is doing the integral of x^2+x+4 between 1 and 3. To check if the answers were correct, the platform [Integral Calculator](https://www.integral-calculator.com/) was used. As observed, the results do not coincide (even though the integral is the same):
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level11.png" width = 500>
</p>

##### Level 12: Predicting the range of a projectile.
- Prompt:
```ruby
A soccer player kicks a ball at an angle of 30 degrees to the horizontal. The initial speed of the ball is 20 meters per second. Assuming no air resistance and that the ball is kicked from ground level, predict how far the ball will travel horizontally before hitting the ground. Use the acceleration due to gravity as 9.8 m/s^2.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level12.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level12.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level12.3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level12.4.png" width = 600>
</p>

The problem of this level was proposed by ChatGPT, and the solution does not coincide with the results obtained above:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.3.png" width = 600>
</p>

##### Level 13: Getting the best path from one node to another.
The example from below comes from this pdf: [Fundamental Algorithms 12 - Solution Examples](https://www7.in.tum.de/~kretinsk/teaching/fundamental%20algorithms/fundalg12sol.pdf).

- Prompt:
```ruby
Imagine I have a graph (with nodes s, s1, s2, s3, s4, s5, t), whose connections (with weights) are represented with the following adjacency matrix: ((0,1,3,0,0,0,0), (1,0,0,8,4,0,0), (3,0,0,0,3,0,0), (0,8,0,0,0,1,7), (0,4,3,0,0,1,0), (0,0,0,1,1,0,10),(0,0,0,7,0,10,0)). Obtain the shortest path from s to t.
Let's think step by step.
```
- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level13.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level13.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level13.3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level13.4.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level13.5.png" width = 600>
</p>

If we were to check the solutions, we could see that the shortest path is `s, s1, s4, s5, s3, t`; contrary to the one proposed by ChatGPT.

##### Level 14: Predicting the next number in a complex sequence.
- Prompt:
```ruby
Consider the following sequence of numbers: 3, 8, 15, 24, 35, 48, ...Your task is to predict the next number in this sequence.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level14.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level14.2.png" width = 600>
</p>

The underlying sequence was perfectly discovered.

##### Level 15: Calculating the future value of an investment.
The example from below comes from this webpage: [Calculating the Future Value](https://ecampusontario.pressbooks.pub/businessfinancialmath/chapter/4-2-calculating-future-value/).

- Prompt:
```ruby
If you invested $5,000 for 10 years at 9% compounded quarterly, how much money would you have? What is the interest earned during the term?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level15.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level15.2.png" width = 600>
</p>

By checking the results, we can see that these do not coincide with the solutions, despite being able to understand that it was a compound interest problem.

##### Level 16: Deciphering a phrase knowing each letter was shifted by a certain number.
The example from below comes from the following PDF: [Caesar Cipher Decoding: Answer Key](https://s3.amazonaws.com/prod-hmhco-vmg-craftcms-public/CipherAnswers.pdf).

- Prompt:
```ruby
Decode this phrase "SERR CVMMN VA GUR PNSRGREVN" knowing that each letter was shifted by 13.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level16.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level16.2.png" width = 600>
</p>

After checking the solutions, we see that the deciphered message is "FREE PIZZA IN THE CAFETERIA", and not the one deciphered by ChatGPT.

##### Level 17: Calculating the time it takes for an object to cool down to a certain temperature.
- Prompt:
```ruby
A freshly baked pie is taken out of the oven and left to cool in a room. The temperature of the oven was 200ºC, and the room temperature is a constant 25ºC. When the pie is first taken out, its temperature is 180ºC. After 20 minutes, the temperature of the pie drops to 100ºC. Calculate the time it takes for the pie to cool down to 50ºC.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level17.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level17.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level17.3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level17.4.png" width = 600>
</p>

In this case, ChatGPT was unable to solve this problem, since it couldn't determine the cooling constant `k`. There is no way of knowing if the problem is correct.

##### Level 18: Calculating the work done in compressing a spring.
The example from below comes from the following YouTube video: [Work done by Spring Example](https://www.youtube.com/watch?v=uUgMK8wQAcU).

- Prompt:
```ruby
A person compresses a spring a distance of 5cm, which requires a force of 100N. How much work does the person do?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level18.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level18.2.png" width = 600>

In this case, ChatGPT failed to know that in order to find the work we must know the spring constant K. 

##### Level 19: Computing the quantity a company should make for its inventory given production cost, demand rate, and other variables.
The example from below comes from the following webpage: [Economic Order Quantity (EOQ): Practical Problems and Solutions](https://www.financestrategists.com/accounting/cost-accounting/material-costing/economic-order-quantity-eoq-problems-and-solutions/).

- Prompt:
```ruby
The John Equipment Company estimates its carrying cost at 15% and its ordering cost at $9 per order. The estimated annual requirement is 48,000 units at a price of $4 per unit. What is the most economical number of units to order? How many orders should be placed in a year? How often should an order be placed?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level19.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level19.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level19.3.png" width = 600>
</p>

ChatGPT understood that it was an EOQ problem, so it proceeded correctly by using the EOQ formula from below. Furthermore, it solved all of the questions correctly. 

##### Level 20: Computing the orbital period.
The example from below comes from the following PDF: [Solutions to Physics I Gravity and Kepler’s Laws Practice Problems](https://www.lehman.edu/faculty/anchordoqui/101-P4_s.pdf).

- Prompt:
```ruby
Titan, the largest moon of Saturn, has a mean orbital radius of 1.22x109 m. The orbital period of Titan is 15.95 days. Hyperion, another moon of Saturn, orbits at a mean radius of 1.48x109 m. Predict the orbital period of Hyperion in days.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level20.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-3.5/Zero-shot-CoT/General%20instructions/level20.2.png" width = 600>
</p>

ChatGPT was able to understand that we were dealing with Kepler's third law. The process is correct and the answer is close to the solution.

##### Conclusions
Once the two sections are finished, it is time to gather everything that was exposed above. First off, regarding the section **Specific instructions**, only 5 exercises were correct.

| Level 1 | Level 2 | Level 3 | Level 4 | Level 5 | Level 6 | Level 7 | Level 8 | Level 9 | Level 10 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|    Fail    |    Pass    |    Pass    |    Fail    |    Fail    |    Fail    |    Pass    |    Pass    |    Pass    |    Fail    |

As in the conclusions for the section of specific instructions, we have seen that only three levels where solved correctly under the **General instructions**:

| Level 11 | Level 12 | Level 13 | Level 14 | Level 15 | Level 16 | Level 17 | Level 18 | Level 19 | Level 20 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|    Fail    |    Fail    |    Fail    |    Pass    |    Fail    |    Fail    |    Fail    |    Fail    |    Pass    |    Pass    |


## ChatGPT-4 (Wolfram Mathematica plugin on)
### Zero-shot prompting
#### Specific instructions
##### Level 1: Inverting a matrix.
- Prompt:
```ruby
Given the matrix A = [[1, -2, 1], [-2, 3, 1], [5, -7, -3]], find the inverse (A^-1).
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/level1.png" width = 600>
</p>

The answer is correct.

##### Level 2: Generating normally distributed variables with a specific mean and variance.
- Prompt:
```ruby
Generate several normally distributed variables with mean=45.6 and variance=13.84.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/level2.png" width = 600>
</p>

Even though the answer is correct, we must take something into consideration. If we were to compute the mean and variance of these variables, we will not get the exact mean and variance. This is due to the nature of random sampling from a distribution. This randomness can lead to samples that don't perfectly reflect the underlying distribution, especially with smaller sample sizes.

##### Level 3: Plotting a function.
- Prompt:
```ruby
Plot -3*(x-2)^2-5.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/level3.png" width = 600>
</p>

The function is correctly plotted.

##### Level 4: Finding a minimum.
- Prompt:
```ruby
Find the minimum of the function f(x)=(x^2-x-2)/(x^2-6x+9).
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/level4.png" width = 600>
</p>

In order to check that the answers are correct, we will obtain the minimum using Wolfram Alpha. As observed, in both cases the minimum is correct (-9/16 = -0'5625).

Wolfram Alpha              |  Wolfram Mathematica     
:-------------------------:|:------------------------:
![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level4.png)  |  ![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/level4.png)

##### Level 5: Intersecting two functions.
- Prompt:
```ruby
Find the intersection points of the functions f(x)=|x-5| and g(x)=logx.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/level5.png" width = 600>
</p>

As we have seen in the solutions given by Wolfram Mathematica, we may think the answers are wrong because instead of giving a number, it gives the Lambert W function. However, let's check two things: the solution given by Wolfram Alpha and the graph:

Wolfram Alpha        |  Graph
:-------------------:|:-------------------:
![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level5.png)  |  ![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level5.2.png)

We can see that the former returns two intersection points. Both are expressed using the Lambert W function; the first intersection point is equal to 3'693 and the second one is 6'936. 

##### Level 6: Deriving a function.
- Prompt:
```ruby
What is the derivative of f(x)=5/(sqrt(3x-1))?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/level6.png" width = 600>
</p>

As a way of checking that the answers were correct, we simply asked Wolfram Alpha to derive the function, and check if it coincides with derivatives obtained in Level 6. The solution of Wolfram Alpha is:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level6.png" width = 200>
</p>

##### Level 7: Integrating a function.
- Prompt:
```ruby
What is the integral of sin2xcos2x?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/level7.png" width = 600>
</p>

The solution for the integral, computed using [Integral Calculator](https://www.integral-calculator.com/), coincides:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level7.png" width = 500>
</p>

##### Level 8: Mathematical Series.
- Prompt:
```ruby
Study the convergence of the infinite series starting from n equals 1 to infinity of the sum of the reciprocal of the product of n and n plus 1.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/level8.png" width = 600>
</p>

The tool [Symbolab](https://www.symbolab.com/) was used to study the convergence of the proposed function. The series has a value of 1, which corresponds to the one obtained by the Wolfram Mathematica plugin:

Symbolab                   |  Wolfram Mathematica     
:-------------------------:|:------------------------:
![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level8.png)  |  ![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/level8.png) 

##### Level 9: Fourier transform.
- Prompt:
```ruby
Compute the Fourier transform of f(t)=cosω0t.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/level9.png" width = 600>
</p>

For this problem, we used again [Symbolab](https://www.symbolab.com/) to compute the Fourier transform. In this case too, the solutions coincide.
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level9.png" width = 600>
</p>

##### Level 10: Doing regression in some data.
- Prompt:
```ruby
The following table shows information regarding the sales of daily press in the year 1998, as the number of daily copies sold per thousand inhabitants in 8 autonomous Spanish regions. The sales are assumed to be related to economic activity levels as measured by the Gross Domestic Product (GDP) per inhabitant in thousands of euros (Source: INE. Anuario Estadistico).
GDP 8.3 9.7 10.7 11.7 12.4 15.4 16.3 17.2
Copies sold 57.4 106.8 104.4 131.9 144.6 146.4 177.4 186.9

Use least squares to estimate a simple regression model that explains the number of copies
sold as a function of GDP per capita
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/level10.png" width = 600>
</p>

No need of proof, the problem was correctly solved.

#### General instructions
##### Level 11: Finding the area (requires knowing that an integral must be used).
The example from below comes from this pdf: [Finding areas by integration](https://www.mathcentre.ac.uk/resources/uploaded/mc-ty-areas-2009-1.pdf).

- Prompt:
```ruby
Find the area bounded by the curve y = x^2 + x + 4, the x-axis and the ordinates x = 1 and x = 3.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level11.png" width = 600>
</p>

In this case, ChatGPT has correctly guessed that integrals are required to solve this problem. As indicated in the PDF, the solution is doing the integral of x^2+x+4 between 1 and 3. To check if the answers were correct, the platform [Integral Calculator](https://www.integral-calculator.com/) was used. As observed, the results coincide:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level11.png" width = 500>
</p>

##### Level 12: Predicting the range of a projectile (requires knowing that kinematic equations must be used).
- Prompt:
```ruby
A soccer player kicks a ball at an angle of 30 degrees to the horizontal. The initial speed of the ball is 20 meters per second. Assuming no air resistance and that the ball is kicked from ground level, predict how far the ball will travel horizontally before hitting the ground. Use the acceleration due to gravity as 9.8 m/s^2.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level12.png" width = 600>
</p>

The problem of this level was proposed by ChatGPT, and the solution coincides with the results obtained above:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.3.png" width = 600>
</p>

##### Level 13: Getting the best path from one node to another (requires knowing that Dijkstra's algorithm must be used).
The example from below comes from this pdf: [Fundamental Algorithms 12 - Solution Examples](https://www7.in.tum.de/~kretinsk/teaching/fundamental%20algorithms/fundalg12sol.pdf).

- Prompt:
```ruby
Imagine I have a graph (with nodes s, s1, s2, s3, s4, s5, t), whose connections (with weights) are represented with the following adjacency matrix: ((0,1,3,0,0,0,0), (1,0,0,8,4,0,0), (3,0,0,0,3,0,0), (0,8,0,0,0,1,7), (0,4,3,0,0,1,0), (0,0,0,1,1,0,10),(0,0,0,7,0,10,0)). Obtain the shortest path from s to t.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level13.png" width = 600>
</p>

If we were to check the solutions, we could see that the shortest path will be s, s1, s4, s5, t; as the one proposed by ChatGPT.

##### Level 14: Predicting the next number in a complex sequence (requires recognizing and applying the underlying pattern or mathematical rule governing the sequence).
- Prompt:
```ruby
Consider the following sequence of numbers: 3, 8, 15, 24, 35, 48, ...Your task is to predict the next number in this sequence.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level14.png" width = 600>
</p>

The underlying sequence was perfectly discovered.

##### Level 15: Calculating the future value of an investment (requires understanding and applying the compound interest formula).
The example from below comes from this webpage: [Calculating the Future Value](https://ecampusontario.pressbooks.pub/businessfinancialmath/chapter/4-2-calculating-future-value/).

- Prompt:
```ruby
If you invested $5,000 for 10 years at 9% compounded quarterly, how much money would you have? What is the interest earned during the term?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level15.png" width = 600>
</p>

By checking the results, we can see that these coincide with the solutions. Hence, ChatGPT was able to understand that it was a compound interest problem.

##### Level 16: Deciphering a phrase knowing each letter was shifted by a certain number (requires knowing that we are talking about Caesar's cipher decoding).
The example from below comes from the following PDF: [Caesar Cipher Decoding: Answer Key](https://s3.amazonaws.com/prod-hmhco-vmg-craftcms-public/CipherAnswers.pdf).

- Prompt:
```ruby
Decode this phrase "SERR CVMMN VA GUR PNSRGREVN" knowing that each letter was shifted by 13.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level16.png" width = 600>
</p>

This constitutes another problem that it solved correctly. After checking the solutions, we see that the deciphered message is "FREE PIZZA IN THE CAFETERIA". 

##### Level 17: Calculating the time it takes for an object to cool down to a certain temperature (requires the use of Newton's Law of Cooling, which often involves solving differential equations).
- Prompt:
```ruby
A freshly baked pie is taken out of the oven and left to cool in a room. The temperature of the oven was 200ºC, and the room temperature is a constant 25ºC. When the pie is first taken out, its temperature is 180ºC. After 20 minutes, the temperature of the pie drops to 100ºC. Calculate the time it takes for the pie to cool down to 50ºC.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level17.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level17.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level17.3.png" width = 600>
</p>

The problem of this level was proposed by ChatGPT, and after checking the value of `t`, the solution coincides:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level17.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level17.2.png" width = 600>
</p>

##### Level 18: Calculating the work done in compressing a spring (requires knowing Hooke's Law)
The example from below comes from the following YouTube video: [Work done by Spring Example](https://www.youtube.com/watch?v=uUgMK8wQAcU).

- Prompt:
```ruby
A person compresses a spring a distance of 5cm, which requires a force of 100N. How much work does the person do?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level18.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level18.2.png" width = 600>
</p>

In this case, the problem is tricky, since we cannot forget about the fact that in order to find the work, we must know the spring constant k. This was successfully taken into account by ChatGPT.

##### Level 19: Computing the quantity a company should make for its inventory given production cost, demand rate, and other variables (requires understanding EOQ).
The example from below comes from the following webpage: [Economic Order Quantity (EOQ): Practical Problems and Solutions](https://www.financestrategists.com/accounting/cost-accounting/material-costing/economic-order-quantity-eoq-problems-and-solutions/).

- Prompt:
```ruby
The John Equipment Company estimates its carrying cost at 15% and its ordering cost at $9 per order. The estimated annual requirement is 48,000 units at a price of $4 per unit. What is the most economical number of units to order? How many orders should be placed in a year? How often should an order be placed?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level19.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level19.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level19.3.png" width = 600>
</p>

ChatGPT understood that it was an EOQ problem, so it proceeded correctly by using the EOQ formula from below. Plus, the results (except for the last question), coincide with the solutions:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level19.png" width = 300>
</p>

##### Level 20: Computing the orbital period (requires knowing Kepler’s third law of planetary motion).
The example from below comes from the following PDF: [Solutions to Physics I Gravity and Kepler’s Laws Practice Problems](https://www.lehman.edu/faculty/anchordoqui/101-P4_s.pdf).

- Prompt:
```ruby
Titan, the largest moon of Saturn, has a mean orbital radius of 1.22x109 m. The orbital period of Titan is 15.95 days. Hyperion, another moon of Saturn, orbits at a mean radius of 1.48x109 m. Predict the orbital period of Hyperion in days.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level20.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/level20.2.png" width = 600>
</p>

Finally, ChatGPT was impressively able to understand that we were dealing with **Kepler's third law**. By checking the correct solution from the PDF above, we see that the same result is obtained: the orbital period of Hyperion is 21.31 days.

##### Conclusions
To sum up this trials, the conclusions from below can be observed, having 10/10 answers correct:

 Level 1 | Level 2 | Level 3 | Level 4 | Level 5 | Level 6 | Level 7 | Level 8 | Level 9 | Level 10 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |

As for the section of **General instructions**, we have seen that the same happened except for **Level 19**, in which the last question was not correctly solved:

| Level 11 | Level 12 | Level 13 | Level 14 | Level 15 | Level 16 | Level 17 | Level 18 | Level 19 | Level 20 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Fail    |    Pass    |

### Zero-Shot-CoT prompting
We have already tested how ChatGPT-4 behaves when given specific and general instructions under Zero-shot prompting using the plugin. However, how would it behave under Zero-shot-CoT? Zero-shot Chain of Thought (Zero-shot-CoT) is an approach in artificial intelligence where the model demonstrates the ability to solve complex problems or answer questions in a detailed, step-by-step manner without having been explicitly trained on those specific tasks or examples. This is referred to as "zero-shot" because the model is dealing with tasks it has not seen during training.

In Zero-shot-CoT, the model essentially "thinks out loud," breaking down its reasoning process into a chain of thoughts or steps. This approach helps in understanding how the model arrives at its conclusion and also improves its ability to tackle complex problems. We will try to solve the problems that we have tried above and check the results.

#### Specific instructions
##### Level 1: Inverting a matrix.
In this case, we will consider a matrix from this PDF: [Inverse Matrices](https://web.viu.ca/pughg/Spring2006/math152S0602/homework8.pdf).
- Prompt:
```ruby
Given the matrix A = [[1, -2, 1], [-2, 3, 1], [5, -7, -3]], find the inverse (A^-1).
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level1.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level1.2.png" width = 600>
</p>

The answer is correct, since it coincides with the solution of the PDF.

##### Level 2: Generating normally distributed variables with a specific mean and variance.
- Prompt:
```ruby
Generate several normally distributed variables with mean=45.6 and variance=13.84.
Let's think step by step.
```

- ChatGTP Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level2.2.png" width = 600>
</p>

##### Level 3: Plotting a function.
- Prompt:
```ruby
Plot the function -3*(x-2)^2-5.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level3.2.png" width = 600>
</p>

In order to check if the answer is correct, we used the tool [Graphing Calculator](https://www.geogebra.org/graphing) and compared the graphs generated by both. As observed, they coincide:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level3.4.png" width = 600>
</p>

##### Level 4: Finding a minimum.
- Prompt:
```ruby
Find the minimum of the function f(x)=(x^2-x-2)/(x^2-6x+9).
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level4.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level4.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level4.3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level4.4.png" width = 600>
</p>

In order to check that the answers are correct, we will obtain the minimum using Wolfram Alpha. As observed, in both cases the minimum is correct (-9/16 = -0'5625).
- Wolfram Alpha:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level4.png" width = 600>
</p>

##### Level 5: Intersecting two functions.
- Prompt:
```ruby
Find the intersection points of the functions f(x)=|x-5| and g(x)=logx.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level5.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level5.2.png" width = 600>
</p>

In order to check if the answers are correct, we will check the graph:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level5.2.png" width = 600>
</p>

We can see that there are two intersection points, both expressed using the Lambert W function; the first intersection point is equal to 3'693 and the second one is 6'936. If we return above, we can see that ChatGPT got the same intersection points.

##### Level 6: Deriving a function.
- Prompt:
```ruby
What is the derivative of f(x)=5/(sqrt(3x-1))?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level6.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level6.2.png" width = 600>
</p>

As a way of checking that the answer is correct, we simply asked Wolfram Alpha to derive the function, and check if it coincides with the derivative obtained by ChatGPT. The solution of Wolfram Alpha is:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level6.png" width = 200>
</p>

##### Level 7: Integrating a function.
- Prompt:
```ruby
What is the integral of sin2xcos2x?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level7.png" width = 600>
</p>

For this level, to check if the answer is correct, we solved the integral using [Integral Calculator](https://www.integral-calculator.com/):
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level7.png" width = 500>
</p>

It coincides with the result given by ChatGPT.

##### Level 8: Mathematical Series.
- Prompt:
```ruby
Study the convergence of the infinite series starting from n equals 1 to infinity of the sum of the reciprocal of the product of n and n plus 1.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level8.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level8.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level8.3.png" width = 600>
</p>

The tool [Symbolab](https://www.symbolab.com/) was used to study the convergence of the proposed function. The series has a value of 1, which corresponds to the value obtained by ChatGPT:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level8.png" width = 600>
</p>

##### Level 9: Fourier transform.
- Prompt:
```ruby
Compute the Fourier transform of f(t)=cosω0t.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level9.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level9.2.png" width = 600>
</p>

For this problem, we used again [Symbolab](https://www.symbolab.com/) to compute the Fourier transform. After comparing it with the result obtained from ChatGPT,the solutions coincide:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level9.png" width = 600>
</p>

##### Level 10: Doing regression in some data.
- Prompt:
```ruby
The following table shows information regarding the sales of daily press in the year 1998, as the number of daily copies sold per thousand inhabitants in 8 autonomous Spanish regions. The sales are assumed to be related to economic activity levels as measured by the Gross Domestic Product (GDP) per inhabitant in thousands of euros (Source: INE. Anuario Estadistico).

GDP 8.3 9.7 10.7 11.7 12.4 15.4 16.3 17.2
Copies sold 57.4 106.8 104.4 131.9 144.6 146.4 177.4 186.9

Use least squares to estimate a simple regression model that explains the number of copies sold as a function of GDP per capita.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level10.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level10.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/Specific%20instructions/level10.3.png" width = 600>
</p>

#### General instructions
##### Level 11: Finding the area.
The example from below comes from this pdf: [Finding areas by integration](https://www.mathcentre.ac.uk/resources/uploaded/mc-ty-areas-2009-1.pdf).

- Prompt:
```ruby
Find the area bounded by the curve y = x^2 + x + 4, the x-axis and the ordinates x = 1 and x = 3.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level11.png" width = 600>
</p>

In this case, ChatGPT has correctly guessed that integrals are required to solve this problem. As indicated in the PDF, the solution is doing the integral of x^2+x+4 between 1 and 3. To check if the answers were correct, the platform [Integral Calculator](https://www.integral-calculator.com/) was used. As observed, the results coincide:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level11.png" width = 500>
</p>

##### Level 12: Predicting the range of a projectile.
- Prompt:
```ruby
A soccer player kicks a ball at an angle of 30 degrees to the horizontal. The initial speed of the ball is 20 meters per second. Assuming no air resistance and that the ball is kicked from ground level, predict how far the ball will travel horizontally before hitting the ground. Use the acceleration due to gravity as 9.8 m/s^2.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level12.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level12.2.png" width = 600>
</p>

The problem of this level was proposed by ChatGPT, and the solution coincides with the results obtained above:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.3.png" width = 600>
</p>

##### Level 13: Getting the best path from one node to another.
The example from below comes from this pdf: [Fundamental Algorithms 12 - Solution Examples](https://www7.in.tum.de/~kretinsk/teaching/fundamental%20algorithms/fundalg12sol.pdf).

- Prompt:
```ruby
Imagine I have a graph (with nodes s, s1, s2, s3, s4, s5, t), whose connections (with weights) are represented with the following adjacency matrix: ((0,1,3,0,0,0,0), (1,0,0,8,4,0,0), (3,0,0,0,3,0,0), (0,8,0,0,0,1,7), (0,4,3,0,0,1,0), (0,0,0,1,1,0,10),(0,0,0,7,0,10,0)). Obtain the shortest path from s to t.
Let's think step by step.
```
- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level13.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level13.2.png" width = 600>
</p>

If we were to check the solutions, we could see that the shortest path is `s, s1, s4, s5, s3, t`; contrary to the one proposed by ChatGPT.

##### Level 14: Predicting the next number in a complex sequence.
- Prompt:
```ruby
Consider the following sequence of numbers: 3, 8, 15, 24, 35, 48, ...Your task is to predict the next number in this sequence.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level14.png" width = 600>
</p>

The underlying sequence was perfectly discovered.

##### Level 15: Calculating the future value of an investment.
The example from below comes from this webpage: [Calculating the Future Value](https://ecampusontario.pressbooks.pub/businessfinancialmath/chapter/4-2-calculating-future-value/).

- Prompt:
```ruby
If you invested $5,000 for 10 years at 9% compounded quarterly, how much money would you have? What is the interest earned during the term?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level15.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level15.2.png" width = 600>
</p>

By checking the results, we can see that these coincide with the solutions. Hence, ChatGPT was able to understand that it was a compound interest problem.

##### Level 16: Deciphering a phrase knowing each letter was shifted by a certain number.
The example from below comes from the following PDF: [Caesar Cipher Decoding: Answer Key](https://s3.amazonaws.com/prod-hmhco-vmg-craftcms-public/CipherAnswers.pdf).

- Prompt:
```ruby
Decode this phrase "SERR CVMMN VA GUR PNSRGREVN" knowing that each letter was shifted by 13.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level16.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level16.2.png" width = 500>
</p>

This constitutes another problem that it solved correctly. After checking the solutions, we see that the deciphered message is "FREE PIZZA IN THE CAFETERIA". 

##### Level 17: Calculating the time it takes for an object to cool down to a certain temperature.
- Prompt:
```ruby
A freshly baked pie is taken out of the oven and left to cool in a room. The temperature of the oven was 200ºC, and the room temperature is a constant 25ºC. When the pie is first taken out, its temperature is 180ºC. After 20 minutes, the temperature of the pie drops to 100ºC. Calculate the time it takes for the pie to cool down to 50ºC.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level17.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level17.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level17.3.png" width = 600>
</p>

In this case, ChatGPT was able to solve this problem. It understood that it was a problem related to Newton's Law of Cooling, and successfully determined the cooling constant `k`.

##### Level 18: Calculating the work done in compressing a spring.
The example from below comes from the following YouTube video: [Work done by Spring Example](https://www.youtube.com/watch?v=uUgMK8wQAcU).

- Prompt:
```ruby
A person compresses a spring a distance of 5cm, which requires a force of 100N. How much work does the person do?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level18.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level18.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level18.3.png" width = 600>
</p>

In this case, ChatGPT **did not** fail to know that in order to find the work we must know the spring constant K. The result coincides with the solution, giving W=2'5J. 

##### Level 19: Computing the quantity a company should make for its inventory given production cost, demand rate, and other variables.
The example from below comes from the following webpage: [Economic Order Quantity (EOQ): Practical Problems and Solutions](https://www.financestrategists.com/accounting/cost-accounting/material-costing/economic-order-quantity-eoq-problems-and-solutions/).

- Prompt:
```ruby
The John Equipment Company estimates its carrying cost at 15% and its ordering cost at $9 per order. The estimated annual requirement is 48,000 units at a price of $4 per unit. What is the most economical number of units to order? How many orders should be placed in a year? How often should an order be placed?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level19.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level19.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level19.3.png" width = 600>
</p>

ChatGPT understood that it was an EOQ problem, so it proceeded correctly by using the EOQ formula from below. However, the answer to the last question (How often should an order be placed?) does not coincide with the solutions.

##### Level 20: Computing the orbital period.
The example from below comes from the following PDF: [Solutions to Physics I Gravity and Kepler’s Laws Practice Problems](https://www.lehman.edu/faculty/anchordoqui/101-P4_s.pdf).

- Prompt:
```ruby
Titan, the largest moon of Saturn, has a mean orbital radius of 1.22x109 m. The orbital period of Titan is 15.95 days. Hyperion, another moon of Saturn, orbits at a mean radius of 1.48x109 m. Predict the orbital period of Hyperion in days.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level20.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot-CoT/General%20instructions/level20.2.png" width = 600>
</p>

Finally, ChatGPT was again able to understand that we were dealing with Kepler's third law. By checking the solution from the PDF above, we see that the same result is obtained: the orbital period of Hyperion is 21.31 days.

##### Conclusions
In this case, it got all the answers correct for the problems of the `Specific instructions`.

| Level 1 | Level 2 | Level 3 | Level 4 | Level 5 | Level 6 | Level 7 | Level 8 | Level 9 | Level 10 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:--------:|
|    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |

For the section of `General instructions`, it struggled with **Level 13** (Getting the best path from one node to another) and **Level 19** (Computing the quantity a company should make for its inventory given production cost, demand rate, and other variables). Regarding the former, it may have not understood well the adjacency matrix, since it says that `s` is directly connected to `t` (which is not the case); in the other level, however, made the mistake of considering the working days and not all the days of the year.

| Level 11 | Level 12 | Level 13 | Level 14 | Level 15 | Level 16 | Level 17 | Level 18 | Level 19 | Level 20 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|    Pass    |    Pass    |    Fail    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Fail    |    Pass    |


## ChatGPT-4 (Wolfram Mathematica plugin off)
### Zero-shot prompting
#### Specific instructions
##### Level 1: Inverting a matrix.
- Prompt:
```ruby
Given the matrix A = [[1, -2, 1], [-2, 3, 1], [5, -7, -3]], find the inverse (A^-1).
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level1.png" width = 600>
</p>

The answer coincides with the solution.

##### Level 2: Generating normally distributed variables with a specific mean and variance.
- Prompt:
```ruby
Generate several normally distributed variables with mean=45.6 and variance=13.84.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level2.png" width = 600>
</p>

##### Level 3: Plotting a function.
- Prompt:
```ruby
Plot -3*(x-2)^2-5.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level3.png" width = 600>
</p>

In order to check if the answer is correct, we used the tool [Graphing Calculator](https://www.geogebra.org/graphing) and compared the graphs generated by both. As observed, they coincide:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level3.4.png" width = 600>
</p>

##### Level 4: Finding a minimum.
- Prompt:
```ruby
Find the minimum of the function f(x)=(x^2-x-2)/(x^2-6x+9).
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level4.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level4.2.png" width = 600>
</p>

To check that the answers are correct, we will obtain the minimum using Wolfram Alpha. As observed, in both cases the minimum is correct (-9/16 = -0'5625).
- Wolfram Alpha:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level4.png" width = 600>
</p>

##### Level 5: Intersecting two functions.
- Prompt:
```ruby
Find the intersection points of the functions f(x)=|x-5| and g(x)=logx.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level5.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level5.2.png" width = 600>
</p>

By checking the graph we can check if the answers are correct:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level5.2.png" width = 600>
</p>

We can see that there are two intersection points, both expressed using the Lambert W function; the first intersection point is equal to 3'693 and the second one is 6'936. If we return above, we can see that ChatGPT got the same intersection points.

##### Level 6: Deriving a function.
- Prompt:
```ruby
What is the derivative of f(x)=5/(sqrt(3x-1))?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level6.png" width = 600>
</p>

As a way of checking that the answer is correct, we simply asked Wolfram Alpha to derive the function, and check if it coincides with the derivative obtained by ChatGPT. The solution of Wolfram Alpha is:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level6.png" width = 200>
</p>

##### Level 7: Integrating a function.
- Prompt:
```ruby
What is the integral of sin2xcos2x?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level7.png" width = 600>
</p>

For this level, to check if the answer is correct, we solved the integral using [Integral Calculator](https://www.integral-calculator.com/):
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level7.png" width = 500>
</p>

It coincides with the result given by ChatGPT.

##### Level 8: Mathematical Series.
- Prompt:
```ruby
Study the convergence of the infinite series starting from n equals 1 to infinity of the sum of the reciprocal of the product of n and n plus 1.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level8.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level8.2.png" width = 600>
</p>

The tool [Symbolab](https://www.symbolab.com/) was used to study the convergence of the proposed function. The series has a value of 1, which corresponds to the value obtained by ChatGPT:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level8.png" width = 600>
</p>

##### Level 9: Fourier transform.
- Prompt:
```ruby
Compute the Fourier transform of f(t)=cosω0t.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level9.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level9.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level9.3.png" width = 600>
</p>

For this problem, we used again [Symbolab](https://www.symbolab.com/) to compute the Fourier transform. After comparing it with the result obtained from ChatGPT,the solutions coincide:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level9.png" width = 600>
</p>

##### Level 10: Doing regression in some data.
- Prompt:
```ruby
The following table shows information regarding the sales of daily press in the year 1998, as the number of daily copies sold per thousand inhabitants in 8 autonomous Spanish regions. The sales are assumed to be related to economic activity levels as measured by the Gross Domestic Product (GDP) per inhabitant in thousands of euros (Source: INE. Anuario Estadistico).

GDP 8.3 9.7 10.7 11.7 12.4 15.4 16.3 17.2
Copies sold 57.4 106.8 104.4 131.9 144.6 146.4 177.4 186.9

Use least squares to estimate a simple regression model that explains the number of copies
sold as a function of GDP per capita
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level10.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level10.2.png" width = 600>
</p>

#### General instructions
##### Level 11: Finding the area (requires knowing that an integral must be used).
The example from below comes from this pdf: [Finding areas by integration](https://www.mathcentre.ac.uk/resources/uploaded/mc-ty-areas-2009-1.pdf).

- Prompt:
```ruby
Find the area bounded by the curve y = x^2 + x + 4, the x-axis and the ordinates x = 1 and x = 3.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level11.png" width = 600>
</p>

In this case, ChatGPT has correctly guessed that integrals are required to solve this problem. As indicated in the PDF, the solution is doing the integral of x^2+x+4 between 1 and 3. To check if the answers were correct, the platform [Integral Calculator](https://www.integral-calculator.com/) was used. As observed, the results coincide:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level11.png" width = 500>
</p>

##### Level 12: Predicting the range of a projectile (requires knowing that kinematic equations must be used).
- Prompt:
```ruby
A soccer player kicks a ball at an angle of 30 degrees to the horizontal. The initial speed of the ball is 20 meters per second. Assuming no air resistance and that the ball is kicked from ground level, predict how far the ball will travel horizontally before hitting the ground. Use the acceleration due to gravity as 9.8 m/s^2.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level12.png" width = 600>
</p>

The problem of this level was proposed by ChatGPT, and the solution coincides with the results obtained above:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.3.png" width = 600>
</p>

##### Level 13: Getting the best path from one node to another (requires knowing that Dijkstra's algorithm must be used).
The example from below comes from this pdf: [Fundamental Algorithms 12 - Solution Examples](https://www7.in.tum.de/~kretinsk/teaching/fundamental%20algorithms/fundalg12sol.pdf).

- Prompt:
```ruby
Imagine I have a graph (with nodes s, s1, s2, s3, s4, s5, t), whose connections (with weights) are represented with the following adjacency matrix: ((0,1,3,0,0,0,0), (1,0,0,8,4,0,0), (3,0,0,0,3,0,0), (0,8,0,0,0,1,7), (0,4,3,0,0,1,0), (0,0,0,1,1,0,10),(0,0,0,7,0,10,0)). Obtain the shortest path from s to t.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level13.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level13.2.png" width = 600>
</p>

If we were to check the solutions, we could see that the shortest path is `s, s1, s4, s5, s3, t`; it coincides to the one proposed by ChatGPT.

##### Level 14: Predicting the next number in a complex sequence (requires recognizing and applying the underlying pattern or mathematical rule governing the sequence).
- Prompt:
```ruby
Consider the following sequence of numbers: 3, 8, 15, 24, 35, 48, ...Your task is to predict the next number in this sequence.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level14.png" width = 600>
</p>

The underlying sequence was perfectly discovered.

##### Level 15: Calculating the future value of an investment (requires understanding and applying the compound interest formula).
The example from below comes from this webpage: [Calculating the Future Value](https://ecampusontario.pressbooks.pub/businessfinancialmath/chapter/4-2-calculating-future-value/).

- Prompt:
```ruby
If you invested $5,000 for 10 years at 9% compounded quarterly, how much money would you have? What is the interest earned during the term?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level15.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level15.2.png" width = 600>
</p>

By checking the results, we can see that these coincide with the solutions.

##### Level 16: Deciphering a phrase knowing each letter was shifted by a certain number (requires knowing that we are talking about Caesar's cipher decoding).
The example from below comes from the following PDF: [Caesar Cipher Decoding: Answer Key](https://s3.amazonaws.com/prod-hmhco-vmg-craftcms-public/CipherAnswers.pdf).

- Prompt:
```ruby
Decode this phrase "SERR CVMMN VA GUR PNSRGREVN" knowing that each letter was shifted by 13.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level16.png" width = 600>
</p>

This constitutes another problem that it solved correctly. After checking the solutions, we see that the deciphered message is "FREE PIZZA IN THE CAFETERIA". 

##### Level 17: Calculating the time it takes for an object to cool down to a certain temperature (requires the use of Newton's Law of Cooling, which often involves solving differential equations).
- Prompt:
```ruby
A freshly baked pie is taken out of the oven and left to cool in a room. The temperature of the oven was 200ºC, and the room temperature is a constant 25ºC. When the pie is first taken out, its temperature is 180ºC. After 20 minutes, the temperature of the pie drops to 100ºC. Calculate the time it takes for the pie to cool down to 50ºC.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level17.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level17.2.png" width = 600>
</p>

In this case, ChatGPT was able to solve this problem. It understood that it was a problem related to Newton's Law of Cooling, and successfully determined the cooling constant `k`.

##### Level 18: Calculating the work done in compressing a spring (requires knowing Hooke's Law)
The example from below comes from the following YouTube video: [Work done by Spring Example](https://www.youtube.com/watch?v=uUgMK8wQAcU).

- Prompt:
```ruby
A person compresses a spring a distance of 5cm, which requires a force of 100N. How much work does the person do?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level18.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level18.2.png" width = 600>
</p>

In this case, the result coincides with the solution too, giving W=2'5J. 

##### Level 19: Computing the quantity a company should make for its inventory given production cost, demand rate, and other variables (requires understanding EOQ).
The example from below comes from the following webpage: [Economic Order Quantity (EOQ): Practical Problems and Solutions](https://www.financestrategists.com/accounting/cost-accounting/material-costing/economic-order-quantity-eoq-problems-and-solutions/).

- Prompt:
```ruby
The John Equipment Company estimates its carrying cost at 15% and its ordering cost at $9 per order. The estimated annual requirement is 48,000 units at a price of $4 per unit. What is the most economical number of units to order? How many orders should be placed in a year? How often should an order be placed?
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level19.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level19.2.png" width = 600>
</p>

Now all of the questions were correctly solved (even the last one).

##### Level 20: Computing the orbital period (requires knowing Kepler’s third law of planetary motion).
The example from below comes from the following PDF: [Solutions to Physics I Gravity and Kepler’s Laws Practice Problems](https://www.lehman.edu/faculty/anchordoqui/101-P4_s.pdf).

- Prompt:
```ruby
Titan, the largest moon of Saturn, has a mean orbital radius of 1.22x109 m. The orbital period of Titan is 15.95 days. Hyperion, another moon of Saturn, orbits at a mean radius of 1.48x109 m. Predict the orbital period of Hyperion in days.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level20.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot/level20.2.png" width = 600>
</p>

 By checking the solution from the PDF above, we see that the same result is obtained: 21.31 days.

#### Conclusions
Regarding these experiments, all were successfully solved.

| Level 1 | Level 2 | Level 3 | Level 4 | Level 5 | Level 6 | Level 7 | Level 8 | Level 9 | Level 10 | Level 11 | Level 12 | Level 13 | Level 14 | Level 15 | Level 16 | Level 17 | Level 18 | Level 19 | Level 20 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |

### Zero-shot-CoT prompting
#### Specific instructions
##### Level 1: Inverting a matrix.
In this case, we will consider a matrix from this PDF: [Inverse Matrices](https://web.viu.ca/pughg/Spring2006/math152S0602/homework8.pdf).
- Prompt:
```ruby
Given the matrix A = [[1, -2, 1], [-2, 3, 1], [5, -7, -3]], find the inverse (A^-1).
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level1.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level1.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level1.3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level1.4.png" width = 600>
</p>

The answer is correct, since it coincides with the solution of the PDF.

##### Level 2: Generating normally distributed variables with a specific mean and variance.
- Prompt:
```ruby
Generate several normally distributed variables with mean=45.6 and variance=13.84.
Let's think step by step.
```

- ChatGTP Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level2.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level2.3.png" width = 600>
</p>

If we were to check how ChatGPT generated these values, we can simply click on the analysis button at the end of the answer:
```ruby
# Number of variables to generate
num_variables = 1000

# Generating normally distributed variables
normally_distributed_vars = np.random.normal(mean, standard_deviation, num_variables)
normally_distributed_vars[:10]  # Displaying the first 10 values for reference
```

It used the command `np.random.normal(mean, standard_deviation, num_variables)` from the NumPy library. It generates random numbers based on the normal (Gaussian) distribution. Here's what each parameter means:
1. **mean**: This is the mean (or average) value of the normal distribution. 
2. **standard_deviation**: This is the standard deviation of the normal distribution, which determines how spread out the values are around the mean. 
3. **num_variables**: This parameter specifies the number of random variables you want to generate from this distribution.

For example, if you wanted to generate 5 random numbers from a normal distribution with a mean of 0 and a standard deviation of 1, you would use `np.random.normal(0, 1, 5)`. This might give you an array of numbers like `[-0.23, 0.45, 0.68, -1.23, 0.10]`. Each of these numbers is a random draw from a normal distribution centered around 0, with most values falling within one standard deviation (1 in this case) of the mean.

##### Level 3: Plotting a function.
- Prompt:
```ruby
Plot the function -3*(x-2)^2-5.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level3.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level3.3.png" width = 600>
</p>

In order to check if the answer is correct, we used the tool [Graphing Calculator](https://www.geogebra.org/graphing) and compared the graphs generated by both. As observed, they coincide:
Graphing Calculator        |  ChatGPT
:-------------------------:|:-------------------------:
![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level3.4.png)  |  ![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level3.2.png)

##### Level 4: Finding a minimum.
- Prompt:
```ruby
Find the minimum of the function f(x)=(x^2-x-2)/(x^2-6x+9).
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level4.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level4.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level4.3.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level4.4.png" width = 600>
</p>

In order to check that the answers are correct, we will obtain the minimum using Wolfram Alpha. As observed, in both cases the minimum is correct (-9/16 = -0'5625).
- Wolfram Alpha:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level4.png" width = 600>
</p>

##### Level 5: Intersecting two functions.
- Prompt:
```ruby
Find the intersection points of the functions f(x)=|x-5| and g(x)=logx.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level5.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level5.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level5.3.png" width = 600>
</p>

In order to check if the answers are correct, we will check the graph:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level5.2.png" width = 600>
</p>

We can see that there are two intersection points, both expressed using the Lambert W function; the first intersection point is equal to 3'693 and the second one is 6'936. If we return above, we can see that ChatGPT got the same intersection points.

##### Level 6: Deriving a function.
- Prompt:
```ruby
What is the derivative of f(x)=5/(sqrt(3x-1))?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level6.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level6.2.png" width = 600>
</p>

As a way of checking that the answer is correct, we simply asked Wolfram Alpha to derive the function, and check if it coincides with the derivative obtained by ChatGPT. The solution of Wolfram Alpha is:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level6.png" width = 200>
</p>


##### Level 7: Integrating a function.
- Prompt:
```ruby
What is the integral of sin2xcos2x?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level7.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level7.2.png" width = 600>
</p>

For this level, to check if the answer is correct, we solved the integral using [Integral Calculator](https://www.integral-calculator.com/):
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level7.png" width = 500>
</p>

It coincides with the result given by ChatGPT.

##### Level 8: Mathematical Series.
- Prompt:
```ruby
Study the convergence of the infinite series starting from n equals 1 to infinity of the sum of the reciprocal of the product of n and n plus 1.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level8.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level8.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level8.3.png" width = 600>
</p>

The tool [Symbolab](https://www.symbolab.com/) was used to study the convergence of the proposed function. The series has a value of 1, which corresponds to the value obtained by ChatGPT:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level8.png" width = 600>
</p>

##### Level 9: Fourier transform.
- Prompt:
```ruby
Compute the Fourier transform of f(t)=cosω0t.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level9.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level9.2.png" width = 600>
</p>

For this problem, we used again [Symbolab](https://www.symbolab.com/) to compute the Fourier transform. After comparing it with the result obtained from ChatGPT,the solutions coincide:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/Specific%20instructions/Proofs/proof_level9.png" width = 600>
</p>

##### Level 10: Doing regression in some data.
- Prompt:
```ruby
The following table shows information regarding the sales of daily press in the year 1998, as the number of daily copies sold per thousand inhabitants in 8 autonomous Spanish regions. The sales are assumed to be related to economic activity levels as measured by the Gross Domestic Product (GDP) per inhabitant in thousands of euros (Source: INE. Anuario Estadistico).

GDP 8.3 9.7 10.7 11.7 12.4 15.4 16.3 17.2
Copies sold 57.4 106.8 104.4 131.9 144.6 146.4 177.4 186.9

Use least squares to estimate a simple regression model that explains the number of copies sold as a function of GDP per capita.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level10.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level10.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level10.3.png" width = 600>
</p>

#### General instructions
##### Level 11: Finding the area.
The example from below comes from this pdf: [Finding areas by integration](https://www.mathcentre.ac.uk/resources/uploaded/mc-ty-areas-2009-1.pdf).

- Prompt:
```ruby
Find the area bounded by the curve y = x^2 + x + 4, the x-axis and the ordinates x = 1 and x = 3.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level11.png" width = 600>
</p>

In this case, ChatGPT has correctly guessed that integrals are required to solve this problem. As indicated in the PDF, the solution is doing the integral of x^2+x+4 between 1 and 3. To check if the answers were correct, the platform [Integral Calculator](https://www.integral-calculator.com/) was used. As observed, the results coincide:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level11.png" width = 500>
</p>

##### Level 12: Predicting the range of a projectile.
- Prompt:
```ruby
A soccer player kicks a ball at an angle of 30 degrees to the horizontal. The initial speed of the ball is 20 meters per second. Assuming no air resistance and that the ball is kicked from ground level, predict how far the ball will travel horizontally before hitting the ground. Use the acceleration due to gravity as 9.8 m/s^2.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level12.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level12.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level12.3.png" width = 600>
</p>

The problem of this level was proposed by ChatGPT, and the solution coincides with the results obtained above:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-on/Zero-shot/General%20instructions/Proofs/proof_level12.3.png" width = 600>
</p>

##### Level 13: Getting the best path from one node to another.
The example from below comes from this pdf: [Fundamental Algorithms 12 - Solution Examples](https://www7.in.tum.de/~kretinsk/teaching/fundamental%20algorithms/fundalg12sol.pdf).

- Prompt:
```ruby
Imagine I have a graph (with nodes s, s1, s2, s3, s4, s5, t), whose connections (with weights) are represented with the following adjacency matrix: ((0,1,3,0,0,0,0), (1,0,0,8,4,0,0), (3,0,0,0,3,0,0), (0,8,0,0,0,1,7), (0,4,3,0,0,1,0), (0,0,0,1,1,0,10),(0,0,0,7,0,10,0)). Obtain the shortest path from s to t.
Let's think step by step.
```
- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level13.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level13.2.png" width = 600>
</p>

If we were to check the solutions, we could see that the shortest path is `s, s1, s4, s5, s3, t`; as the one proposed by ChatGPT.

##### Level 14: Predicting the next number in a complex sequence.
- Prompt:
```ruby
Consider the following sequence of numbers: 3, 8, 15, 24, 35, 48, ...Your task is to predict the next number in this sequence.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level14.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level14.2.png" width = 600>
</p>

The underlying sequence was perfectly discovered.

##### Level 15: Calculating the future value of an investment.
The example from below comes from this webpage: [Calculating the Future Value](https://ecampusontario.pressbooks.pub/businessfinancialmath/chapter/4-2-calculating-future-value/).

- Prompt:
```ruby
If you invested $5,000 for 10 years at 9% compounded quarterly, how much money would you have? What is the interest earned during the term?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level15.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level15.2.png" width = 600>
</p>

By checking the results, we can see that these coincide with the solutions. Hence, ChatGPT was able to understand that it was a compound interest problem.

##### Level 16: Deciphering a phrase knowing each letter was shifted by a certain number.
The example from below comes from the following PDF: [Caesar Cipher Decoding: Answer Key](https://s3.amazonaws.com/prod-hmhco-vmg-craftcms-public/CipherAnswers.pdf).

- Prompt:
```ruby
Decode this phrase "SERR CVMMN VA GUR PNSRGREVN" knowing that each letter was shifted by 13.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level16.png" width = 600>
</p>

This constitutes another problem that it solved correctly. After checking the solutions, we see that the deciphered message is "FREE PIZZA IN THE CAFETERIA". 

##### Level 17: Calculating the time it takes for an object to cool down to a certain temperature.
- Prompt:
```ruby
A freshly baked pie is taken out of the oven and left to cool in a room. The temperature of the oven was 200ºC, and the room temperature is a constant 25ºC. When the pie is first taken out, its temperature is 180ºC. After 20 minutes, the temperature of the pie drops to 100ºC. Calculate the time it takes for the pie to cool down to 50ºC.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level17.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level17.2.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level17.3.png" width = 600>
</p>

In this case, ChatGPT was unable to solve this problem. Even though it understood that it was a problem related to Newton's Law of Cooling, it couldn't determine the cooling constant `k`.

##### Level 18: Calculating the work done in compressing a spring.
The example from below comes from the following YouTube video: [Work done by Spring Example](https://www.youtube.com/watch?v=uUgMK8wQAcU).

- Prompt:
```ruby
A person compresses a spring a distance of 5cm, which requires a force of 100N. How much work does the person do?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level18.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level18.2.png" width = 600>
</p>

In this case, ChatGPT **did not** fail to know that in order to find the work we must know the spring constant K. The result coincides with the solution, giving W=2'5J. 

##### Level 19: Computing the quantity a company should make for its inventory given production cost, demand rate, and other variables.
The example from below comes from the following webpage: [Economic Order Quantity (EOQ): Practical Problems and Solutions](https://www.financestrategists.com/accounting/cost-accounting/material-costing/economic-order-quantity-eoq-problems-and-solutions/).

- Prompt:
```ruby
The John Equipment Company estimates its carrying cost at 15% and its ordering cost at $9 per order. The estimated annual requirement is 48,000 units at a price of $4 per unit. What is the most economical number of units to order? How many orders should be placed in a year? How often should an order be placed?
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level19.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level19.2.png" width = 600>
</p>

ChatGPT understood that it was an EOQ problem, so it proceeded correctly by using the EOQ formula from below. However, the answer to the last question (How often should an order be placed?) does not coincide with the solutions.

##### Level 20: Computing the orbital period.
The example from below comes from the following PDF: [Solutions to Physics I Gravity and Kepler’s Laws Practice Problems](https://www.lehman.edu/faculty/anchordoqui/101-P4_s.pdf).

- Prompt:
```ruby
Titan, the largest moon of Saturn, has a mean orbital radius of 1.22x109 m. The orbital period of Titan is 15.95 days. Hyperion, another moon of Saturn, orbits at a mean radius of 1.48x109 m. Predict the orbital period of Hyperion in days.
Let's think step by step.
```

- ChatGPT Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level20.png" width = 600>
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/ChatGPT-4/wolfram-off/Zero-shot-CoT/level20.2.png" width = 600>
</p>

Finally, ChatGPT was again able to understand that we were dealing with Kepler's third law. By checking the solution from the PDF above, we see that the same result is obtained: the orbital period of Hyperion is 21.31 days.

##### Conclusions
In this last part of the project, we have seen that ChatGPT has performed quite well. Nonetheless, we must not forget that it couldn't solve two problems: **Level 17** (Calculating the time it takes for an object to cool down to a certain temperature) and **Level 19** (Computing the quantity a company should make for its inventory given production cost, demand rate, and other variables). Regarding the former, it couldn't get the cooling constant; in the latter, even though it answered two questions correctly, it wasn't able to answer the last one. Overall, 18/20 problems were solved successfully; and for each of them, ChatGPT gave specific steps on how to solve them.

|         | Level 1 | Level 2 | Level 3 | Level 4 | Level 5 | Level 6 | Level 7 | Level 8 | Level 9 | Level 10 | Level 11 | Level 12 | Level 13 | Level 14 | Level 15 | Level 16 | Level 17 | Level 18 | Level 19 | Level 20 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
| Zero-shot-CoT |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Fail    |    Pass    |    Fail    |    Pass    |
