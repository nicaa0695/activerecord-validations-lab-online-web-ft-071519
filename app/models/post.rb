class Post < ActiveRecord::Base
   def validate_each(record, attribute, value)
        unless value =~ /\b(Won't Believe|Secret|Top|Guess)\b/i
            record.errors[attribute] << (options[:message] || "is not clickbait")
        end
    end
    
end
