# "Probability and Statistics with Examples using R" by Siva Athreya, Deepayan Sarkar, and Steve Tanner

# ==============================================================================
# Section 1.3: Conditional Probability and Bayes' Theorem
# ==============================================================================

# Example 1.3.1: Tossing a Fair Coin Three Times
# Problem: Find P(two or more heads | head in first toss)
cat("--- Example 1.3.1 ---\n")
P_A_and_B <- 3 / 8 # P(A intersect B)
P_B <- 4 / 8       # P(B)
P_A_given_B <- P_A_and_B / P_B
cat("P(A | B) for coin tosses:", P_A_given_B, "\n\n")

# Example 1.3.3: Rolling Two Dice
# Problem: Find P(other die shows 6 | one die shows 4)
cat("--- Example 1.3.3 ---\n")
P_A_and_B <- 2 / 36
P_B <- 11 / 36
P_A_given_B <- P_A_and_B / P_B
cat("P(other die shows 6 | one die shows 4):", P_A_given_B, "\n\n")

# Example 1.3.4: Unemployment and Interest Rates
# Problem: Calculate the probability that unemployment will increase.
cat("--- Example 1.3.4 ---\n")
P_B <- 0.4
P_Bc <- 0.6
P_A_given_B <- 0.6
P_A_given_Bc <- 0.3
P_A <- (P_A_given_B * P_B) + (P_A_given_Bc * P_Bc)
cat("P(Unemployment increases):", P_A, "\n\n")

# Example 1.3.6: Balls in Boxes
# Problem: How likely is it that a red ball is drawn?
cat("--- Example 1.3.6 ---\n")
P_B1 <- 1/3
P_B2 <- 1/3
P_B3 <- 1/3
P_R_given_B1 <- 4/12
P_R_given_B2 <- 3/8
P_R_given_B3 <- 3/10
P_R_ex1.3.6 <- (P_R_given_B1 * P_B1) + (P_R_given_B2 * P_B2) + (P_R_given_B3 * P_B3)
cat("P(Red ball drawn):", P_R_ex1.3.6, "\n\n")

# Example 1.3.7: Polya's Urn Scheme
# Problem: Show P(R2) = P(R1)
cat("--- Example 1.3.7 ---\n")
r <- 5 # initial red balls
b <- 3 # initial black balls
c_val <- 2 # balls added
P_R1 <- r / (r + b)
P_R2_given_R1 <- (r + c_val) / (r + b + c_val)
P_R2_given_B1 <- r / (r + b + c_val)
P_B1 <- b / (r + b)
P_R2 <- (P_R2_given_R1 * P_R1) + (P_R2_given_B1 * P_B1)
cat("P(R1):", P_R1, "\n")
cat("P(R2):", P_R2, "\n\n")

# Example 1.3.9: Student Selection
# Problem: Probability of selecting junior, sophomore, junior in that order.
cat("--- Example 1.3.9 ---\n")
P_A1 <- 8 / 15
P_A2_given_A1 <- 3 / 14
P_A3_given_A1_A2 <- 7 / 13
P_sequence <- P_A1 * P_A2_given_A1 * P_A3_given_A1_A2
cat("P(Junior, Sophomore, Junior):", P_sequence, "\n\n")

# Example 1.3.10: Bayes' Theorem - Balls in Boxes (Revisited)
# Problem: P(Box 3 | Red ball drawn)
cat("--- Example 1.3.10 ---\n")
P_R_given_B3 <- 3/10
P_B3 <- 1/3
# P_R is reused from Example 1.3.6, assuming it's the same context
P_B3_given_R <- (P_R_given_B3 * P_B3) / P_R_ex1.3.6
cat("P(Box 3 | Red ball drawn):", P_B3_given_R, "\n\n")

# Example 1.3.12: Swine Flu Test
# Problem: P(Shyam has Swine Flu | Tested positive)
cat("--- Example 1.3.12 ---\n")
P_B_given_A <- 0.95
P_B_given_Ac <- 0.02
P_A <- 0.01
P_Ac <- 1 - P_A
P_A_given_B <- (P_B_given_A * P_A) / ((P_B_given_A * P_A) + (P_B_given_Ac * P_Ac))
cat("P(Shyam has Swine Flu | Tested positive):", P_A_given_B, "\n\n")

