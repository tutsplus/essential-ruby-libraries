require "digest"

Digest::SHA1.digest         "my-password" # => \xED\xBD^\x11\x9F\x94\xBA\xDB\x9F\x99\xA6z\xC6\xFFLzR\x04\xADa
Digest::SHA1.hexdigest      "my-password" # => edbd5e119f94badb9f99a67ac6ff4c7a5204ad61
Digest::SHA1.base64digest   "my-password" # => 7b1eEZ+UutufmaZ6xv9MelIErWE=

Digest::MD5.digest          "my-password" # => \xBE\xDCE'\x93\xB9\xD8\xFB-\xE4\xB2bVu\x97w
Digest::MD5.hexdigest       "my-password" # => bedc452793b9d8fb2de4b26256759777
Digest::MD5.base64digest    "my-password" # => vtxFJ5O52Pst5LJiVnWXdw==

Digest::SHA256.digest       "my-password" # => o\xA2(\x8C6\e\xEC\xCE>0\xBALA\xBE}\x8B\xA0\x1E5\x80Voz\xCCv\xA7\xF9\x99\x94GLF
Digest::SHA256.hexdigest    "my-password" # => 6fa2288c361becce3e30ba4c41be7d8ba01e3580566f7acc76a7f99994474c46
Digest::SHA256.base64digest "my-password" # => b6IojDYb7M4+MLpMQb59i6AeNYBWb3rMdqf5mZRHTEY=
