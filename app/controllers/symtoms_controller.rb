class SymtomsController < ApplicationController
  def show_photo
    symptom = Symptom.find(params[:id])
    send_file symptom.photo.to_file(params[:style]), :type => symptom.photo_content_type, :disposition => 'inline', :filename => symptom.photo_file_name
  end
end
