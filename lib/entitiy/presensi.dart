class Presensi {
  int id_presensi;
  int id_karyawan;
  DateTime tanggal;

  Presensi({
    required this.id_presensi,
    required this.id_karyawan,
    required this.tanggal,
  });

  factory Presensi.fromJson(Map<String, dynamic> json) {
    return Presensi(
      id_presensi: json['id_presensi'],
      id_karyawan: json['id_karyawan'],
      tanggal: json['tanggal'],

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_presensi': id_presensi,
      'id_karyawan': id_karyawan,
      'tanggal': tanggal,
    };
  }
}
