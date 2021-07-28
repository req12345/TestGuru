class BadgeService
  attr_accessor :recieved

  def initialize(test_passage)
    @test_passage = test_passage
    @user = test_passage.user
    @test = test_passage.test
    @recieved = false
  end

  def call
    Badge.all.each do |badge|
       if send(badge.rule, badge.parameter)
         @user.badges << badge
         @recieved = true
       end
    end
  end

  def all_in_category(badge_param)
    all_tests_in_category = Test.by_category(badge_param).count
    users_tests_by_category = TestPassage.successfull.joins(:test).
                                          where(user_id: @user.id, tests: { category_id: @test.category.id }).
                                          select(:test_id).distinct.count
    all_tests_in_category == users_tests_by_category && @test.category.title == badge_param
  end

  def all_tests_by_level(badge_param)
    param_to_i = badge_param.to_i
    all_tests_by_level = Test.by_level(badge_param).count
    users_all_tests_by_level = TestPassage.successfull.joins(:test).
                                           where(user_id: @user.id, tests: { level: param_to_i }).
                                           select(:test_id).distinct.count
    all_tests_by_level == users_all_tests_by_level && @test.level == param_to_i
  end

  def on_first_try(badge_param)
    TestPassage.where(user_id: @user.id, test_id: @test.id).count == 1 && @test.title == badge_param
  end
end
