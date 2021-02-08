require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
  
def remove_strawberry(contacts)
      contacts.each do |person, contact_details_hash|     # first level of hash, iterates correctly
        if person == "Freddy Mercury"                     # when person iterates to freddy
          contact_details_hash.each do |attribute, data|  # second level, iterates over the key value
            if attribute == :favorite_ice_cream_flavors   # when person iterates to flavors
              data.delete_if {|ice_cream| ice_cream == "strawberry"} #delete_if iterates on the ice cream flavors
            end                                                      # until it finds strawberry
          end
        end
      end
end