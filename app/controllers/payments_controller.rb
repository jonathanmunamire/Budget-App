class PaymentsController < ApplicationController
  def index
    @payments = Payment.all
  end

  def new
    @group = Group.find(params[:group_id])
    @payment = Payment.new
  end

  def create
    @payment = Payment.new(payment_params)
    @payment.author_id = current_user.id
    @payment.groups = Group.where(id: params[:payment][:group_ids]).includes([:user])

    respond_to do |format|
      if @payment.save
        format.html do
          redirect_to group_path(id: params[:payment][:group_ids].last), notice: 'Expense was successfully created.'
        end
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  def payment_params
    params.require(:payment).permit(:name, :amount, group_ids: [])
  end
end
