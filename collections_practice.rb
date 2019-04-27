require "pry"
def begins_with_r(ar)
    answer = true
    ar.each do |word|
        if word[0].downcase != "r"
            answer = false
        end
    end
    answer
end

def contain_a(ar)
    answerAr = []
    ar.map do |word|
        answerAr << word if word.include?("a")
    end
    answerAr
end

def first_wa(ar)
    ar.find do |word|
        word[0].downcase == "w" && word[1].downcase =="a"
    end
end

def remove_non_strings(ar)
    ar.select do |item|
        item.is_a?(String)
    end
end

def count_elements(ar)
    ar.each do |first_hash|
        first_hash[:count]=0
        name = first_hash[:name]
        ar.each do |second_hash|
            if second_hash[:name] == name
                first_hash[:count]+=1
            end
        end
    end.uniq
end

def merge_data(ar1, ar2)
    ar2[0].map do |name, prop_hash|
        new_prop_hash={}
        ar1.each do |new_attr_hash|
            if new_attr_hash[:first_name] == name
                new_prop_hash=prop_hash.merge(new_attr_hash)
            end
        end
        new_prop_hash
    end
end

def find_cool(ar)
    ansAr=[]
    ar.each do |item|
      ansAr << item if item[:temperature] == "cool"
    end
    ansAr
end

def organize_schools(schools)
    organized_schools_hash={}
    schools.each do |name, location_hash|
        location = location_hash[:location]
        if organized_schools_hash[location]
            organized_schools_hash[location] << name
        else
            organized_schools_hash[location]=[]
            organized_schools_hash[location] << name
        end
    end
    organized_schools_hash
end