

def anagram_test (test_word, text_group)
  if test_word.sort == text_group.sort
    return text_group
  end

end

anagram_test("listen","enlist")