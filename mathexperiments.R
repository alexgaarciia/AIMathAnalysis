################################################################################
#                      INVENTING AND INVERTING A MATRIX
################################################################################
# Create a random matrix
set.seed(123)  # Setting a seed for reproducibility
matrix <- matrix(runif(9), nrow = 3, ncol = 3)

# Show the matrix
matrix

# Invert the matrix
inverse_matrix <- solve(matrix)

# Show the inverse matrix
inverse_matrix


################################################################################
#         GENERATING RANDOM VARIABLES WITH SPECIFIC MEAN AND VARIANCE
################################################################################
rnorm(10, mean = 45.6, sd = sqrt(13.84))


################################################################################
#                             PLOTTING A FUNCTION
################################################################################
plot(curve(-3*(x - 2)^2 - 5, from = -10, to = 10), xlab = "x", ylab = "y")


################################################################################
#                             FINDING A MINIMUM
################################################################################
f <- function(x) (x^2 - x - 2) / (x^2 - 6*x + 9)
result <- optimize(f, c(-10, 10))  # Search in a reasonable range
result


################################################################################
#                          INTERSECTING TWO FUNCTIONS
################################################################################
library(rootSolve)
f <- function(x) abs(x - 5) - log(x)
intersect_points <- uniroot.all(f, c(0.001, 10))  # Search in a reasonable range
intersect_points


################################################################################
#                             DERIVING A FUNCTION
################################################################################
library(Deriv)
f <- function(x) 5 / sqrt(3 * x - 1)
f_prime <- Deriv(f)
f_prime  # This will show the expression of the derivative


################################################################################
#                           INTEGRATING A FUNCTION
################################################################################
f <- function(x) sin(2*x) * cos(2*x)
# Numerical integration over a specific interval, e.g., from 0 to pi
result <- integrate(f, lower = 0, upper = pi)
result$value


################################################################################
#                             MATHEMATICAL SERIES
################################################################################
series_sum <- function(N) {
  sum(1/(1:N * (1:N + 1)))
}

# Approximate the sum for a large N, e.g., N = 10000
approx_sum <- series_sum(10000)
approx_sum


################################################################################
#                             FOURIER TRANSFORM
################################################################################
library(signal)  # for the FFT function

# Define the parameters
ω_0 <- 1  # You can set this to any desired frequency
t <- seq(0, 10, length.out = 1000)  # time vector
f_t <- cos(ω_0 * t)  # function f(t)

# Compute the Fourier Transform
F_ω <- fft(f_t)

# Plotting the magnitude of the Fourier Transform
plot(abs(F_ω), type = 'l')


################################################################################
#                         DOING REGRESSION IN SOME DATA
################################################################################
# Data
GDP <- c(8.3, 9.7, 10.7, 11.7, 12.4, 15.4, 16.3, 17.2)
copies_sold <- c(57.4, 106.8, 104.4, 131.9, 144.6, 146.4, 177.4, 186.9)

# Linear regression
model <- lm(copies_sold ~ GDP)

# Display the model summary
summary(model)
