class RecordsController < ApplicationController
  
  before_action :set_record,  only: [:edit, :update, :destroy]
  
  def index
    @records = Record.all
  end
  
  def new
    if params[:back]
      @record = Record.new(records_params)
    else
      @record = Record.new
  end
end
  
  def create
    @record = Record.new(records_params)
    if @record.save
      redirect_to records_path,notice:"投稿しました。消すなら人目につかないうちに…"
    else
      render 'new'
    end
  end
  
  def confirm
    @record = Record.new(records_params)
    render 'new' if @record.invalid?
  end
  
  def edit
    set_record
  end
  
  def update
    set_record
    if
    @record.update(records_params)
    redirect_to records_path,notice:"編集しました!!"
  else
    render 'new'
  end
 end
  
  def destroy
    set_record
    @record.destroy
    redirect_to records_path,notice:"本当に消しちゃいましたよ(´・ω・`)"
  end
  
  private
  def records_params
    params.require(:record).permit(:content, :edit,)
  end
  
  def set_record
    @record = Record.find(params[:id])
  end
end
