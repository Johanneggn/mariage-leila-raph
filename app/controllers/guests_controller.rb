class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      UserMailer.invitation(@guest).deliver_now
      UserMailer.invitation_reponse(@guest).deliver_now
      redirect_to new_guest_path, flash: {success: 'Votre message a été envoyé'}
    end
  end

  def index
  end

  private

  def guest_params
    params.require(:guest).permit(:first_name, :last_name, :lover, :children, :coming, :comment)
  end
end
