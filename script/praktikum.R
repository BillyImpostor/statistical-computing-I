zodiak <- function(tanggal, bulan) {
  if (tanggal < 1 | tanggal > 30) {
    stop("Tanggal harus berada dalam rentang 1 sampai 30")
  }
  if (bulan < 1 | bulan > 10) {
    stop("Bulan harus berada dalam rentang 1 sampai 10")
  }
  hasil <- switch(
    bulan,
    "1" = if (tanggal <= 16) "Auk" else "Beh",
    "2" = if (tanggal <= 16) "Beh" else "Cih",
    "3" = if (tanggal <= 16) "Cih" else "Dih",
    "4" = if (tanggal <= 16) "Dih" else "Eak",
    "5" = if (tanggal <= 16) "Eak" else "Fyu",
    "6" = if (tanggal <= 16) "Fyu" else "Gak",
    "7" = if (tanggal <= 16) "Gak" else "Huk",
    "8" = if (tanggal <= 16) "Huk" else "Iww",
    "9" = if (tanggal <= 16) "Iww" else "Jer",
    "10" = if (tanggal <= 16) "Jer" else "Auk"
  )
  
  return(hasil)
}

zodiak(30,10)
zodiak(11,4)
zodiak(1,6)
