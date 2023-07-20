class TopicsController < ApplicationController
before_action :authenticate_user!

  def index
    render 'topics/index'
  end

  # ここから
  def new
    @topic = Topic.new
    render :new
  end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to index_topic_path, notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def topic_params
    params.require(:topic).permit(:title)
  end
  # ここまで
end