class InformationsController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  def index
    @users = User.all

    @gender = User.pluck(:gender)
    @gender_data = genderdata(@gender)

    @situation = User.pluck(:situation)
    @situation_data = situationdata(@situation)

    @children = User.pluck(:children)
    @children_data = childrendata(@children)

    @age = User.pluck(:age_id)
    @age_data = agedata(@age)

  end

 
  private

def genderdata(array)
  result = [["女性",0],["男性",0],["その他",0]]
  array.each do |i|
    if i == 1
      result[0][1] += 1
    elsif i == 2
      result[1][1] += 1
    else 
      result[2][1] += 1
    end
  end
  return result
end

def situationdata(array)
  result = [["未婚",0],["既婚",0]]
  array.each do |i|
    if i == 1
      result[0][1] += 1
    else 
      result[1][1] += 1
    end
  end
  return result
end

def childrendata(array)
  result = [["子あり",0],["子なし",0]]
  array.each do |i|
    if i == 1
      result[0][1] += 1
    else 
      result[1][1] += 1
    end
  end
  return result
end

def agedata(array)
  result = [["10代",0],["20代",0],["30代",0],["40代",0],["50代",0],["60最以上",0]]
  array.each do |i|
    if i == 1
      result[0][1] += 1
    elsif i == 2
      result[1][1] += 1
    elsif i == 3
      result[2][1] += 1
    elsif i == 4
      result[3][1] += 1
    elsif i == 5
      result[4][1] += 1
    else
      result[5][1] += 1
    end
  end
  return result
end


end