# --- Exercises 1.3 ---

# Ex. 1.3.1: Red and Blue Dice
# Problem: (a) P(die shows 1), (b) P(die shows 6)
cat("--- Exercise 1.3.1 ---\n")
P_H <- 0.5
P_T <- 0.5
P_D1_given_H <- 1/6
P_D1_given_T <- 1/4
P_D1 <- (P_D1_given_H * P_H) + (P_D1_given_T * P_T)
cat("P(die shows 1):", P_D1, "\n")
P_D6_given_H <- 1/6
P_D6_given_T <- 0
P_D6 <- (P_D6_given_H * P_H) + (P_D6_given_T * P_T)
cat("P(die shows 6):", P_D6, "\n\n")

# Ex. 1.3.2: Pair of Dice, Sum Greater Than 7 Given One is 3
# Problem: P(sum > 7 | one die is 3)
cat("--- Exercise 1.3.2 ---\n")
P_A_and_B <- 4/36
P_B <- 11/36
P_A_given_B <- P_A_and_B / P_B
cat("P(sum > 7 | one die is 3):", P_A_given_B, "\n\n")

# Ex. 1.3.3: Balls in Box A and Box B
# Problem: (a) P(Box A | Black ball), (b) P(Black ball from Box B after transfer)
cat("--- Exercise 1.3.3 ---\n")
# Part (a)
P_A <- 0.5
P_B <- 0.5
P_Bl_given_A <- 3/7
P_Bl_given_B <- 5/8
P_Bl <- (P_Bl_given_A * P_A) + (P_Bl_given_B * P_B)
P_A_given_Bl <- (P_Bl_given_A * P_A) / P_Bl
cat("P(Box A | Black ball) (a):", P_A_given_Bl, "\n")
# Part (b)
P_WA <- 4/7
P_BA <- 3/7
P_BlB_given_WA <- 5/9
P_BlB_given_BA <- 6/9
P_BlB <- (P_BlB_given_WA * P_WA) + (P_BlB_given_BA * P_BA)
cat("P(Black ball from Box B after transfer) (b):", P_BlB, "\n\n")

# Ex. 1.3.4: Weather and Walking
# Problem: (a) P(Cloudy AND Walk > 5km), (b) P(Walk > 5km)
cat("--- Exercise 1.3.4 ---\n")
P_C <- 0.6
P_S <- 0.3
P_R <- 0.1
P_W_given_C <- 0.9
P_W_given_S <- 0.7
P_W_given_R <- 0
P_W5_given_W_and_C <- 0.8
P_W5_given_W_and_S <- 0.5
# Part (a)
P_W_and_C <- P_W_given_C * P_C
P_W5_and_C <- P_W5_given_W_and_C * P_W_and_C
cat("P(Cloudy AND Walk > 5km) (a):", P_W5_and_C, "\n")
# Part (b)
P_W5_given_C <- P_W5_given_W_and_C * P_W_given_C
P_W5_given_S <- P_W5_given_W_and_S * P_W_given_S
P_W5_given_R <- P_W5_given_W_given_R * P_W_given_R # This will be 0 * 0 = 0
P_W5 <- (P_W5_given_C * P_C) + (P_W5_given_S * P_S) + (P_W5_given_R * P_R)
cat("P(Walk > 5km) (b):", P_W5, "\n\n")

# Ex. 1.3.5: Drawing Balls Without Replacement
# Problem: Find P(A1), P(A2), P(A3)
cat("--- Exercise 1.3.5 ---\n")
W <- 5 # Example white balls
B <- 4 # Example black balls
Total <- W + B
P_A1 <- W / Total
P_A2_given_A1 <- (W - 1) / (Total - 1)
P_A2_given_Ac1 <- W / (Total - 1)
P_Ac1 <- B / Total
P_A2 <- (P_A2_given_A1 * P_A1) + (P_A2_given_Ac1 * P_Ac1)
P_A3 <- W / Total # Due to symmetry
cat("P(A1):", P_A1, "\n")
cat("P(A2):", P_A2, "\n")
cat("P(A3):", P_A3, "\n\n")

