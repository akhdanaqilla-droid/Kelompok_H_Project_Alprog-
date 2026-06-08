# 05_cluster_3d.R
# Klasifikasi titik ke salah satu dari tiga cluster di ruang 3D

jalankan_klasifikasi_3d <- function() {
  # 1. Definisikan pusat cluster (Variabel Lokal)
  PUSAT_A <- c(2, 1, 3)
  PUSAT_B <- c(1, -4, 6)
  PUSAT_C <- c(-2, 3, -2)
  
  # 2. Fungsi internal untuk menghitung jarak Euclidean
  hitung_jarak <- function(titik_u, pusat) {
    sqrt(sum((titik_u - pusat)^2))
  }
  
  # 3. Fungsi internal untuk menentukan cluster terdekat
  klasifikasi_cluster <- function(titik_u) {
    jarak_a <- hitung_jarak(titik_u, PUSAT_A)
    jarak_b <- hitung_jarak(titik_u, PUSAT_B)
    jarak_c <- hitung_jarak(titik_u, PUSAT_C)
    
    if (jarak_a <= jarak_b && jarak_a <= jarak_c) {
      return(list(cluster="A", jarak=jarak_a))
    } else if (jarak_b <= jarak_c) {
      return(list(cluster="B", jarak=jarak_b))
    } else {
      return(list(cluster="C", jarak=jarak_c))
    }
  }
  
  # 4. Mengambil input dari pengguna
  x1 <- as.numeric(readline("Masukkan x1: "))
  x2 <- as.numeric(readline("Masukkan x2: "))
  x3 <- as.numeric(readline("Masukkan x3: "))
  
  # 5. Proses Klasifikasi
  U <- c(x1, x2, x3)
  hasil <- klasifikasi_cluster(U)
  
  # 6. Menampilkan Hasil Output
  cat(sprintf("\nTitik U(%.1f, %.1f, %.1f) tergolong Cluster %s\n",
              x1, x2, x3, hasil$cluster))
  cat(sprintf("Jarak ke pusat Cluster %s: %.3f\n",
              hasil$cluster, hasil$jarak))
  
  # Opsional: Mengembalikan hasil sebagai list jika ingin disimpan ke variabel
  return(invisible(hasil))
}

# --- Cara Menjalankan Fungsi ---
# Cukup panggil fungsi ini di konsol R Anda:
jalankan_klasifikasi_3d()
