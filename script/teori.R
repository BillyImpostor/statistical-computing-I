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
# Dengan repeat dan break, cari pangkat dua terkecil yang melampaui 10.000.
n <- 0
repeat {
  n <- n + 1
  pangkat <- n^2
  if (pangkat > 10000) {
    cat(n,"^",2, "=", pangkat, "\n")
    break
  }
}

# Function For Loop & Next
# Gunakan next untuk mencetak seluruh bilangan ganjil antara 1 dan 30 yang bukan kelipatan 3.
list = c(1:30)
for (i in list) {
  if (i %% 2 == 0) next
  if (i %% 3 == 0) next
  cat(i, "\n")
}


x <- c(3, 5, 7, 9, 11, 11, 15)
ukuran <- "modus"

modus <- function(x){
  table_mod <- table(x)
  return(names(table_mod)[which.max(table_mod)])
}

switch(ukuran,
       mean = mean(x),
       median = median(x),
       modus = modus(x),
       stop("Ukuran tidak dikenali")
)


set.seed(123)
n <- 10^6 
x <- rnorm(n)

system.time({
  s_loop <- 0
  for (i in 1:n) {
    s_loop <- s_loop + x[i]^2
  }
})

system.time({
  s_vektor <- sum(x^2)
})

all.equal(s_loop, s_vektor)
