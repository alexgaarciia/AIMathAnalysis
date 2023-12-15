################################################################################
#                                FIND THE AREA 
################################################################################
f <- function(x) x^2 + x + 4
result <- integrate(f, 1, 3)
result$value


################################################################################
#                       PREDICT THE RANGE OF A PROJECTILE
################################################################################
v0 <- 20
theta <- 30
g <- 9.8
x <- (v0^2 * sin(2 * theta * pi/180)) / g
x


################################################################################
#                                 SHORTEST PATH
################################################################################
library(igraph)

# Create the graph
g <- graph_from_adjacency_matrix(matrix(c(0,1,3,0,0,0,0, 
                                          1,0,0,8,4,0,0, 
                                          3,0,0,0,3,0,0, 
                                          0,8,0,0,0,1,7, 
                                          0,4,3,0,0,1,0, 
                                          0,0,0,1,1,0,10,
                                          0,0,0,7,0,10,0), 
                                        nrow=7, ncol=7, byrow=TRUE), 
                                 mode="undirected")

# Set the names of the vertices
V(g)$name <- c("s", "s1", "s2", "s3", "s4", "s5", "t")

# Find the shortest path
path <- shortest_paths(g, from="s", to="t")$vpath[[1]]
V(g)$name[path]


################################################################################
#                 PREDICTING THE BEST NUMBER IN A COMPLEX SEQUENCE
################################################################################
n <- 7
next_number <- 2*n + n^2
next_number


################################################################################
#                          FUTURE VALUE OF AN INVESTMENT
################################################################################
# Calculating the future value:
principal <- 5000
rate <- 0.09
periods <- 4 * 10
future_value <- principal * (1 + rate/4)^periods
future_value

# Calculating the interest earned:
interest_earned <- future_value - principal
interest_earned


################################################################################
#                                DECODING A PHRASE
################################################################################
decode_caesar <- function(text, shift) {
  alphabet <- letters
  shifted_alphabet <- c(alphabet[(shift+1):length(alphabet)], alphabet[1:shift])
  char_list <- strsplit(tolower(text), "")[[1]]
  decoded <- sapply(char_list, function(char) {
    if (char %in% alphabet) {
      return(shifted_alphabet[which(alphabet == char)])
    } else {
      return(char)
    }
  })
  return(paste(decoded, collapse = ""))
}

decoded_text <- decode_caesar("SERR CVMMN VA GUR PNSRGREVN", 13)
decoded_text


################################################################################
#   COMPUTING HOW MUCH IT TAKES FOR AN OBJECT TO COOLD DOWN TO A CERTAIN TEMP
################################################################################
cooling_function <- function(t, k) {
  T_room <- 25
  T_initial <- 180
  T_room + (T_initial - T_room) * exp(-k * t)
}

# Use optimization to find k based on the condition after 20 minutes
optimize(function(k) abs(cooling_function(20, k) - 100), c(0, 1))$minimum -> k_opt

# Find the time t when the temperature reaches 50ºC
optimize(function(t) abs(cooling_function(t, k_opt) - 50), c(0, 100))$minimum


################################################################################
#              CALCULATING THE WORK DONE IN COMPRESSING A STRING
################################################################################
Force <- 100    # Force in Newtons
Distance <- 0.05  # Distance in meters (5cm)
WorkDone <- Force * Distance
WorkDone


################################################################################
#                                      EOQ
################################################################################
# Calculating the most economical number of units to order:
AnnualDemand <- 48000
OrderCost <- 9
CarryingCostRate <- 0.15
UnitCost <- 4
EconomicOrderQuantity <- sqrt((2 * AnnualDemand * OrderCost) / (CarryingCostRate * UnitCost))
EconomicOrderQuantity

# Calculating the number of orders to place in a year:
NumberOfOrders <- AnnualDemand / EconomicOrderQuantity
NumberOfOrders

# Calculating how often an order should be placed:
OrderFrequency <- 365 / NumberOfOrders
OrderFrequency


################################################################################
#                        COMPUTING THE ORBITAL PERIOD
################################################################################
OrbitalPeriodTitan <- 15.95
OrbitalRadiusTitan <- 1.22 * 10^9
OrbitalRadiusHyperion <- 1.48 * 10^9

OrbitalPeriodHyperion <- sqrt((OrbitalPeriodTitan^2 * OrbitalRadiusHyperion^3) / OrbitalRadiusTitan^3)
OrbitalPeriodHyperion
