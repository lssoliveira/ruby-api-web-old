def contract(hash_obj)

    "response:\n#{JSON.pretty_generate(JSON.parse(hash_obj.to_s.force_encoding('UTF-8')))}"
  
    end
def request(hash_obj)

    "request:\n#{JSON.pretty_generate(hash_obj)}" 
      
    end