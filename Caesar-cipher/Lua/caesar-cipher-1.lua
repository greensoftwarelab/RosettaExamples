local function encrypt(text, key)
	return text:gsub("%a", function(t)
			local base = (t:lower() == t and string.byte('a') or string.byte('A'))

			local r = t:byte() - base
			r = r + key
			r = r%26 -- works correctly even if r is negative
			r = r + base
			return string.char(r)
		end)
end

local function decrypt(text, key)
	return encrypt(text, -key)
end

caesar = {
	encrypt = encrypt,
	decrypt = decrypt,
}

-- test
do
	local text = "the action of a caesar cipher is to replace each plaintext letter with a different one a fixed number of places down the alphabet. the cipher illustrated here uses a left shift of three, so that each occurrence of e in the plaintext becomes b in the ciphertext.in cryptography, a caesar cipher, also known as caesars cipher, the shift cipher, caesars code or caesar shift, is one of the simplest and most widely known encryption techniques. it is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. for example, with a left shift of 3, d would be replaced by a, e would become b, and so on. the method is named after julius caesar, who used it in his private correspondence. the encryption step performed by a caesar cipher is often incorporated as part of more complex schemes, such as the vigenère cipher, and still has modern application in the rot13 system. as with all single-alphabet substitution ciphers, the caesar cipher is easily broken and in modern practice offers essentially no communication security."
	local encrypted = caesar.encrypt(text, 12)
	local decrypted = caesar.decrypt(encrypted, 12)
	print(encrypted)
	print(decrypted)
end
