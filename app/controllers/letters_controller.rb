class LettersController < ApplicationController
  before_action :set_letter, only: [:show, :edit, :update, :destroy]

  def new
    @letter = Letter.new
  end

  def create
    @letter = Letter.create(letter_params)
    if @letter.save
      respond_to do |format|
        format.html {redirect_to root_url, notice: "Surat Berhasil Dibuat"}
        format.json { render json: @letter }
      end
    end
  end
  private
  def set_letter
    @letter = Letter.find(params[:id])
  end
  def letter_params
    params.require(:letter).permit(:name, :stambuk, :department, :birth_place, :birth_date, :address, :phone, :yudisium_date, :essay_title, :parents_name, :employee_number, :employee_level, :parents_phone, :company_name, :letter_kind, :letter_date, :letter_number, :semester_genap_ganjil, :education_year, :formers, :disposition_date, :administration_head, :number_diploma_university, :number_diploma_faculty)
  end
end
