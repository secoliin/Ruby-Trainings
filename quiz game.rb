class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end 
p1 = "What color are apples?\n(a) Red/Green\n(b) Purple\n(c) Orange"
p2 = "What color are bananas?\n(a) Teal\n(b) Magenta\n(c) Yellow"
p3 = "What color are strawberries?\n(a) Yellow\n(b) Red\n(c) Blue"

questions = [
    Question.new(p1, "a"),
    Question.new(p2, "c"),
    Question.new(p3, "b")
]
def run_test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
    end
    puts("You got " + score.to_s + "/" + questions.length.to_s)
end

run_test(questions)