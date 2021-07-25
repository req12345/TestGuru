class BadgeService
  MUSIC_CATEGORY_ID = 1
  LEVEL_1 = 1
  attr_accessor :recieved

  def initialize(test_passage)
    @test_passage = test_passage
    @user = test_passage.user
    @recieved = false
  end

  def call
    Badge.all.each do |badge|
       if send(badge.rule)
         @user.badges << badge
         @recieved = true
       end
    end
  end

  def all_in_category_music
    all_tests_in_category = Test.where(category_id: MUSIC_CATEGORY_ID).count
    users_tests_by_category = TestPassage.successfull.joins(:test).
                                 where(user_id: @user.id, tests: { category_id: MUSIC_CATEGORY_ID }).
                                 select(:test_id).distinct.count
    all_tests_in_category == users_tests_by_category
  end

  def all_level_1_tests
    all_tests_by_level = Test.by_level(LEVEL_1).count
    users_all_tests_by_level = TestPassage.successfull.joins(:test)
                                         .where(user_id: @user.id, tests: { level: LEVEL_1 })
                                         .select(:test_id).distinct.count
    all_tests_by_level == users_all_tests_by_level
  end

  def on_first_try
    current_test = @test_passage.test
    TestPassage.where(user_id: @user.id, test_id: current_test.id).count == 1
  end
end