# Ex. 1.3.6: Constructing a Blue Card Set
# Problem: How to build blue set for equally likely outcomes 1, 2, 3.
cat("--- Exercise 1.3.6 ---\n")
P_C1_given_H <- 1/4
P_C2_given_H <- 2/4
P_C3_given_H <- 1/4
n1_B <- 5
n2_B <- 2
n3_B <- 5
N_B <- n1_B + n2_B + n3_B
P_C1_given_T <- n1_B / N_B
P_C2_given_T <- n2_B / N_B
P_C3_given_T <- n3_B / N_B
P_H <- 0.5
P_T <- 0.5
P_C1 <- (P_C1_given_H * P_H) + (P_C1_given_T * P_T)
P_C2 <- (P_C2_given_H * P_H) + (P_C2_given_T * P_T)
P_C3 <- (P_C3_given_H * P_H) + (P_C3_given_T * P_T)
cat("P(Card is 1) with proposed blue set:", P_C1, "\n")
cat("P(Card is 2) with proposed blue set:", P_C2, "\n")
cat("P(Card is 3) with proposed blue set:", P_C3, "\n\n")

# Ex. 1.3.7: Tables and Balls
# Problem: P(Table 1 | Red ball drawn)
cat("--- Exercise 1.3.7 ---\n")
P_T1 <- 1/3
P_T2 <- 1/3
P_T3 <- 1/3
P_R_given_T1 <- 1
P_R_given_T2 <- 0
P_R_given_T3 <- 1/2
P_R <- (P_R_given_T1 * P_T1) + (P_R_given_T2 * P_T2) + (P_R_given_T3 * P_T3)
P_T1_given_R <- (P_R_given_T1 * P_T1) / P_R
cat("P(Table 1 | Red ball drawn):", P_T1_given_R, "\n\n")

# Ex. 1.3.8: GRE Exam Question
# Problem: P(Knew answer | Correct)
cat("--- Exercise 1.3.8 ---\n")
P_K <- 3/4
P_Kc <- 1/4
P_C_given_K <- 1
P_C_given_Kc <- 1/4
P_C <- (P_C_given_K * P_K) + (P_C_given_Kc * P_Kc)
P_K_given_C <- (P_C_given_K * P_K) / P_C
cat("P(Knew answer | Correct):", P_K_given_C, "\n\n")

# Ex. 1.3.9: Die Roll and Coin Tosses
# Problem: P(Die showed 5 | 5 heads obtained)
cat("--- Exercise 1.3.9 ---\n")
P_Dk <- 1/6
choose_k_5 <- function(k) {
  if (k < 5) return(0)
  return(choose(k, 5))
}
P_H5_given_D <- sapply(1:6, function(k) choose_k_5(k) * (0.5)^k)
P_H5 <- sum(P_H5_given_D * P_Dk)
P_D5_given_H5 <- (P_H5_given_D[5] * P_Dk) / P_H5
cat("P(Die showed 5 | 5 heads):", P_D5_given_H5, "\n\n")

# Ex. 1.3.10: Hannah's Study Group
# Problem: Is it more likely the note came from Hannah A or Hannah B?
cat("--- Exercise 1.3.10 ---\n")
P_A <- 0.75
P_B <- 0.25
P_CS_given_A <- 0.2
P_CS_given_B <- 0.9
P_CS <- (P_CS_given_A * P_A) + (P_CS_given_B * P_B)
P_A_given_CS <- (P_CS_given_A * P_A) / P_CS
P_B_given_CS <- (P_CS_given_B * P_B) / P_CS
cat("P(Hannah A | Coffee Shop):", P_A_given_CS, "\n")
cat("P(Hannah B | Coffee Shop):", P_B_given_CS, "\n")
if (P_A_given_CS > P_B_given_CS) {
  cat("It is more likely the note came from Hannah A.\n\n")
} else {
  cat("It is more likely the note came from Hannah B.\n\n")
}

# Ex. 1.3.11: Countably Infinite Versions of Theorems
# Problem: State and prove countably infinite versions of Theorem 1.3.5 and 1.3.11.
cat("--- Exercise 1.3.11 ---\n")
cat("This exercise involves proofs, not direct R computations.\n")
cat("Proofs are provided in the previous detailed response.\n\n")

