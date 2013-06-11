require 'open-uri'
class Student < ActiveRecord::Base
  attr_accessible :name, :photo_url, :section, :twitter
end

def Student.fetch(course_number)
  url = "http://yearbook-api.herokuapp.com/2013/Spring/#{course_number}.json"

  raw_response = open(url).red
  result = JSON.parse(raw_response)
  list_from_api = result["students"]

  students_array = Array.new

  list_from_api.each do |student_hash|
    s = Student.new
    s.twitter = student_hash["twitter"]
    s.photo_url = student_hash["avatar"]
    s.name = student_hash["first_name"] + " " + student_hash["last_name"]
    s.section = result["name"]

    array_of_students << s
  end

  return array_of_students
end
end

