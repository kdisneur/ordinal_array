require_relative './ordinal_number/ordinal'
require_relative './ordinal_number/ordinal_constants'

class Array

  include OrdinalArray::Constant
  include OrdinalArray

	def method_missing name, *params
    if number_in_letter? name
			value_by_number_in_letter name, params
		else
			super
  	end
  end

  private

  def number_in_letter? name
    ordinal_figure = false
    possible_followers = [:hundred, :decade, :ordinal]
    name.to_s.split('_').drop_while do |letter_number|
		  return false if ordinal_figure
      figure = Numbers_in_letter.element_by_name letter_number
      return false if figure.nil?
      return false unless possible_followers.include? figure.to_sym
      possible_followers = figure.can_be_followed_by
      ordinal_figure = !figure.kind_of?(ComposedOrdinal)
      true
    end.empty? && ordinal_figure
	end

	def value_by_number_in_letter name, *params
	  partial_sum = 1
		sum = name.to_s.split('_').inject(0) do |sum, letter_number|
		  number = Numbers_in_letter.element_by_name(letter_number).number
		  if partial_sum < number
		    partial_sum = partial_sum * number
		  else
		    sum = sum + partial_sum
		    partial_sum = number
      end
      sum
    end
    sum = sum + partial_sum
    index = sum - 1
		self.[] index  if index > 0
	end
end