# Ex. 1.3.12: Biased Coins in a Bag
# Problem: (a) P(Biased | Head), (b) p=0, (c) p=0.5, (d) f(p) is increasing
cat("--- Exercise 1.3.12 ---\n")
f_p <- function(p) {
  (0.4 * p) / (0.3 + 0.4 * p)
}
cat("P(Biased | Head) when p=0 (b):", f_p(0), "\n")
cat("P(Biased | Head) when p=0.5 (c):", f_p(0.5), "\n")
# Part (d) - Plotting to visualize increasing function (uncomment to run plot)
# p_values <- seq(0, 1, by = 0.01)
# prob_biased_given_head <- f_p(p_values)
# plot(p_values, prob_biased_given_head, type = "l",
#      xlab = "Probability of Heads for Biased Coin (p)",
#      ylab = "P(Biased | Head)",
#      main = "P(Biased | Head) as a function of p",
#      col = "blue", lwd = 2)
# grid()
cat("Function f(p) is increasing (verified by derivative analysis, plot can be generated manually).\n\n")

# Ex. 1.3.13: Urn Scheme with Different Replacements
# Problem: (a) P(R2), (b) P(B2) if c=d, (c) P(Bn) if c=d, (d) P(Bn) if d=0
cat("--- Exercise 1.3.13 ---\n")
b <- 5 # black balls
r <- 3 # red balls
N <- b + r
# Part (a)
c_val_a <- 1
d_val_a <- 2
P_R1 <- r / N
P_B1 <- b / N
P_R2_given_R1 <- (r + c_val_a) / (N + c_val_a + d_val_a)
P_R2_given_B1 <- (r + d_val_a) / (N + c_val_a + d_val_a)
P_R2_a <- (P_R2_given_R1 * P_R1) + (P_R2_given_B1 * P_B1)
cat("P(R2) for c=1, d=2 (a):", P_R2_a, "\n")
# Part (b) and (c)
c_eq_d <- 1 # c = d = 1
P_B2_bc <- (b + c_eq_d) / (N + 2 * c_eq_d)
cat("P(B2) for c=d=1 (b):", P_B2_bc, "\n")
cat("P(Bn) for n>=2, c=d=1 (c):", P_B2_bc, "\n")
# Part (d)
c_val_d <- 1 # c > 0
d_val_d <- 0 # d = 0
P_B1_d <- b / N
P_B2_given_B1_d <- (b + c_val_d) / (N + c_val_d + d_val_d)
P_B2_given_R1_d <- b / (N + c_val_d + d_val_d)
P_B2_d <- (P_B2_given_B1_d * P_B1_d) + (P_B2_given_R1_d * P_R1)
cat("P(B2) for c=1, d=0 (d):", P_B2_d, "\n")
cat("P(Bn) for c=1, d=0 (should be b/N):", b/N, "\n\n")

# Ex. 1.3.14: Proof of Theorem 1.3.8
# Problem: Prove Theorem 1.3.8 for n=2, n=3, and generally by induction.
cat("--- Exercise 1.3.14 ---\n")
cat("This exercise involves proofs, not direct R computations.\n")
cat("Proofs are provided in the previous detailed response.\n\n")


# ==============================================================================
# Section 1.4: Independence
# ==============================================================================

# Example 1.4.1: Tossing a Coin Three Times (Revisited)
# Problem: Show A and B are independent.
cat("--- Example 1.4.1 ---\n")
P_A <- 4/8
P_B <- 4/8
P_A_and_B <- 2/8
is_independent <- (P_A_and_B == (P_A * P_B))
cat("Are A and B independent (Ex 1.4.1)?", is_independent, "\n\n")

# Example 1.4.3: Rolling a Die Twice
# Problem: Show E and F are independent.
cat("--- Example 1.4.3 ---\n")
P_E <- 6/36
P_F <- 6/36
P_E_and_F <- 1/36
is_independent <- (P_E_and_F == (P_E * P_F))
cat("Are E and F independent (Ex 1.4.3)?", is_independent, "\n\n")

