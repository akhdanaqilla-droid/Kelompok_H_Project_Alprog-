teks <-"Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."

kata <- 1
kalimat <- 0

for(i in 1:nchar(teks)){
  
  huruf <- substr(teks, i, i)
  
  if(huruf == " "){
    kata <- kata + 1
  }
  
  if(huruf == "."){
    kalimat <- kalimat + 1
  }
  
}

cat("Teks tersebut memuat", kalimat,
    "kalimat dan", kata, "kata.")
