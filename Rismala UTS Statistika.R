# ==============================
# 1. Tabel 1 ke dalam R
# ==============================
Tahun <- c(2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020)
Gula <- c(50, 70, 100, 120, 110, 100, 120, 135, 140, 150, 145)
Minyak <- c(80, 85, 90, 100, 120, 125, 135, 140, 150, 190, 195)
Sabun <- c(55, 70, 80, 95, 80, 100, 105, 110, 120, 100, 130)
data_toko <- data.frame(Tahun, Gula, Minyak, Sabun)
data_toko

# ==============================
# 2. Analisis Statistik Sederhana (Summary)
# ==============================
summary(data_toko)

# ==============================
# 3. Plot masing-masing barang
# ==============================
# a) Penjualan Gula Toko A
plot(data_toko$Tahun, data_toko$Gula, type="b", col="black", pch=19,
     main="Penjualan Gula Toko A",
     xlab="Tahun", ylab="Jumlah")

# b) Penjualan Minyak Toko A
plot(data_toko$Tahun, data_toko$Minyak, type="b", col="blue", pch=19,
     main="Penjualan Minyak Toko A",
     xlab="Tahun", ylab="Jumlah")

# c) Penjualan Sabun Toko A
plot(data_toko$Tahun, data_toko$Sabun, type="b", col="red", pch=19,
     main="Penjualan Sabun Toko A",
     xlab="Tahun", ylab="Jumlah")

# d) Gabungan Ketiga Plot Penjualan Barang Toko A
plot(data_toko$Tahun, data_toko$Gula, type="b", col="black", pch=19, ylim=c(0,200),
     main="Gabungan Penjualan Toko A",
     xlab="Tahun", ylab="Jumlah Penjualan")
lines(data_toko$Tahun, data_toko$Minyak, type="b", col="blue", pch=19)
lines(data_toko$Tahun, data_toko$Sabun, type="b", col="red", pch=19)
legend("topleft", legend=c("Gula", "Minyak", "Sabun"),
       col=c("black", "blue", "red"), lty=1, pch=19)