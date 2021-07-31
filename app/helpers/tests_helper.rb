module TestsHelper
# TEST_LEVELS = { (0..1) => :easy. (2..4) => :middle, (5..6) => hard}.freeze

  def test_level(test)
    # TEST_LEVELS[test.level] || :hero
    case test.level
    when 1 then "easy"
    when 2..4 then "middle"
    when 5..6 then "hard"
    else "hero"
    end
  end

  def test_header(test)
    if test.new_record?
      t('shared.header.test_create')
    else
      t('shared.header.test_edit')
    end
  end
end
