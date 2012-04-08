require_relative '../spec_helper'

describe Array do
  it "give me the second value when I call .second method" do
    my_array = [42, 1337]
    my_array.second.should be 1337
  end

  it "give me the fourty-third value when I call .fourty_third method" do
    my_array = []
    my_array[42] = "it rocks"
    my_array.fourty_third.should be == "it rocks"
  end

  [
    [:two, :second],
    [:fourty_two, :fourty_second],
    [:fortieth_second, :fourty_second],
    [:fortieth_two, :fourty_second],
    [:six_hundred_sixty_six, :six_hundred_sixty_sixth],
    [:six_hundred_sixtieth_sixth, :six_hundred_sixty_sixth],
    [:six_hundred_sixtieth_six, :six_hundred_sixty_sixth],
    [:six_hundredth_sixty_sixth, :six_hundred_sixty_sixth],
    [:six_hundredth_sixty_six, :six_hundred_sixty_sixth],
    [:six_hundredth_sixtieth_sixth, :six_hundred_sixty_sixth],
    [:six_hundredth_sixtieth_six, :six_hundred_sixty_sixth],
    [:sixth_hundred_sixty_sixth, :six_hundred_sixty_sixth],
    [:sixth_hundred_sixty_six, :six_hundred_sixty_sixth],
    [:sixth_hundred_sixtieth_sixth, :six_hundred_sixty_sixth],
    [:sixth_hundred_sixtieth_six, :six_hundred_sixty_sixth],
    [:sixth_hundredth_sixty_sixth, :six_hundred_sixty_sixth],
    [:sixth_hundredth_sixty_six, :six_hundred_sixty_sixth],
    [:sixth_hundredth_sixtieth_sixth, :six_hundred_sixty_sixth],
    [:sixth_hundredth_sixtieth_six, :six_hundred_sixty_sixth],
    [:fifteen_two, :seventeenth]
  ].each do |method_error_name, method_name|

    it "respond when I call #{method_name}" do
      Array.should respond_to(method_name)
    end

    it "doesn't respond when I call #{method_error_name}" do
      Array.should_not respond_to(method_error_name)
    end
  end
end