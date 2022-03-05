class DataController < ApplicationController
  def new
  end

  def create
    @data = Datum.new data_params
    if @data.save
      @text = declination(params)
    else
      redirect_to root_path, notice: "Введите пожалуйста правильные данные"
    end
  end
end

private

def data_params
  params.permit(:case, :text)
end

def declination(params)
  @text = params[:text].split(/\n+|\r+/).reject(&:empty?)
  @case = params[:case]
  @text.map! do |fio|
    Petrovich(
      lastname: fio.split[0],
      firstname: fio.split[1],
      middlename: fio.split[2],
      ).send("#{@case}")
  end
end