# Example 1.4.4: Pairwise Independence vs. Mutual Independence
# Problem: Show A1, A2, A3 are pairwise independent but not mutually independent.
cat("--- Example 1.4.4 ---\n")
P_A1 <- 2/4
P_A2 <- 2/4
P_A3 <- 2/4
P_A1_and_A2 <- 1/4
P_A1_and_A3 <- 1/4
P_A2_and_A3 <- 1/4
P_A1_and_A2_and_A3 <- 1/4
pairwise_A1A2 <- (P_A1_and_A2 == (P_A1 * P_A2))
pairwise_A1A3 <- (P_A1_and_A3 == (P_A1 * P_A3))
pairwise_A2A3 <- (P_A2_and_A3 == (P_A2 * P_A3))
mutual_independent <- (P_A1_and_A2_and_A3 == (P_A1 * P_A2 * P_A3))
cat("A1 and A2 independent (Ex 1.4.4)?", pairwise_A1A2, "\n")
cat("A1 and A3 independent (Ex 1.4.4)?", pairwise_A1A3, "\n")
cat("A2 and A3 independent (Ex 1.4.4)?", pairwise_A2A3, "\n")
cat("A1, A2, A3 mutually independent (Ex 1.4.4)?", mutual_independent, "\n\n")

# --- Exercises 1.4 ---

# Ex. 1.4.1: Volleyball Tournament
# Problem: P(Pakistan meets Poland in final)
cat("--- Exercise 1.4.1 ---\n")
P_Pakistan_wins <- 1 - 0.6
P_Poland_wins <- 0.7
P_Pakistan_meets_Poland <- P_Pakistan_wins * P_Poland_wins
cat("P(Pakistan meets Poland):", P_Pakistan_meets_Poland, "\n\n")

# Ex. 1.4.2: Nut Radii
# Problem: (a) P(both between 49-51mm), (b) P(at least one > 51mm)
cat("--- Exercise 1.4.2 ---\n")
P_below_49 <- 0.15
P_above_51 <- 0.12
P_between_49_51 <- 1 - P_below_49 - P_above_51
P_both_between <- P_between_49_51 * P_between_49_51
cat("P(both between 49 and 51mm) (a):", P_both_between, "\n")
P_at_least_one_above_51 <- 1 - (1 - P_above_51)^2
cat("P(at least one above 51mm) (b):", P_at_least_one_above_51, "\n\n")

# Ex. 1.4.3: Tennis Tournament
# Problem: Probability each player wins the tournament.
cat("--- Exercise 1.4.3 ---\n")
P_A_D <- 0.40; P_D_A <- 1 - P_A_D
P_B_C <- 0.80; P_C_B <- 1 - P_B_C
P_A_B <- 0.30; P_B_A <- 1 - P_A_B
P_A_C <- 0.55; P_C_A <- 1 - P_A_C
P_B_D <- 0.45; P_D_B <- 1 - P_B_D
P_C_D <- 0.15; P_D_C <- 1 - P_C_D
P_A_R1 <- P_A_D
P_D_R1 <- P_D_A
P_B_R1 <- P_B_C
P_C_R1 <- P_C_B
P_A_wins_T <- P_A_R1 * (P_B_R1 * P_A_B + P_C_R1 * P_A_C)
P_B_wins_T <- P_B_R1 * (P_A_R1 * P_B_A + P_D_R1 * P_B_D)
P_C_wins_T <- P_C_R1 * (P_A_R1 * P_C_A + P_D_R1 * P_C_D)
P_D_wins_T <- P_D_R1 * (P_B_R1 * P_D_B + P_C_R1 * P_D_C)
cat("P(Avinash wins tournament):", P_A_wins_T, "\n")
cat("P(Ben wins tournament):", P_B_wins_T, "\n")
cat("P(Carlos wins tournament):", P_C_wins_T, "\n")
cat("P(David wins tournament):", P_D_wins_T, "\n")
total_prob <- P_A_wins_T + P_B_wins_T + P_C_wins_T + P_D_wins_T
cat("Sum of probabilities:", total_prob, "\n\n")

