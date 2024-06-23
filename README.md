# ChatGPTWolfram
## Introduction to the repository
The main goal of this repository is to analyze how [ChatGPT](https://chat.openai.com/) and [Wolfram Mathematica](https://www.wolfram.com/mathematica/) can work together. In case any of these names seem unfamiliar, let us provide some basic definitions. **ChatGPT** is an AI language model designed to understand and generate human-like text based on the input it receives. **Wolfram Mathematica**, on the other hand, is a computing environment used for mathematical computation, algorithm development, data visualization, and symbolic manipulation, widely used in scientific, engineering, mathematical, and computing fields.


## How to use ChatGPT with Wolfram Mathematica
Combining ChatGPT and Wolfram Mathematica can be a powerful way to leverage the strengths of both platforms. ChatGPT is proficient in natural language processing and can handle a wide range of queries and tasks, while Wolfram Mathematica excels in computational mathematics, data analysis, and visualization. Here are a few ways to integrate them:
1. **Automating Mathematica Scripts**: ChatGPT can be used to create a user-friendly interface to create Mathematica scripts. Users can **describe in natural language** what they want to compute or analyze, and then ChatGPT will **translate** into a Mathematica script and execute it.
2. **Data Anaylsis and Visualization**: It can also be used to interpret and structure data analysis queries. After passing these structured queries, Mathematica can then perform complex data analysis and generate visualizations.
3. **Algorithm Design**: Combining them for algorithm development can be achieved by using ChatGPT for initial brainstorming and pseudocode generation, and then translating these ideas into Mathematica's powerful computational language for detailed analysis and visualization.

The Wolfram Mathematica plugin is only one of the many plugins available for ChatGPT plus. The following lists the instructions necessary to install this plugin:
1. Select your name in the bottom left, then choose settings.
2. Inside the settings menu, there should be a **Beta features** section which you can select and then enable plugins or browsing.
3. Click on your current version of ChatGPT.
4. Select **Plugins** from the dropdown.
5. In case you do not have the Wolfram Mathematica plugin installed, click on the **No plugins installed** dropdown and look for **Plugin store**.
6. Search for Wolfram on the search tab and click on **Install**.
7. Finally, select it from the plugins dropdown.


## Prompting Wolfram Mathematica with ChatGPT
In the rapidly evolving field of artificial intelligence, particularly in the domain of language models, "prompting" emerges as a pivotal concept. This term refers to the method of interacting with an AI language model by providing it with specific inputs (prompts), which guide the model in generating a desired output.

The goal of this project is to evaluate ChatGPT's ability to interpret and respond to prompts with varying levels of specificity, determining whether it requires detailed background context for effective problem-solving or if it can efficiently derive solutions from minimal information.

### What is a prompt?
A prompt is essentially an input statement or question given to an AI model. It acts as a catalyst that initiates the model's generation process, leading to a variety of potential outputs. Prompts can vary significantly in complexity, ranging from simple questions to detailed instructions or scenarios.

#### Prompting techniques
In the course of this repository, we focuse particularly on two advanced prompting techniques: **zero-shot learning** and **zero-shot chain of thought** (zero-shot-CoT). 
- Zero-shot learning: Zero-shot learning is a technique where the AI model responds to prompts without any prior specific training or examples related to that task. It relies on the model's pre-trained knowledge and its ability to generalize from that knowledge to new scenarios.
- Zero-shot-CoT: It constitutes a nuanced extension of the zero-shot technique. In this approach, the model is prompted to articulate its reasoning process step by step, leading to the final answer. This method not only sheds light on the model's decision-making process but also enhances the clarity and interpretability of its responses. To do this, the sentence "Let's think step by step" is added at the end of the prompt.

### Available resources
First off, we would like to know if there are already some investigations/guides in this regard. We found out that there are no specific texts on the most efficient way of prompting Wolfram Mathematica with ChatGPT. However, there is an interesting introduction to using the plugin in the offical Wolfram webpage: [Wolfram ChatGPT](https://www.wolfram.com/wolfram-plugin-chatgpt/index.php.en?source=footer). It provides an installation guide and some applications of it and, at the end of the page, there is a link about [using the Wolfram Plugin for ChatGPT](https://www.youtube.com/watch?v=EOQV9VakBgE&ab_channel=Wolfram), where several prompts are tested.

**Note that the only resources that are close to talking about prompting the plugin are YouTube videos.**


## Experiments
In order to test how much we can do by simply giving text as input, we provided some mathematical problems with varying difficulty. There will be three different sections of experiments, each corresponding to a different version of ChatGPT (ChatGPT-3.5, ChatGPT-4 (Wolfram Mathematica plugin on, ChatGPT-4 (Wolfram Mathematica plugin off). Note that ChatGPT-4 without the Wolfram Mathematica plugin, solves math problems using Python. It uses libraries like sympy, numpy, or even math.

Inside each, there will be two subsections for two different types of prompting: **Zero-shot learning** and **Zero-shot-CoT**. For each one, we will test their performance by being very specific about what we want to do and by not being specific about what we want to do.

That is, for example, instead of asking ChatGPT to solve an integral in a range (specific instructions), we could ask to obtain the area and check if it knows that an integral must be computed (general instructions). With this, we are trying to solve two main questions: Does ChatGPT require background thinking? How much we can do without being very specific?


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

By checking the results, we can see that the answer does not match the solution, but it is due to some approximations with a term of the formula. It solved it correctly.

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
|    Methodology-only    |    Methodology+Solution    |    Methodology+Solution    |    Methodology-only    |    Methodology-only    |    Methodology-only    |    Methodology-only    |    Methodology+Solution    |    Nothing    |    Methodology-only    |

For the case of **General instructions**, only 4 exercises were solved correctly.

| Level 11 | Level 12 | Level 13 | Level 14 | Level 15 | Level 16 | Level 17 | Level 18 | Level 19 | Level 20 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|    Methodology+Solution    |    Methodology+Solution    |    Methodology-only    |    Methodology+Solution    |    Methodology+Solution    |    Methodology-only    |    Nothing    |    Methodology-only    |    Methodology-only    |    Methodology+Solution    |

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

By checking the results, we can see that these do not coincide with the solutions, but it is due to the approximation in one of the terms of the formula. However, the problem is correct.

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
|    Methodology-only    |    Methodology+Solution    |    Methodology+Solution    |    Methodology-only    |    Methodology-only    |    Nothing    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology-only    |

As in the conclusions for the section of specific instructions, we have seen that only three levels where solved correctly under the **General instructions**:

| Level 11 | Level 12 | Level 13 | Level 14 | Level 15 | Level 16 | Level 17 | Level 18 | Level 19 | Level 20 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|    Methodology-only    |    Methodology-only    |    Methodology-only    |    Methodology+Solution    |    Methodology+Solution    |    Methodology-only    |    Methodology-only    |    Methodology-only    |    Methodology+Solution    |    Methodology+Solution    |


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
|    Solution-only    |    Solution-only    |    Solution-only    |    Solution-only    |    Solution-only    |    Solution-only    |    Solution-only    |    Solution-only    |    Solution-only    |    Solution-only    |

As for the section of **General instructions**, we have seen that the same happened except for **Level 19**, in which the last question was not correctly solved:

| Level 11 | Level 12 | Level 13 | Level 14 | Level 15 | Level 16 | Level 17 | Level 18 | Level 19 | Level 20 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|    Solution-only    |    Solution-only    |    Solution-only    |    Solution-only    |    Solution-only    |    Solution-only    |    Solution-only    |    Solution-only    |    Partial/Incorrect Solution    |    Solution-only    |

### Zero-Shot-CoT prompting
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
|    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |

For the section of `General instructions`, it struggled with **Level 13** (Getting the best path from one node to another) and **Level 19** (Computing the quantity a company should make for its inventory given production cost, demand rate, and other variables). Regarding the former, it may have not understood well the adjacency matrix, since it says that `s` is directly connected to `t` (which is not the case); in the other level, however, made the mistake of considering the working days and not all the days of the year.

| Level 11 | Level 12 | Level 13 | Level 14 | Level 15 | Level 16 | Level 17 | Level 18 | Level 19 | Level 20 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|    Methodology+Solution    |    Methodology+Solution    |    Partial/Incorrect Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Partial/Incorrect Solution    |    Methodology+Solution    |


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
|    Solution-only    |    Solution-only    |    Solution-only    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |

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

| Level 1 | Level 2 | Level 3 | Level 4 | Level 5 | Level 6 | Level 7 | Level 8 | Level 9 | Level 10 | Level 11 | Level 12 | Level 13 | Level 14 | Level 15 | Level 16 | Level 17 | Level 18 | Level 19 | Level 20 |
|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
|    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology+Solution    |    Methodology-only    |    Methodology+Solution    |    Partial/Incorrect Solution    |    Methodology+Solution    |


## Experiments with Gemini and LLaMA
To ensure our comparison extends beyond just ChatGPT, we conducted our experiments on Gemini and LLaMA as well. This approach allows us to provide a more comprehensive evaluation by including multiple AI models in our analysis, thereby avoiding any bias that may arise from focusing solely on ChatGPT. By examining the performance and capabilities of Gemini and LLaMA alongside ChatGPT, we aim to achieve a balanced and wide-ranging understanding of the current landscape of conversational AI technologies.

The results can be observed in the table from below:
| Level | Gemini Zero-shot | Gemini ZS-CoT | LLaMA Zero-shot | LLaMA ZS-CoT |
|-------|----------------|-------------|-----------------|--------------|
| 1     | S              | M+S         | Partial/Incorrect solution | Partial/Incorrect solution |
| 2     | S              | M+S         | S               | M            |
| 3     | M              | M           | S | M                          |
| 4     | Partial/Incorrect solution | Partial/Incorrect solution | Partial/Incorrect solution | Partial/Incorrect solution |
| 5     | Partial/Incorrect solution | M+S | Partial/Incorrect solution | Partial/Incorrect solution |
| 6     | Partial/Incorrect solution | Partial/Incorrect solution | Partial/Incorrect solution | Partial/Incorrect solution |
| 7     | Partial/Incorrect solution | M+S | Nothing | Partial/Incorrect solution |
| 8     | Partial/Incorrect solution | M+S | M+S | Partial/Incorrect solution |
| 9     | Partial/Incorrect solution | M+S | Partial/Incorrect solution | Partial/Incorrect solution |
| 10    | M              | M+S         | Partial/Incorrect solution | Partial/Incorrect solution |
| 11    | M+S            | Partial/Incorrect solution         | Partial/Incorrect solution | Partial/Incorrect solution |
| 12    | Partial/Incorrect solution | Partial/Incorrect solution | Partial/Incorrect solution | Partial/Incorrect solution |
| 13    | M+S            | M+S | Partial/Incorrect solution | Partial/Incorrect solution |
| 14    | M+S            | Nothing         | Partial/Incorrect solution | Partial/Incorrect solution |
| 15    | M+S            | M+S     | Partial/Incorrect solution | Partial/Incorrect solution |
| 16    | Partial/Incorrect solution | Partial/Incorrect solution    | Partial/Incorrect solution | Partial/Incorrect solution |
| 17    | Nothing        | M+S | M+S | Partial/Incorrect solution |
| 18    | Nothing        | M+S         | Partial/Incorrect solution | Partial/Incorrect solution |
| 19    | Partial/Incorrect solution | Partial/Incorrect Solution | Partial/Incorrect solution | Partial/Incorrect solution |
| 20    | Partial/Incorrect solution | M+S | Partial/Incorrect solution | Partial/Incorrect solution |

Here are some explanations for the results from above:
1. Gemini:
* Zero-shot Prompting:
   * Levels 4, 5, 6, 7, 12, 16, 19, 20: Correct methodology, errors in calculations.
   * Level 10: Methodology was correctly stated, but it said that `I cannot perform calculations without the specific data values`.
   * Level 17, 18: Gemini stated that there was missing information.
* Zero-shot-CoT Prompting:
   * Levels 3, 7, 11, 12, 16, 19: Correct methodology, errors in calculations.
   * Level 14: Gemini stated that there was missing information.
   * Level 18: Forgot to consider the spring constant.

2. LLaMA:
* Zero-shot Prompting:
   * Levels 1, 5, 6, 11, 12, 13, 15, 16, 18, 20: Correct methodology, errors in calculations.
   * Level 4: There wasn't a clear methodology, and the results were incorrect.
   * Level 7: Gave initial step and asks user to do it by itself.
   * Level 9, 19: Incorrect methodology, incorrect solution.
   * Level 10: Carried out the problem using R, but considered logarithmic data.
   * Level 14: Incorrectly guessed the sequence.
* Zero-shot-CoT Prompting:
   * Levels 1, 4, 10, 15, 16: Correct methodology, errors in calculations.
   * Levels 5, 6, 7, 9, 11, 12, 19, 20: Incorrect methodology, incorrect solution.
   * Level 8: Incorrect identification of the series (it is a telescopic series, not a harmonic series).
   * Level 13: Did not use Dijkstra's algorithm.
   * Level 14: Incorrectly guessed the sequence.
   * Level 17: Did not understand that we were dealing with Newton's Law of Cooling.
   * Level 18: Forgot to consider the spring constant.
 
### Overall Observations
Gemini tends to perform better with ZS-CoT prompting, indicating that providing a structured way to approach the problem helps improve the accuracy of the solutions. This is evident in the consistent improvement from solution-only (S) to methodology+solution (M+S) across various levels when using ZS-CoT.

LLaMA, similarly, shows varied performance across different levels and prompting methods. However, it seems to struggle more consistently than Gemini, especially with zero-shot prompting, where it often provides partial or incorrect solutions.

### Specific insights
1. Error Types:
- Both models exhibit a tendency to provide correct methodologies but falter in the execution, leading to errors in calculations. This suggests that while they can understand the problems conceptually, numerical precision or algorithmic execution is a common stumbling block.
- Gemini's zero-shot prompts frequently led to correct methodologies but included calculation errors, whereas its ZS-CoT prompts showed similar patterns but with occasional complete misses (e.g., forgetting a critical factor like the spring constant).
- LLaMA displayed a broader range of errors, including incorrect methodologies, especially under ZS-CoT prompting. This might indicate challenges in applying chain-of-thought reasoning effectively across all types of problems.

2. Performance by Level:
- Both models showed a decline in performance as the complexity of the problems increased, with levels 4, 5, 6, 12, 16, 19, and 20 frequently resulting in partial or incorrect solutions for both Gemini and LLaMA. This suggests a limit to their current capabilities in handling high-complexity or nuanced problem-solving without explicit guidance.
- Certain levels where Gemini improved from S to M+S under ZS-CoT prompting (e.g., levels 1, 2, 7, 8, 9, 10, 13, 17, 20) demonstrate the potential effectiveness of CoT in enhancing problem-solving abilities, particularly in providing complete solutions.

3. Notable Differences:
- Gemini's performance suggests a slightly better grasp on methodologies across a range of problem types, potentially due to differences in training data, model architecture, or both.
- LLaMA's challenges with CoT prompting across various problem types highlight the importance of model-specific tuning or adjustments to improve reasoning capabilities.


## Results
### Performance Comparison of ChatGPT Versions with Zero-shot-CoT (ZS-CoT) and Zero-shot Prompting
| Level | Problem                            | ChatGPT-3.5 Zero-shot | ChatGPT-3.5 ZS-CoT | ChatGPT-4 Zero-shot | ChatGPT-4 ZS-CoT | ChatGPT-4 + Wolfram Zero-shot | ChatGPT-4 + Wolfram ZS-CoT |
|-------|------------------------------------|-----------------------|-------------------|---------------------|-----------------|-------------------------------|---------------------------|
| 1     | Matrix inversion                   | M                     | M                 | S                   | M+S             | S                             | M+S                       |
| 2     | Normal Distribution Generation     | M+S                   | M+S               | S                   | M+S             | S                             | M+S                       |
| 3     | Function Plotting                  | M+S                   | M+S               | S                   | M+S             | S                             | M+S                       |
| 4     | Finding Minimum                    | M                     | M                 | M+S                 | M+S             | S                             | M+S                       |
| 5     | Function Intersection              | M                     | M                 | M+S                 | M+S             | S                             | M+S                       |
| 6     | Function Differentiation           | M                     | NA                | M+S                 | M+S             | S                             | M+S                       |
| 7     | Function Integration               | M                     | M+S               | M+S                 | M+S             | S                             | M+S                       |
| 8     | Series Convergence                 | M+S                   | M+S               | M+S                 | M+S             | S                             | M+S                       |
| 9     | Fourier Transform                  | NA                    | M+S               | M+S                 | M+S             | S                             | M+S                       |
| 10    | Data Regression                    | M                     | M                 | M+S                 | M+S             | S                             | M+S                       |
| 11    | Area Calculation                    | M+S                   | M                 | M+S                 | M+S             | S                             | M+S                       |
| 12    | Projectile Range Prediction        | M+S                   | M                 | M+S                 | M+S             | S                             | M+S                       |
| 13    | Shortest Path Finding              | M                     | M                 | M+S                 | M+S             | S                             | PI                        |
| 14    | Sequence Prediction                | M+S                   | M+S               | M+S                 | M+S             | S                             | M+S                       |
| 15    | Compound Interest Calculation      | M+S                   | M+S               | M+S                 | M+S             | S                             | M+S                       |
| 16    | Caesar's Cipher Decoding           | M                     | M                 | M+S                 | M+S             | S                             | M+S                       |
| 17    | Cooling Time Calculation           | NA                    | M                 | M+S                 | M               | S                             | M+S                       |
| 18    | Spring Compression Work            | M                     | M                 | M+S                 | M+S             | S                             | M+S                       |
| 19    | Inventory Optimization Analysis    | M                     | M+S               | M+S                 | PI              | PI                            | PI                        |
| 20    | Orbital Period Computation         | M+S                   | M+S               | M+S                 | M+S             | S                             | M+S                       |

 ### Performance Comparison of Gemini and LLaMA with Zero-shot-CoT (ZS-CoT) and Zero-shot Prompting
| Level | Problem                            | Gemini Zero-shot | Gemini ZS-CoT | LLaMA Zero-shot | LLaMA ZS-CoT |
|-------|------------------------------------|------------------|---------------|-----------------|--------------|
| 1     | Matrix inversion                   | S                | M+S           | PI              | PI           |
| 2     | Normal Distribution Generation     | S                | M+S           | S               | M            |
| 3     | Function Plotting                  | M                | M             | S               | M            |
| 4     | Finding Minimum                    | PI               | PI            | PI              | PI           |
| 5     | Function Intersection              | PI               | M+S           | PI              | PI           |
| 6     | Function Differentiation           | PI               | PI            | PI              | PI           |
| 7     | Function Integration               | PI               | M+S           | NA              | PI           |
| 8     | Series Convergence                 | PI               | M+S           | M+S             | PI           |
| 9     | Fourier Transform                  | PI               | M+S           | PI              | PI           |
| 10    | Data Regression                    | M                | M+S           | PI              | PI           |
| 11    | Area Calculation                   | M+S              | PI            | PI              | PI           |
| 12    | Projectile Range Prediction        | PI               | PI            | PI              | PI           |
| 13    | Shortest Path Finding              | M+S              | M+S           | PI              | PI           |
| 14    | Sequence Prediction                | M+S              | NA            | PI              | PI           |
| 15    | Compound Interest Calculation      | M+S              | M+S           | PI              | PI           |
| 16    | Caesar's Cipher Decoding           | PI               | PI            | PI              | PI           |
| 17    | Cooling Time Calculation           | NA               | M+S           | M+S             | PI           |
| 18    | Spring Compression Work            | NA               | M+S           | PI              | PI           |
| 19    | Inventory Optimization Analysis    | PI               | PI            | PI              | PI           |
| 20    | Orbital Period Computation         | PI               | M+S           | PI              | PI           |

These tables outline the results of all five LLMs used in the experiments: ChatGPT-v3.5, ChatGPT-v4, ChatGPT-v4 + Mathematica, Google Gemini and Meta LLaMA-2-70b. In each case, the LLMs are evaluated as:
- (NA) stands for Nothing.
- (PI) stands for Partial or Incorrect solution provided.
- (M) stands for (correct) Methodology only, where the LLM explains the theoretical background to solve the problem, but no solution is provided.
- (S) stands for (correct) Solution only, without any explanation about how it was obtained.
- (M+S) stands for both (correct) Methodology and Solution provided by the LLM.

The conclusions from our project, focusing on the performance of ChatGPT-3.5, ChatGPT-4 (with and without the Wolfram Mathematica plugin), Gemini, and LLaMA-2-70b can be articulated in the following paragraphs.

On the one hand, **ChatGPT-3.5** displayed a variable level of proficiency, particularly under the zero-shot prompting framework. It demonstrated partial success in specific instructions, handling some tasks with accuracy while struggling with others, particularly in complex mathematical problems. This performance indicated the model's capability to understand basic instructions and methodologies but also highlighted its limitations in executing detailed computational steps. In the zero-shot-CoT (Chain of Thought) prompting, there was a slight improvement, suggesting that the model benefits from a structured approach to problem-solving, particularly in breaking down complex tasks. However, even with this approach, the model faced challenges in fully executing procedures and providing accurate solutions in more complex scenarios.

On the other hand, the integration of the **Wolfram Mathematica plugin with ChatGPT-4** marked a significant advancement in the model's problem-solving abilities. Under zero-shot prompting, ChatGPT-4 showcased exceptional performance, successfully solving a wide range of mathematical tasks with specific instructions. This indicated a robust capability in handling computational and analytical problems, likely benefiting from the computational power of the plugin. Under the zero-shot-CoT framework, ChatGPT-4 continued to display strong capabilities, though it encountered some challenges in interpreting complex scenarios, particularly under general instructions. These instances highlighted that while external computational tools significantly enhance AI capabilities, \textit{understanding the nuances of complex problem statements remains an area for further development.}

Remarkably, **ChatGPT-4's performance without the external plugin** also demonstrated outstanding capabilities in handling a diverse array of mathematical problems. This was evident in both specific and general instructions under zero-shot prompting, where the model successfully tackled all tasks. This performance underscores the inherent strength of the model in understanding and addressing complex problems. With zero-shot-CoT prompting, although the model showed high proficiency in most tasks, it encountered difficulties in specific complex scenarios, particularly where advanced problem-solving strategies were required. This illustrates that while ChatGPT-4 is highly capable, there is room for improvement in its approach to certain complex and nuanced tasks.

Drawing conclusions from the performance evaluations of Gemini and LLaMA-2-70b in comparison to ChatGPT versions, the findings reveal distinct capabilities and limitations across these LLMs in handling complex problem-solving tasks under different prompting strategies.

Gemini exhibited strengths in certain areas but demonstrated consistent challenges with computational accuracy and a tendency to perceive missing information in prompts, which hindered its performance. This pattern was evident in both zero-shot and zero-shot-CoT (Chain of Thought) scenarios, indicating a need for improvement in Gemini's computational abilities and its understanding of provided instructions. Despite understanding the process correctly in several cases, Gemini's computational errors and occasional omission of key steps suggest that while its conceptual grasp is on the right track, its execution requires refinement.

LLaMA-2-70b showed a broader range of difficulties, particularly with zero-shot prompting, where it frequently provided partial or incorrect solutions. The issues ranged from calculation errors to incorrect methodologies and misunderstanding of problem statements, being these challenges were more pronounced under zero-shot-CoT prompting.


## Summary and Conclusions
This article has analysed the capabilities of different Large Language Models (GPT, Gemini and Bard) at solving different mathematical tasks. We observe that GPT-4 outperforms all others at these tasks. 

In particular, GPT-4 using zero-shot prompting performed equally well in the "Specific Instructions" category both with and without the Wolfram Mathematica plugin, achieving perfect scores. However, without the plugin, it performed better in the "General Instructions" category

When using GPT-4 with Chain-of-Thoughts prompting, both configurations performed perfectly in the "Specific Instructions" category. In the "General Instructions" category, ChatGPT-4 without the plugin again performed slightly better, solving 9/10 tasks correctly compared to 8/10 with the Mathematica plugin enabled.

Overall, ChatGPT-4 with and without the Wolfram Mathematica plugin demonstrated almost perfect performance at all the tasks used in the analysis. Gemini could solve a large number of tasks, especially when CoT prompting was used. Finally, LLaMA had difficulties at solving most of the Mathematical tasks.
