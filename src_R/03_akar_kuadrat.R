# 03_akar_kuadrat.R
# Menghitung akar-akar persamaan kuadrat ax^2 + bx + c = 0

hitung_akar <- function(a, b, c) {
  if (a == 0) {
    return("Error: nilai a tidak boleh nol.")
  }
  diskriminan <- b^2 - 4*a*c
  if (diskriminan > 0) {
    x1 <- (-b + sqrt(diskriminan)) / (2*a)
    x2 <- (-b - sqrt(diskriminan)) / (2*a)
    cat(sprintf("Dua akar real berbeda:\n  x1 = %.3f\n  x2 = %.3f\n", x1, x2))
  } else if (diskriminan == 0) {
    x <- -b / (2*a)
    cat(sprintf("Akar kembar:\n  x1 = x2 = %.3f\n", x))
  } else {
    cat("Persamaan ini hanya memiliki akar-akar imajiner.\n")
  }
}

a <- as.numeric(readline("Masukkan a: "))
b <- as.numeric(readline("Masukkan b: "))
c <- as.numeric(readline("Masukkan c: "))

hitung_akar(1, -5, 6)
hitung_akar(2, 7, 8)
hitung_akar(0, 6, 3)
hitung_akar(1,-4,4)
