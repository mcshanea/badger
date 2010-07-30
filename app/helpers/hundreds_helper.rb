module HundredsHelper
  def check_ending(hundred)
    if hundred.end_time.past? && hundred.ended == false
      bets = Bet.find_all_by_link_id_and_game(params[:id], 'hundred')
      
      #todo - figure out which is the closest bid
      
      #once we find the winner, we update their badge
      #users.each do |user|
       #badge = Badge.find
      #end
      
      hundred.ended = true
    end 
  end
  
  def bets_placed(id)
    return Bet.find_all_by_link_id_and_game(id, 'hundred').length
  end
end
