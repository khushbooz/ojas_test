class PhonesController < ApplicationController

  def allotted_numbers
    @phones = Phone.where(is_occupied: true)
    render status: 200, json: collection(@phones)
  end

  def allot_number
    @phones = Phone.where(is_occupied: false)
    number = @phones.shuffle.first
    number.update(is_occupied: true)
    render status: 200, json: single(number)
  end

  def allot_fancy_number
    requested_number = params[:id]
    number = Phone.find_by(number: requested_number)
    if number && !number.is_occupied
      number.update(is_occupied: true)
      render status: 200, json: single(number)
    else
      render status: 404, json: 'Number not available'
    end
  end

  private

  def collection(resources)
    result = []
    resources.each do |resource|
      result << single(resource)
    end
    result
  end

  def single(resource)
    {
      id: resource.id,
      number: resource.number,
      is_occupied: resource.is_occupied
    }
  end
end
