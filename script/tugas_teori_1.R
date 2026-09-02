# Soal nomor 1
x <- 12
y <- 5
nama <- "Statistika"
aktif <- TRUE

## A. Tipe data pakai class()
class(x)
class(y)
class(nama)
class(aktif)

## B. Hitung
x + y
x^2 - y
x %% y
x %/% y

## C. Evaluasi
x > y
# Hasil pernyataan x > y akan selalu TRUE, karena nilai x adalah 12 yang dimana lebih besar daripada y yang hanya 5

(x > 10) & (y < 10)
# Hasil pernyataan (x > 10) & (y < 10) akan selalu TRUE. Hal ini disebabkan karena hukum logika jika 2 pernyataan TRUE dihubungkan dengan dan (&), maka hasilnya pasti akan TRUE
# Pernyataan x > 10 TRUE karena x memang lebih besar dari angka 10
# Pernyataan y < 10 TRUE karena x memang lebih kecil dari angka 10

# Soal nomor 2
nilai <- c(78,85,92,65,88,75,90,70)
nama <- c("Ani","Budi","Citra","Deni","Eka","Fani","Gita","Hadi")

## A. names() dan which()
names(nilai) <- nama
which(nilai > 80)

## B. Ambil nilai
nilai[which(nama %in% c("Ani", "Citra", "Fani"))]

## C. Warning
1:6 + c(10,20)
1:5 + c(10,20)

# Soal nomor 3
z <- c(70,80,NA,90,75,85,90)

## A. Null dan Mean
is.na(z)
mean(z)

## B. Sort, Order, Rank
sort(z, decreasing = TRUE)
order(z)
rank(z)

## C. Cumsum
transaksi <- c(12,10,15,20,18)
cumsum(transaksi)