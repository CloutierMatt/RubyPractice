require 'openssl'

cipher = OpenSSL::Cipher.new('AES-128-CBC')

cipher.encrypt
key = cipher.random_key
iv = cipher.random_iv

test = "Test String"

encrypted = cipher.update(test) + cipher.final

puts encrypted

decipher  = OpenSSL::Cipher.new('AES-128-CBC')
decipher.decrypt
decipher.key = key
decipher.iv = iv

test2 = decipher.update(encrypted) + decipher.final

puts test2