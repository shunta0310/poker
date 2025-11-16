class TweetsController < ApplicationController
   before_action :authenticate_user!, only: [:new, :create]
  def index
    @tweets = current_user.tweets
    tweet_ids = []
    action1_chart = @tweets
    action2_chart = @tweets
    action3_chart = @tweets
    action4_chart = @tweets
    action5_chart = @tweets
    action6_chart = @tweets
    action7_chart = @tweets
    action8_chart = @tweets
    action9_chart = @tweets
    action10_chart = @tweets
    flop_action_chart = @tweets
    flop_action_chart1 = @tweets
    flop_action_chart2 = @tweets
    flop_action_chart3 = @tweets
    flop_action_chart4 = @tweets
    @check_percent, @bet_percent, @call_percent, @raise_percent, @fold_percent = Tweet.calc_flop_action_distribution(flop_action_chart)
    @check_percent1, @bet_percent1, @call_percent1, @raise_percent1, @fold_percent1 = Tweet.calc_flop_action_distribution1(flop_action_chart1)
    @check_percent2, @bet_percent2, @call_percent2, @raise_percent2, @fold_percent2 = Tweet.calc_flop_action_distribution2(flop_action_chart2)
    @check_percent3, @bet_percent3, @call_percent3, @raise_percent3, @fold_percent3 = Tweet.calc_flop_action_distribution3(flop_action_chart3)
    @check_percent4, @bet_percent4, @call_percent4, @raise_percent4, @fold_percent4= Tweet.calc_flop_action_distribution4(flop_action_chart4)
  

   if params[:search].present?
  keyword = "%#{params[:search]}%"
  search_columns = ["shurui", "body","shurui", "rate", "ninnzuu","position", "myhand", "suit","mark", "frop1", "frop2","frop3", "turn", "river","turn1", "turn2", "turn3","action1", "turn4", "action2","action3", "action4", "action5","action6", "action7", "action8","action9", "action10"]
  query = search_columns.map { |c| "#{c} LIKE :keyword" }.join(" OR ")
  @tweets = @tweets.where(query, keyword: keyword)
   end
  end


  def new
    @tweet = Tweet.new
  end

  def create
    tweet = Tweet.new(tweet_params)
    tweet.user_id = current_user.id
    if tweet.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end

  end

  def show
    @tweet = Tweet.find(params[:id])
  end

 def top
 end

def edit
    @tweet = Tweet.find(params[:id])
end

def update
    tweet = Tweet.find(params[:id])
    if tweet.update(tweet_params)
      redirect_to :action => "index", :id => tweet.id
    else
      redirect_to :action => "new"
    end
  end

def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body,:shurui, :rate, :ninnzuu,:position, :myhand, :suit,:mark, :frop1, :frop2,:frop3, :turn, :river,:turn1, :turn2, :turn3,:action1, :turn4, :action2,:action3, :action4, :action5,:action6, :action7, :action8,:action9, :action10, :frop1m, :frop2m, :frop3m, :turnm, :riverm,)
  end
end