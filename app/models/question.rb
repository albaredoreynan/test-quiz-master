class Question < ActiveRecord::Base
	include Bootsy::Container
  validates_presence_of :question
  validates_presence_of :answer

  def is_correct?(submission)
  	ans = no_whitespace_downcase(answer)
  	subs = no_whitespace_downcase(submission)
		
		ans = (ans.to_i).to_words if is_number(ans)
		subs = (subs.to_i).to_words if is_number(subs)

    ans == subs
  end

  def is_number(input)
  	!!(input.to_s =~ /\A[+-]?\d+\Z/)
  end

  def no_whitespace_downcase(entry)
  	entry = entry.split.join(" ")
  	entry.downcase
  end
end
