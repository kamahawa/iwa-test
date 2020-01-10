class TestsController < ApplicationController
    before_action :set_test, only: [:show, :edit, :update, :destroy]

  def index
    @tests = Test.includes(:questions).all
  end

  def show
  end

  def new
    @test = Test.new
  end

  def edit
  end

  def create
    @test = Test.new(test_params)
    
    logger.debug "------------------------------------------"
    logger.debug "There is debug"
    logger.debug "------------------------------------------"
    
    if @test.save
      redirect_to tests_path, notice: 'Test was successfully created.'
    else
      logger.debug "------------------------------------------"
      logger.debug @test.errors.full_messages
      logger.debug "------------------------------------------"
      
      render :new
    end

    logger.debug "------------------------------------------"
    logger.debug "end debug"
    logger.debug "------------------------------------------"
  end

  def add_question
    @test = Test.new(test_params)
    @test << Question.new

    render :new
  end

  def update
    if @test.update(test_params)
      redirect_to tests_path, notice: 'Test was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @test.destroy
    redirect_to tests_url, notice: 'Test was successfully destroyed.'
  end

  private

  def set_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:name,
      :description,
      questions_attributes: [
        :id,
        :content,
        :description,
        :_destroy,
        options_attributes: [
          :id,
          :content,
          :is_answer,
          :_destroy
        ]
      ]
    )
  end
end
