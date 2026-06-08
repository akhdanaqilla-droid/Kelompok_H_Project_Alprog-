#Program Menampilkan tanggal lahir ASN dari NIP 18 digit

nama_bulan <- function(nomor) {
  bulan_list <- c("Januari","Februari","Maret","April","Mei","Juni",
                  "Juli","Agustus","September","Oktober","November","Desember")
  if (nomor >= 1 && nomor <= 12) {
    return(bulan_list[nomor])
  }
  return("Bulan tidak valid")
}

baca_nip <- function(nip) {
  if (nchar(nip) != 18 || grepl("[^0-9]", nip)) {
    return("Error: NIP harus berupa 18 digit angka.")
  }
  tahun   <- substr(nip, 1, 4)
  bulan   <- as.integer(substr(nip, 5, 6))
  tanggal <- as.integer(substr(nip, 7, 8))
  cat(sprintf("Tanggal lahir ASN: %d %s %s\n",
              tanggal, nama_bulan(bulan), tahun))
}

nip <- readline("Masukkan NIP ASN: ")
baca_nip(nip)

#Menampilkan tanggal lahir ASN dari NIP 18 digit
#Skenario 1 (Normal-Januari)
nip <- "199301212019031010"
baca_nip(nip)

#Skenario 2 (NIP Kurang dari 18 Digit)
nip <- "1993012120190310"
baca_nip(nip)

#Skenario 3 (NIP Kurang dari 18 Digit)
nip <- "19930121A019031010"
baca_nip(nip)
