class Letter < ApplicationRecord
  before_create :tanggal_surat, :nomor_surat, :set_tahun_ajaran
  attr_accessor :tmp_photo
  def tanggal_surat
    self.letter_date = Time.created_at.strftime("%d-%m-%Y")
  end

  def nomor_surat
    if Time.now == Time.beginning_of_month
      self.letter_number = i
      i = 0
      i = i + 1
    end
  end

  def set_tahun_ajaran
    self.education_year = Time.now.strftime('%Y')/Time.now.strftime('%Y').to_i + 1
  end
  
  def self.letter_list
    ["Surat Keterangan Kuliah Biasa","Surat Keterangan Kuliah Tanggungan", "Surat Keterangan Lulus", "Surat Keterangan Akreditasi Biasa", "Surat Keterangan Akreditasi Alumni", "Surat Rekomendasi Kegiatan", "Surat Rekomendasi Beasiswa", "Surat Berkelakuan Baik" , "Cuti Akademik", "Surat Keterangan Pindah Kampus"]
  end

  def self.deparment_list
    ["Teknik Pertambangan", "Teknik Mesin", "Teknik Informatika"]
  end

  def self.ganjil_genap
    ["Semester Ganjil", "Semester Genap"]
  end

  def self.administration_list
    ["Drs. Iskandar, BE"]
  end

end
