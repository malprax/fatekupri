class Letter < ApplicationRecord
  before_create :tanggal_surat, :nomor_surat
  def self.letter_list
    ["Surat Keterangan Kuliah Biasa","Surat Keterangan Kuliah Tanggungan", "Surat Keterangan Lulus", "Surat Keterangan Akreditasi Biasa", "Surat Keterangan Akreditasi Alumni", "Surat Rekomendasi Kegiatan", "Surat Rekomendasi Beasiswa", "Surat Berkelakuan Baik" , "Cuti Akademik", "Surat Keterangan Pindah Kampus"]
  end

  def self.deparment_list
    ["Teknik Pertambangan", "Teknik Mesin", "Teknik Informatika"]
  end

  def tanggal_surat
    self.letter_date = Time.created_at.strftime("%d-%m-%Y")
  end

  def nomor_surat
    self.letter_number = 1
  end

  def self.ganjil_genap
    ["Semester Ganjil", "Semester Genap"]
  end

  def self.administration_list
    ["Drs. Iskandar, BE"]
  end
end
