class BadgeService
  attr_accessor :recieved

  def initialize(test_passage)
    @test_passage = test_passage
    @user = test_passage.user
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

  def all_in_category(category_id)
    all_tests_in_category = Test.where(category_id: category_id).count
    users_tests_by_category = TestPassage.successfull.joins(:test).
                                 where(user_id: @user.id, tests: { category_id: category_id }).
                                 select(:test_id).distinct.count
    all_tests_in_category == users_tests_by_category
  end

  def all_tests_by_level(level)
    byebug
    all_tests_by_level = Test.by_level(level).count
    users_all_tests_by_level = TestPassage.successfull.joins(:test)
                                         .where(user_id: @user.id, tests: { level: level })
                                         .select(:test_id).distinct.count
    all_tests_by_level == users_all_tests_by_level
  end

  def on_first_try(param = nil)
    current_test = @test_passage.test
    TestPassage.where(user_id: @user.id, test_id: @test_passage.test.id).count == 1
  end
end
