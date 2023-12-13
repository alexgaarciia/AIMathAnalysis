# ChatGPTWolfram
## Introduction to the repository
The main goal of this repository is to provide information about how to use [ChatGPT](https://chat.openai.com/) and [Wolfram Mathematica](https://www.wolfram.com/mathematica/) together. In case any of these names seem unfamiliar, let me provide some basic definitions. **ChatGPT** is an AI language model designed to understand and generate human-like text based on the input it receives. **Wolfram Mathematica**, on the other hand, is a computing environment used for mathematical computation, algorithm development, data visualization, and symbolic manipulation, widely used in scientific, engineering, mathematical, and computing fields.


## How to combine ChatGPT & Wolfram Mathematica
1. Click on your current version of ChatGPT:
   <p align="center">
     <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Plugin installation/step1.png" alt="Step 1" width = 500/>
   </p>
2. Select "Plugins" from the dropdown:
   <p align="center">
     <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Plugin installation/step2.png" alt="Step 1" width = 300/>
   </p>
3. In case you do not have the Wolfram Mathematica plugin installed, click on the "No plugins installed" dropdown and click on "Plugin store":
   <p align="center">
     <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Plugin installation/step3.png" alt="Step 1" width = 300/>
   </p>
4. Search for Wolfram on the search tab and click on Install:
   <p align="center">
     <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Plugin installation/step4.png" alt="Step 1" width = 300/>
   </p>
5. Finally, select it in the plugins dropdown:
   <p align="center">
     <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Plugin installation/step5.png" alt="Step 1" width = 300/>
   </p>


## Interacting with Wolfram Mathematica
Combining ChatGPT and Wolfram Mathematica can be a powerful way to leverage the strengths of both platforms. ChatGPT is proficient in natural language processing and can handle a wide range of queries and tasks, while Wolfram Mathematica excels in computational mathematics, data analysis, and visualization. Here are a few ways to integrate them:
1. Automating Mathematica Scripts: ChatGPT can be used to create a user-friendly interface to create Mathematica scripts. Users can **describe in natural language** what they want to compute or analyze, and then ChatGPT will **translate** into a Mathematica script and execute it.
2. Data Anaylsis and Visualization: It can also be used to interpret and structure data analysis queries. After passing these structured queries, Mathematica can then perform complex data analysis and generate visualizations.
3. Algorithm Design: Combining them for algorithm development can be achieved by using ChatGPT for initial brainstorming and pseudocode generation, and then translating these ideas into Mathematica's powerful computational language for detailed analysis and visualization.


## Networking graphs
One of our main goals is to check if, given a specific network, we can **find the shortest path** from one router to another using Wolfram Mathematica. Later on, we might want to try to ask ChatGPT to transform the generated code into R code.

### Step 1: Generate the network.
To begin with, we will try to generate a 5-router network by providing the following adjacency matrix (1 means there is connection, otherwise 0):
|         | State 1 | State 2 | State 3 | State 4 | State 5 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
| State 1 |    0    |    1    |    1    |    0    |    0    |
| State 2 |    1    |    0    |    1    |    1    |    0    |
| State 3 |    1    |    1    |    0    |    0    |    1    |
| State 4 |    0    |    1    |    0    |    0    |    1    |
| State 5 |    0    |    0    |    1    |    1    |    0    |

In the following picture we can observe the answer of ChatGPT after having give the specifications:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/answer1.png" width = 650>
</p>

Moreover, we asked ChatGPT to run the generated output on Wolfram Mathematica, and we can check that the output was correctly generated:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/answer1.1.png" width = 650>
</p>

### Step 2: Assigning distance, load and BeR values to the links.
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

### Step 3: Choosing the best path.
In this last part of the experiment, we will try to get the best path from one router to another. To do this, there is a key aspect that must be provided, which is the metric by which we are going to know if a path is preferrable to another. This metric will take into account aspects along the lines of:

- Propagation delay: We will penalize 5us for each kilometer in the fiber.
- Transmission queue delay: We will penalize 1us for each 1/(1-load).
- BeR penalty: If BeR >= 10^-4 and Ber <= 1, we will assign a penalty of 1000us; If BeR > 10^-5 and BeR < 10^-4, the penalty will be of 50us; Otherwise, there is no penalty (0us).

Finally, once this was specified, we asked ChatGPT the code that he would use to compute the best path from router 2 to router 4:
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

### Extra step: Getting an R equivalent of the code.
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
### Important functions
Before ending this section, it would be worth mentioning key functions that made the code simpler and efficient:
1. WeightedAdjacencyGraph: creates a graph from the given matrix, where non-zero elements represent the weights of edges between nodes. The position of a non-zero element in the matrix corresponds to the nodes it connects. For example, a non-zero element at the (i, j) position of the matrix would represent an edge with a certain weight between nodes i and j.
2. FindShortestPath: The basic usage is FindShortestPath[graph, start, end], where graph is a graph object, and start and end are the nodes between which you want to find the shortest path.


## Prompting Wolfram Mathematica with ChatGPT
One of our other objetives is to find how much we can do with text only. In order to do this, we would like to discover the correct manner of prompting Wolfram. We have seen before that this plugin is highly powerful, being able to solve an entire network problem itself. However, what if we could do it in fewer steps, just by correctly prompting it?

### Available resources
First off, we would like to know if there are already some investigations/guides in this regard. We found out that there are no specific texts on the most efficient way of prompting Wolfram Mathematica with ChatGPT. However, there is an interesting introduction to using the plugin in the offical Wolfram webpage: [Plugin de Wolfram para ChatGPT](https://www.wolfram.com/wolfram-plugin-chatgpt/). This link is from the official webpage of Wolfram. It provides an installation guide and some applications of it and, at the end of the page, there is a link about [using the Wolfram Plugin for ChatGPT](https://www.youtube.com/watch?v=EOQV9VakBgE&ab_channel=Wolfram), where several prompts are carried out.

**Note that the only resources that are close to talking about prompting the plugin are YouTube videos.**


## Experiments
In order to _test how much we can do by simply giving text as input_, we provided some mathematical problems with varying difficulty, and therefore asked to translate the code to any other programming language such as R or Python (the "translated codes" can be found [here](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/mathexperiments.R)).

There will be two different sections of experiments. The very first one will be very specific about what we want to do, and the second one will try to show how much we can do without being very specific. For example, instead of asking ChatGPT to solve an integral in a range (specific instructions), we could ask to obtain the area and check if it knows that an integral must be computed (general instructions). With this, we are trying to solve two main questions: Does ChatGPT require background thinking? How much we can do without being very specific?

### Specific instructions.
#### Level 1: Inventing and inverting a matrix.
- Prompt:
```ruby
### I will provide you some mathematical problems to solve with Wolfram Mathematica and I want you to (1) return the code that you would use in Wolfram Mathematica and the output after passing that code to Wolfram Mathematica, and (2) an equivalent of that code into R ###

Problem: Invent a matrix with random values and show it. Then, invert it.

Answer:
```

- Wolfram Mathematica Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments1.png" width = 600>
</p>

- Equivalent R Code:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments1.2.png" width = 600>
</p>

#### Level 2: Generating normally distributed variables with a specific mean and variance.
- Prompt:
```ruby
### I will provide you some mathematical problems to solve with Wolfram Mathematica and I want you to (1) return the code that you would use in Wolfram Mathematica and the output after passing that code to Wolfram Mathematica, and (2) an equivalent of that code into R ###

Problem: Generate several normally distributed variables with mean=45.6 and variance=13.84.

Answer:
```

- Wolfram Mathematica Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments2.png" width = 600>
</p>

- Equivalent R Code:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments2.2.png" width = 600>
</p>

#### Level 3: Plotting a function.
- Prompt:
```ruby
### I will provide you some mathematical problems to solve with Wolfram Mathematica and I want you to (1) return the code that you would use in Wolfram Mathematica and the output after passing that code to Wolfram Mathematica, and (2) an equivalent of that code into R ###

Problem: Plot -3*(x-2)^2-5.

Answer:
```

- Wolfram Mathematica Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments3.png" width = 600>
</p>

- Equivalent R Code:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments3.2.png" width = 600>
</p>

#### Level 4: Finding a minimum.
- Prompt:
```ruby
### I will provide you some mathematical problems to solve with Wolfram Mathematica and I want you to (1) return the code that you would use in Wolfram Mathematica and the output after passing that code to Wolfram Mathematica, and (2) an equivalent of that code into R ###

Problem: Find the minimum of the function f(x)=(x^2-x-2)/(x^2-6x+9).

Answer:
```

- Wolfram Mathematica Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments4.png" width = 600>
</p>

- Equivalent R Code:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments4.2.png" width = 600>
</p>

#### Level 5: Intersecting two functions.
- Prompt:
```ruby
### I will provide you some mathematical problems to solve with Wolfram Mathematica and I want you to (1) return the code that you would use in Wolfram Mathematica and the output after passing that code to Wolfram Mathematica, and (2) an equivalent of that code into R ###

Problem: Find the intersection points of the functions f(x)=|x-5| and g(x)=logx.

Answer:
```

- Wolfram Mathematica Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments5.png" width = 600>
</p>

- Equivalent R Code:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments5.2.png" width = 600>
</p>

#### Level 6: Deriving a function.
- Prompt:
```ruby
### I will provide you some mathematical problems to solve with Wolfram Mathematica and I want you to (1) return the code that you would use in Wolfram Mathematica and the output after passing that code to Wolfram Mathematica, and (2) an equivalent of that code into R ###

Problem: What is the derivative of f(x)=5/(sqrt(3x-1))?

Answer:
```

- Wolfram Mathematica Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments6.png" width = 600>
</p>

- Equivalent R Code:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments6.2.png" width = 600>
</p>

#### Level 7: Integrating a function.
- Prompt:
```ruby
### I will provide you some mathematical problems to solve with Wolfram Mathematica and I want you to (1) return the code that you would use in Wolfram Mathematica and the output after passing that code to Wolfram Mathematica, and (2) an equivalent of that code into R ###

Problem: What is the integral of sin2xcos2x?

Answer:
```

- Wolfram Mathematica Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments7.png" width = 600>
</p>

- Equivalent R Code:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments7.2.png" width = 600>
</p>

#### Level 8: Mathematical Series.
- Prompt:
```ruby
### I will provide you some mathematical problems to solve with Wolfram Mathematica and I want you to (1) return the code that you would use in Wolfram Mathematica and the output after passing that code to Wolfram Mathematica, and (2) an equivalent of that code into R ###

Problem: Study the convergence of the infinite series starting from n equals 1 to infinity of the sum of the reciprocal of the product of n and n plus 1.

Answer:
```

- Wolfram Mathematica Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments8.png" width = 600>
</p>

- Equivalent R Code:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments8.2.png" width = 600>
</p>

#### Level 9: Fourier transform.
- Prompt:
```ruby
### I will provide you some mathematical problems to solve with Wolfram Mathematica and I want you to (1) return the code that you would use in Wolfram Mathematica and the output after passing that code to Wolfram Mathematica, and (2) an equivalent of that code into R ###

Problem: Compute the Fourier transform of f(t)=cosω0t.

Answer:
```

- Wolfram Mathematica Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments9.png" width = 600>
</p>

- Equivalent R Code:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments9.2.png" width = 600>
</p>

#### Level 10: Doing regression in some data.
- Prompt:
```ruby
### I will provide you some mathematical problems to solve with Wolfram Mathematica and I want you to (1) return the code that you would use in Wolfram Mathematica and the output after passing that code to Wolfram Mathematica, and (2) an equivalent of that code into R ###

Problem: The following table shows information regarding the sales of daily press in the year 1998, as the number of daily copies sold per thousand inhabitants in 8 autonomous Spanish regions. The sales are assumed to be related to economic activity levels as measured by the Gross Domestic Product (GDP) per inhabitant in thousands of euros (Source: INE. Anuario Estadistico).

GDP 8.3 9.7 10.7 11.7 12.4 15.4 16.3 17.2
Copies sold 57.4 106.8 104.4 131.9 144.6 146.4 177.4 186.9

Use least squares to estimate a simple regression model that explains the number of copies
sold as a function of GDP per capita

Answer:
```

- Wolfram Mathematica Output:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments10.png" width = 600>
</p>

- Equivalent R Code:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments10.2.png" width = 600>
</p>

#### Conclusions
We have seen that even though most of the answers were correct, there were two specific ones with which it struggled: **Level 5** (Intersecting two functions) and **Level 7** (Integrating a function). The main reason why this may be happening is due to the "complexity" of the functions provided. The former contained an absolute value and the latter was an integral that required a "u" substitution. Overall, a lot can be done by simply using text as input. 

However, here are some proven results of levels that require it, and a table summarizing them:
- Level 1: In order to check if a matrix was correctly inverted, we just need to multiply the original matrix with the inverse matrix. We should obtain the identity matrix. In both cases we have checked that it is correct, as can be seen in the images below.

Wolfram Mathematica        |  R
:-------------------------:|:-------------------------:
![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Proofs/proof_level1.png)  |  ![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Proofs/proof_level1.2.png)


- Level 2: What we can do in this case is generating variables in Wolfram Mathematica and RStudio, and check the results. As may be observed below, even though in both cases the means and variances are not the expected ones, we must note that this is due to the nature of random sampling from a distribution. This randomness can lead to samples that don't perfectly reflect the underlying distribution, especially with smaller sample sizes.

Wolfram Mathematica        |  R
:-------------------------:|:-------------------------:
![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Proofs/proof_level2.png)  |  ![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Proofs/proof_level2.2.png)

- Level 3: No need of proof, both platforms represent correctly the function.

Wolfram Mathematica        |  R
:-------------------------:|:-------------------------:
![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Proofs/proof_level3.png)  |  ![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Proofs/proof_level3.2.png)

- Level 4: In order to check that the answers are correct, we will obtain the minimum using Wolfram Alpha. Moreover, we will compare it to the result obtained in Wolfram Mathematica and R. As observed, in both cases the minimum is correct (-9/16 = -0'5625).

Wolfram Mathematica        |  R
:-------------------------:|:-------------------------:
![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Proofs/proof_level4.png)  |  ![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Proofs/proof_level4.2.png)

- Level 5: As we have seen in the solutions given by Wolfram Mathematica, we may think the answers are wrong because instead of giving a number, it gives the Lambert W function. However, let's check two things: the solution given by Wolfram Alpha and the graph:

Wolfram Alpha        |  Graph
:-------------------:|:-------------------:
![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Proofs/proof_level5.png)  |  ![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Proofs/proof_level5.2.png)

We can see that the former returns two intersection points. Both are expressed using the Lambert W function; the first intersection point is equal to 3'693 and the second one is 6'936. If we return above, where we prompt ChatGPT in Level 5, we see that the answer was, in the end, correct, but it only returns one of the intersection points. What about R? This one, on the other hand, was able to return both intersection points:

<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Proofs/proof_level5.3.png" width = 400>
</p>

- Level 6: As a way of checking that the answers were correct, we simply ask Wolfram Alpha to derive the function, and check if it coincides with derivatives obtained in Level 6. The solution of Wolfram Alpha is:
<p align = "center">
   <img src="https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Proofs/proof_level6.png" width = 200>
</p>

This answer is the same that we obtained in Level 6:

Wolfram Mathematica        |  R
:-------------------------:|:-------------------------:
![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/experiments6.png)  |  ![](https://github.com/alexgaarciia/ChatGPTWolfram/blob/main/images/Proofs/proof_level6.2.png)

- Level 7: 

Wolfram Mathematica        |  R
:-------------------------:|:-------------------------:

- Level 8: 

Wolfram Mathematica        |  R
:-------------------------:|:-------------------------:

- Level 9: 

Wolfram Mathematica        |  R
:-------------------------:|:-------------------------:

- Level 10: 

Wolfram Mathematica        |  R
:-------------------------:|:-------------------------:


|         | Level 1 | Level 2 | Level 3 | Level 4 | Level 5 | Level 6 | Level 7 | Level 8 | Level 9 | Level 10 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
| Wolfram Mathematica |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    -    |    -    |    -    |    -    |
| R  |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    Pass    |    -    |    -    |    -    |    -    |



### General instructions
