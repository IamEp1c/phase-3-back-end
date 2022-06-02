class List < ActiveRecord::Base
    has_many :tasks

    def hello
        "hello world!"
    end


end