class PagesController < ApplicationController
  def about
  end

  def home
  end

  def contact
    @members = ['Anup Ale', 'Robbie Bullough', 'Charlie Cheesman', 'Miriam Ciurea', 'Claire Cross', 'Charlotte de Baere', 'Elliot Griffin', 'Jas Hothi', 'Ben Jones', 'Direncan Kaygisiz', 'Suhoan Kim', 'Ecem Kocaslan', 'Ilya Obretetskiy', "Mark O'Connor", 'Visar Sabani', 'Alejandro Sanz', 'Daniel Shaw', 'Jonathan Shipton', 'Daniel Sussman', 'Armel Tchakounte', 'Manoj Vasava', 'Mark Watkinson', 'Alex Young', 'Alessandra Zanelli']

    if params[:member_name].present?
      @members = @members.select do |member|
        member.downcase.include? params[:member_name].downcase
      end
    end
  end

  def profile
  end
end
