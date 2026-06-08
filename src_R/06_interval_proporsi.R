# 06_interval_proporsi.R
# Menghitung interval konfidensi untuk proporsi populasi

jalankan_interval_proporsi <- function() {
  
  # 1. Fungsi internal untuk menentukan nilai z-score berdasarkan alpha
  tentukan_z <- function(alpha) {
    if (alpha == 5)        return(1.96)
    else if (alpha == 10) return(1.645)
    else                  return(NULL)
  }
  
  # 2. Fungsi internal untuk menghitung interval konfidensi
  hitung_interval <- function(p_hat, n, alpha) {
    if (p_hat < 0 || p_hat > 1) {
      return("Error: proporsi harus bernilai antara 0 dan 1.")
    }
    
    z <- tentukan_z(alpha)
    if (is.null(z)) {
      return("Error: alpha hanya boleh 5 atau 10.")
    }
    
    margin <- z * sqrt(p_hat * (1 - p_hat) / n)
    bawah  <- p_hat - margin
    atas   <- p_hat + margin
    
    return(list(bawah=bawah, atas=atas, alpha=alpha, z=z))
  }
  
  # 3. Mengambil input dari pengguna
  p_hat <- as.numeric(readline("Masukkan proporsi sampel (p-hat): "))
  n     <- as.integer(readline("Masukkan ukuran sampel (n): "))
  alpha <- as.integer(readline("Masukkan alpha (5 atau 10): "))
  
  # 4. Proses Perhitungan
  hasil <- hitung_interval(p_hat, n, alpha)
  
  # 5. Menampilkan Hasil Output
  if (is.character(hasil)) {
    cat("\n", hasil, "\n")
  } else {
    cat(sprintf("\nInterval konfidensi %d%% (z = %.3f):\n",
                100 - hasil$alpha, hasil$z))
    cat(sprintf("  \n%.4f < p < %.4f\n", hasil$bawah, hasil$atas))
  }
  
  # Mengembalikan hasil secara internal agar bisa disimpan ke variabel jika butuh
  return(invisible(hasil))
}

# --- Cara Menjalankan Fungsi ---
# Cukup panggil fungsi ini di konsol R Anda:
jalankan_interval_proporsi()
