hitung_teks <- function(input_teks) {
  if (nchar(input_teks) == 0) {
    kata <- 0
    kalimat <- 0
  } else {
    kata <- 1
    kalimat <- 0
    for(i in 1:nchar(input_teks)){
      huruf <- substr(input_teks, i, i)
      if(huruf == " ") kata <- kata + 1
      if(huruf == ".") kalimat <- kalimat + 1
    }
  }
  cat("Teks tersebut memuat", kalimat, "kalimat dan", kata, "kata.\n")
}

hitung_teks("Kecerdasan buatan atau yang lebih dikenal dengan AI (Artificial Intelligence), seperti ChatGPT, Gemini, dan berbagai platform pintar lainnya ternyata tidak hanya digunakan sebagai alat bantu mencari informasi atau hiburan semata. Namun, teknologi AI kini juga bisa dimanfaatkan sebagai media untuk mentransformasi sistem pembelajaran di sekolah. Saat ini telah banyak para pendidik yang beralih ke teknologi AI dalam menyusun materi maupun mengevaluasi perkembangan siswa. Beralihnya para guru ke media ini dikarenakan kecerdasan buatan memiliki manfaat yang sangat banyak bagi efektivitas akademik. Berikut ini adalah alasan mengapa teknologi AI bisa menjadi alat bantu pembelajaran yang paling efisien.")
hitung_teks("Belajar pemrograman itu menyenangkan.")
hitung_teks("")
