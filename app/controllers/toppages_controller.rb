class ToppagesController < ApplicationController
  before_action :require_user_logged_in, only: [:create, :edit, :destroy]
  
  def index
  end
  
  def show
    @posts = current_user.posts.order(id: :desc).page(params[:page])
  end
  
  # ここからerea
  def asia
    @posts = Post.where(area: "アジア")
  end
  
  def europe
    @posts = Post.where(area: "ヨーロッパ")
  end
  
  def hawaii
    @posts = Post.where(area: "ハワイ・ミクロネシア")
  end
  
  def africa
    @posts = Post.where(area: "アフリカ")
  end
  
  def russia
    @posts = Post.where(area: "ロシア・中央アジア")
  end
  
  def america
    @posts = Post.where(area: "アメリカ大陸")
  end
  
  def east
    @posts = Post.where(area: "中近東")
  end
  
  def india
    @posts = Post.where(area: "モルディブ・インド洋")
  end
  
  def oceania
    @posts = Post.where(area: "南太平洋・オセアニア")
  end
  
  def caribbean
    @posts = Post.where(area: "中南米・カリブ")
  end
end
