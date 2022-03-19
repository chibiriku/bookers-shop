class HomesController < ApplicationController
  def top
   @book = Book.where(is_active: true).order(created_at: :desc).limit(4)
  end
end
