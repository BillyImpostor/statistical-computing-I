# Install Rcmdr
# install.packages("Rcmdr", dependencies = TRUE)
# library(Rcmdr)

# Dasar
list <- c("Billy", "Putra", "Antoni")
mat <- matrix(3:1, nrow=3, ncol=3)
print(mat)
print(list[2])

# Function For Loop
hitung <- function(x, n) {
  if (n >= 1) {
    hasil <- 0
    for (i in 1:n) {
      hasil <- hasil + x^i
    }
    return(hasil + 1)
  }
  else {
    return(print("n harus bilangan asli"))
  }
}

hitung(2, 5)

# Function Repeat Loop