# Ex. 1.4.4: Intersection of Events
# Problem: (a) Max P(A intersect B), (b) Min P(A intersect B), (c) P(A intersect B) if independent
cat("--- Exercise 1.4.4 ---\n")
P_A_prob <- 0.8
P_B_prob <- 0.7
max_P_A_and_B <- min(P_A_prob, P_B_prob)
cat("Largest P(A intersect B) (a):", max_P_A_and_B, "\n")
min_P_A_and_B <- max(0, P_A_prob + P_B_prob - 1)
cat("Smallest P(A intersect B) (b):", min_P_A_and_B, "\n")
P_A_and_B_independent <- P_A_prob * P_B_prob
cat("P(A intersect B) if independent (c):", P_A_and_B_independent, "\n\n")

# Ex. 1.4.5: Independence with Dice Rolls
# Problem: Is E1 independent of F? Is E2 independent of F?
cat("--- Exercise 1.4.5 ---\n")
P_E1 <- 5/36
P_E2 <- 6/36
P_F <- 6/36
P_E1_and_F <- 1/36
is_E1_F_independent <- (P_E1_and_F == (P_E1 * P_F))
cat("Is E1 independent of F?:", is_E1_F_independent, "\n")
P_E2_and_F <- 1/36
is_E2_F_independent <- (P_E2_and_F == (P_E2 * P_F))
cat("Is E2 independent of F?:", is_E2_F_independent, "\n\n")

# Ex. 1.4.6: Mutual Independence Counterexample
# Problem: (a) P(A intersect B intersect C), (b) P(A)P(B)P(C), (c) Are they mutually independent?
cat("--- Exercise 1.4.6 ---\n")
Total_balls <- 27
P_Bl <- 1/Total_balls
P_G <- 8/Total_balls
P_R <- 8/Total_balls
P_Bu <- 8/Total_balls
P_A <- P_Bl + P_G
P_B <- P_Bl + P_R
P_C <- P_Bl + P_Bu
# Part (a)
P_A_and_B_and_C <- P_Bl
cat("P(A intersect B intersect C) (a):", P_A_and_B_and_C, "\n")
# Part (b)
P_A_times_P_B_times_P_C <- P_A * P_B * P_C
cat("P(A) * P(B) * P(C) (b):", P_A_times_P_B_times_P_C, "\n")
# Part (c) - Check pairwise independence
P_A_and_B <- P_Bl
pairwise_AB <- (P_A_and_B == (P_A * P_B))
cat("Are A and B pairwise independent (c)?", pairwise_AB, "\n")
if (!pairwise_AB) {
  cat("A, B, C are NOT mutually independent (because A and B are not independent).\n\n")
} else {
  cat("A, B, C are mutually independent.\n\n") # This path won't be taken for this problem
}

# Ex. 1.4.7: Probability Class Events
# Problem: (a) Show impossibility of mutual independence, (b) Example for pairwise independence
cat("--- Exercise 1.4.7 ---\n")
Total_students <- 150
N_A1 <- 90
N_A2 <- 60
N_A3 <- 30
P_A1 <- N_A1 / Total_students
P_A2 <- N_A2 / Total_students
P_A3 <- N_A3 / Total_students
# Part (a)
expected_N_A1_A2_A3 <- Total_students * P_A1 * P_A2 * P_A3
cat("Expected N(A1 intersect A2 intersect A3) if mutually independent (a):", expected_N_A1_A2_A3, "\n")
cat("Since this is not an integer, mutual independence is impossible.\n")
# Part (b) - Example counts for pairwise independence
n_A1_A2_A3 <- 6
n_A1_A2_Ac3 <- 30
n_A1_Ac2_A3 <- 12
n_A1_Ac2_Ac3 <- 42
n_Ac1_A2_A3 <- 6
n_Ac1_A2_Ac3 <- 18
n_Ac1_Ac2_A3 <- 6
n_Ac1_Ac2_Ac3 <- 30
P_A1_and_A2_check <- (n_A1_A2_A3 + n_A1_A2_Ac3) / Total_students
P_A1_and_A3_check <- (n_A1_A2_A3 + n_A1_Ac2_A3) / Total_students
P_A2_and_A3_check <- (n_A1_A2_A3 + n_Ac1_A2_A3) / Total_students
cat("P(A1 intersect A2) check (b):", P_A1_and_A2_check, "vs P(A1)*P(A2):", P_A1 * P_A2, "\n")
cat("P(A1 intersect A3) check (b):", P_A1_and_A3_check, "vs P(A1)*P(A3):", P_A1 * P_A3, "\n")
cat("P(A2 intersect A3) check (b):", P_A2_and_A3_check, "vs P(A2)*P(A3):", P_A2 * P_A3, "\n\n")

