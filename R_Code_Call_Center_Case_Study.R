# Bilingual Decision variables, Constraints and Objective Function to reflect scheduling for bi-lingual agents. 

func= function(x) 120*x[1]+120*x[2]+120*x[3]+(60*x[4]+90*x[4])+(60*x[5]+90*x[5])+(60*x[6]+90*x[6])+180*x[7] #part 1 function

p0=c(7, 15, 12, 18, 12, 6, 2)

#Constraints Function
Inequalities=function(x){
  h=0
  h[1]=6*x[1]-40                         # 6x1e >= 40
  h[2]=6*x[2]-85                         # 6x2e >= 85
  h[3]=6*(x[1]+x[3])-70                 # 6(X1e + X3e) >= 70
  h[4]=6*(x[2]+x[4])-95                 # 6(X2e + X4e) >= 95
  h[5]=6*(x[3]+x[5]+x[6])-80            # 6(X3e + X5e + XP1) >= 80
  h[6]=6*x[4]+4*(x[6]+x[7])-35         # 6(X4e) + 4(XP1 + XP2) >= 35
  h[7]=6*x[5]+4*(x[6]+x[7])-10         # 6(X5e) + 4(XP1 + XP2) ≥ 10
  
  #Non-negativity Constraints
  h[8]=x[1]
  h[9]=x[2]
  h[10]=x[3]
  h[11]=x[4]
  h[12]=x[5]
  h[13]=x[6]
  h[14]=x[7]
  
  
  return(h)
  
}

y=constrOptim.nl(p0, func, hin=Inequalities )
print(y$par)
print(y$value)

# Print the optimized values
cat("Optimized values:\n")
for (i in 1:7) {
  cat(paste0("x[", i, "] = ", y$par[i], "\n"))
}

# Spanish Decision variables, Constraints and Objective Function to reflect scheduling for Spanish agents.

func= function(x) 120*x[1]+120*x[2]+120*x[3]+(60*x[4]+90*x[4])+(60*x[5]+90*x[5])+180*x[6]+90*x[7] #part 2 function

p0=c(1.5, 3, 2.5, 3.5, 3, 1.5, 0.5)

#Constraints Function
Inequalities=function(x){
  h=0
  h[1]=6*x[1]-8                    # 6x1s >= 8
  h[2]=6*x[2]-17                   # 6x2s >= 17
  h[3]=6*(x[1]+x[3])-14            # 6(X1s + X3s) >= 14
  h[4]=6*(x[2]+x[4])-19            # 6(X2s + X4s) >= 19
  h[5]=6*(x[3]+x[5])-16            # 6(X3s + X5s) >= 16
  h[6]=6*x[4]-7                    # 6(X4s) >= 7
  h[7]=6*x[5]-2                    # 6(X5s) ≥ 2
  
  #Non-negativity Constraints
  h[8]=x[1]
  h[9]=x[2]
  h[10]=x[3]
  h[11]=x[4]
  h[12]=x[5]
  h[13]=x[6]
  h[14]=x[7]
  
  
  return(h)
  
}

y=constrOptim.nl(p0, func, hin=Inequalities )
print(y$par)
print(y$value)


# English Decision variables, Constraints and Objective Function to reflect the updated objective function for an additional staffing scenario.

func= function(x) 120*x[1]+120*x[2]+120*x[3]+(60*x[4]+90*x[4])+(60*x[5]+90*x[5])+(60*x[6]+90*x[6])+180*x[7] #part 1 function

p0=c(5.5, 11.5, 9.5, 13, 11, 5, 2)

#Constraints Function
Inequalities=function(x){
  h=0
  h[1]=6*x[1]-32                         # 6x1e >= 32
  h[2]=6*x[2]-68                         # 6x2e >= 68
  h[3]=6*(x[1]+x[3])-56                 # 6(X1e + X3e) >= 56
  h[4]=6*(x[2]+x[4])-76                 # 6(X2e + X4e) >= 76
  h[5]=6*(x[3]+x[5]+x[6])-64            # 6(X3e + X5e + XP1) >= 64
  h[6]=6*x[4]+4*(x[6]+x[7])-28         # 6(X4e) + 4(XP1 + XP2) >= 28
  h[7]=6*x[5]+4*(x[6]+x[7])-10         # 6(X5e) + 4(XP1 + XP2) ≥ 10
  
  #Non-negativity Constraints
  h[8]=x[1]
  h[9]=x[2]
  h[10]=x[3]
  h[11]=x[4]
  h[12]=x[5]
  h[13]=x[6]
  h[14]=x[7]
  
  
  return(h)
  
}

y=constrOptim.nl(p0, func, hin=Inequalities )
print(y$par)
print(y$value)


# English Decision variables, Constraints, updated for new constraints to reflect full-time scheduling requirements.

func= function(x) 120*x[1]+120*x[2]+120*x[3]+(60*x[4]+90*x[4])+(60*x[5]+90*x[5])+(60*x[6]+90*x[6])+180*x[7] #part 1 function

p0=c(5.5, 16.5, 14.5, .95, .95, 9, 4)

#Constraints Function
Inequalities=function(x){
  h=0
  h[1]=6*x[1]-32                         # 6x1e >= 32
  h[2]=6*x[2]-68                         # 6x2e >= 68
  h[3]=6*(x[1]+x[3])-56                 # 6(X1e + X3e) >= 56
  h[4]=6*(x[2]+x[4])-76                 # 6(X2e + X4e) >= 76
  h[5]=6*(x[3]+x[5]+x[6])-64            # 6(X3e + X5e + XP1) >= 64
  h[6]=6*x[4]+4*(x[6]+x[7])-28         # 6(X4e) + 4(XP1 + XP2) >= 28
  h[7]=6*x[5]+4*(x[6]+x[7])-10         # 6(X5e) + 4(XP1 + XP2) ≥ 10
  h[15] = 1 - x[4]
  h[16] = 1 - x[5]
  
  #Non-negativity Constraints
  h[8]=x[1]
  h[9]=x[2]
  h[10]=x[3]
  h[11]=x[4]
  h[12]=x[5]
  h[13]=x[6]
  h[14]=x[7]
  
  
  return(h)
  
}

y=constrOptim.nl(p0, func, hin=Inequalities )
print(y$par)
print(y$value)

# Print the optimized values
cat("Optimized values:\n")
for (i in 1:7) {
  cat(paste0("x[", i, "] = ", y$par[i], "\n"))
}

