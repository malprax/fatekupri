class Admin::LettersController < Admin::ApplicationController
  def index
    @letters = Letter.order('created_at desc')
  end
end
