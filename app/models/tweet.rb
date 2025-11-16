class Tweet < ApplicationRecord
    belongs_to :user



 

    def self.calc_flop_action_distribution(posts)
        all_actions = posts.pluck(:action1, :action2, :action3, :action4, :action5, :action6, :action7, :action8, :action9, :action10).flatten.compact

        check_count = all_actions.count("チェック")
        bet_count   = all_actions.count("ベット")
        call_count  = all_actions.count("コール")
        raise_count = all_actions.count("レイズ")
        fold_count = all_actions.count("フォールド")

        total = (check_count + bet_count + call_count + raise_count + fold_count).to_f

        check_percent = total.zero? ? 0.0 : (check_count / total * 100).round(1)
        bet_percent   = total.zero? ? 0.0 : (bet_count / total * 100).round(1)
        call_percent  = total.zero? ? 0.0 : (call_count / total * 100).round(1)
        raise_percent = total.zero? ? 0.0 : (raise_count / total * 100).round(1)
        fold_percent = total.zero? ? 0.0 : (fold_count / total * 100).round(1)

        [check_percent, bet_percent, call_percent, raise_percent, fold_percent]
    end
 def self.calc_flop_action_distribution1(posts)
        preflop_actions = posts.pluck(:action1, :action2, :action3).flatten.compact

         check_count1 = preflop_actions.count("チェック")
         bet_count1   = preflop_actions.count("ベット")
         call_count1  = preflop_actions.count("コール")
         raise_count1 = preflop_actions.count("レイズ")
         fold_count1 = preflop_actions.count("フォールド")

        total = ( check_count1 +  bet_count1 +  call_count1 +  raise_count1 + fold_count1).to_f

         check_percent1 = total.zero? ? 0.0 : (check_count1 / total * 100).round(1)
        bet_percent1   = total.zero? ? 0.0 : (bet_count1 / total * 100).round(1)
        call_percent1  = total.zero? ? 0.0 : (call_count1 / total * 100).round(1)
        raise_percent1 = total.zero? ? 0.0 : (raise_count1 / total * 100).round(1)
        fold_percent1 = total.zero? ? 0.0 : (fold_count1 / total * 100).round(1)


        [check_percent1, bet_percent1, call_percent1, raise_percent1, fold_percent1]
    end
    def self.calc_flop_action_distribution2(posts)
        frop_actions = posts.pluck(:action4, :action5).flatten.compact

        check_count2 = frop_actions.count("チェック")
        bet_count2   = frop_actions.count("ベット")
        call_count2  = frop_actions.count("コール")
        raise_count2 = frop_actions.count("レイズ")
        fold_count2 = frop_actions.count("フォールド")

        total = (check_count2 + bet_count2 + call_count2 + raise_count2 + fold_count2).to_f

        check_percent2 = total.zero? ? 0.0 : (check_count2 / total * 100).round(1)
        bet_percent2   = total.zero? ? 0.0 : (bet_count2 / total * 100).round(1)
        call_percent2  = total.zero? ? 0.0 : (call_count2 / total * 100).round(1)
        raise_percent2 = total.zero? ? 0.0 : (raise_count2 / total * 100).round(1)
        fold_percent2 = total.zero? ? 0.0 : (fold_count2 / total * 100).round(1)


        [check_percent2, bet_percent2, call_percent2, raise_percent2, fold_percent2]
    end
    def self.calc_flop_action_distribution3(posts)
        turn_actions = posts.pluck(:action6, :action7).flatten.compact

        check_count3 = turn_actions.count("チェック")
        bet_count3   = turn_actions.count("ベット")
        call_count3  = turn_actions.count("コール")
        raise_count3 = turn_actions.count("レイズ")
        fold_count3 = turn_actions.count("フォールド")
      

        total = (check_count3 + bet_count3 + call_count3 + raise_count3 + fold_count3).to_f

        check_percent3 = total.zero? ? 0.0 : (check_count3 / total * 100).round(1)
        bet_percent3   = total.zero? ? 0.0 : (bet_count3 / total * 100).round(1)
        call_percent3  = total.zero? ? 0.0 : (call_count3 / total * 100).round(1)
        raise_percent3 = total.zero? ? 0.0 : (raise_count3 / total * 100).round(1)
        fold_percent3 = total.zero? ? 0.0 : (fold_count3 / total * 100).round(1)


        [check_percent3, bet_percent3, call_percent3, raise_percent3, fold_percent3]
    end
    def self.calc_flop_action_distribution4(posts)
        river_actions = posts.pluck(:action8, :action9, :action10).flatten.compact

        check_count4 = river_actions.count("チェック")
        bet_count4   = river_actions.count("ベット")
        call_count4  = river_actions.count("コール")
        raise_count4 = river_actions.count("レイズ")
        fold_count4 = river_actions.count("フォールド")

        total = (check_count4 + bet_count4 + call_count4 + raise_count4 + fold_count4).to_f

        check_percent4 = total.zero? ? 0.0 : (check_count4 / total * 100).round(1)
        bet_percent4   = total.zero? ? 0.0 : (bet_count4 / total * 100).round(1)
        call_percent4  = total.zero? ? 0.0 : (call_count4 / total * 100).round(1)
        raise_percent4 = total.zero? ? 0.0 : (raise_count4 / total * 100).round(1)
        fold_percent4 = total.zero? ? 0.0 : (fold_count4 / total * 100).round(1)


        [check_percent4, bet_percent4, call_percent4, raise_percent4, fold_percent4]
    end
end