# Ex. 1.4.8: Event Independent of Itself
# Problem: Prove that A is independent of itself iff P(A)=0 or P(A)=1.
cat("--- Exercise 1.4.8 ---\n")
cat("This exercise involves proofs, not direct R computations.\n")
cat("Proofs are provided in the detailed response.\n\n")

# Ex. 1.4.9: Independence and Conditional Probability
# Problem: Explore relationships between independence and conditional probability.
cat("--- Exercise 1.4.9 ---\n")
cat("This exercise involves proofs, not direct R computations.\n")
cat("Proofs are provided in the detailed response.\n\n")

# Ex. 1.4.10: Mutual Independence and Subcollections
# Problem: Prove that if a collection of events is mutually independent, then so is any subcollection.
cat("--- Exercise 1.4.10 ---\n")
cat("This exercise involves proofs, not direct R computations.\n")
cat("Proofs are provided in the detailed response.\n\n")


# ==============================================================================
# Section 1.5: Using R for Computation
# ==============================================================================

# Ex. 1.5.1: Basic R Functions
# Problem: Output of sum, length, mean, var, sd, max, min, median for a vector x
cat("--- Exercise 1.5.1 ---\n")
x <- c(-15, -11, -4, 0, 7, 9, 16, 23)
cat("sum(x):", sum(x), "\n")
cat("length(x):", length(x), "\n")
cat("mean(x):", mean(x), "\n")
cat("var(x):", var(x), "\n")
cat("sd(x):", sd(x), "\n")
cat("max(x):", max(x), "\n")
cat("min(x):", min(x), "\n")
cat("median(x):", median(x), "\n\n")

# Ex. 1.5.2: Die Rolls and R Functions
# Problem: Output of sum, length, mean, var, sd, max, min, median for 10 die rolls
cat("--- Exercise 1.5.2 ---\n")
# Example die rolls (replace with your actual rolls)
x <- c(3, 1, 6, 2, 5, 4, 6, 1, 3, 5) 
cat("Your die rolls:", x, "\n")
cat("sum(x):", sum(x), "\n")
cat("length(x):", length(x), "\n")
cat("mean(x):", mean(x), "\n")
cat("var(x):", var(x), "\n")
cat("sd(x):", sd(x), "\n")
cat("max(x):", max(x), "\n")
cat("min(x):", min(x), "\n")
cat("median(x):", median(x), "\n\n")

# Ex. 1.5.3: Verify Example 1.2.4 Calculations
# Problem: Probability of at least one repeated letter in a 7-letter code.
cat("--- Exercise 1.5.3 ---\n")
total_codes <- 26^7
codes_no_repeat <- prod(26:(26-7+1))
prob_no_repeat <- codes_no_repeat / total_codes
prob_at_least_one_repeat <- 1 - prob_no_repeat
cat("Probability of at least one repeated letter:", prob_at_least_one_repeat, "\n\n")

# Ex. 1.5.4: Birthday Problem Calculations
# Problem: P(at least two shared birthday) for various N
cat("--- Exercise 1.5.4 ---\n")
prob_no_shared_birthday <- function(N) {
  if (N > 365) return(0)
  log_numerator <- sum(log(365:(365 - N + 1)))
  log_denominator <- N * log(365)
  prob_no_share <- exp(log_numerator - log_denominator)
  return(prob_no_share)
}
N_values <- c(10, 12, 17, 26, 34, 40, 41, 45, 75, 105)
results <- data.frame(N = N_values,
                      P_no_shared_birthday = numeric(length(N_values)),
                      P_at_least_one_shared_birthday = numeric(length(N_values)))
for (i in 1:length(N_values)) {
  N <- N_values[i]
  p_no_share <- prob_no_shared_birthday(N)
  results$P_no_shared_birthday[i] <- p_no_share
  results$P_at_least_one_shared_birthday[i] <- 1 - p_no_share
}
print(results)
cat("\n")

