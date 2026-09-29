class Mahasiswa {
  int NIM;
  String nama;
  String alamat;
  String email;
  String? hobi;
  int? telepon;
  double IPK;

  Mahasiswa({
    required this.NIM,
    required this.nama,
    required this.alamat,
    required this.email,
    required this.IPK,
    this.hobi,
    this.telepon,
  });

  String getInfo(int nim) {
    if (NIM == nim) {
      return 'NIM: $NIM\nNama: $nama\nAlamat: $alamat\nEmail: $email\nHobi: $hobi\nTelepon: $telepon\nIPK: $IPK';
    } else {
      return 'Data mahasiswa dengan NIM $nim tidak ditemukan.';
    }
  }
}