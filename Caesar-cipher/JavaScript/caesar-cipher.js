function caesar(key, strPlain)  {

    // Int -> String -> String
    let caesar = (k, s) => s.split('')
        .map(c => tr(
            inRange(['a', 'z'], c) ? 'a' :
            inRange(['A', 'Z'], c) ? 'A' : 0,
            k, c
        ))
        .join('');

    // Int -> String -> String
    let unCaesar = (k, s) => caesar(26 - (k % 26), s);

    // Char -> Int -> Char -> Char
    let tr = (base, offset, char) =>
        base ? (
            String.fromCharCode(
                ord(base) + (
                    ord(char) - ord(base) + offset
                ) % 26
            )
        ) : char;

    // [a, a] -> a -> b
    let inRange = ([min, max], v) => !(v < min || v > max);

    // Char -> Int
    let ord = c => c.charCodeAt(0);

    // range :: Int -> Int -> [Int]
    let range = (m, n) =>
        Array.from({
            length: Math.floor(n - m) + 1
        }, (_, i) => m + i);

    // TEST
    let strCipher = caesar(key, strPlain),
        strDecode = unCaesar(key, strCipher);

    return strCipher+"\n"+strDecode;

}
console.log(caesar(12, 'the action of a caesar cipher is to replace each plaintext letter with a different one a fixed number of places down the alphabet. the cipher illustrated here uses a left shift of three, so that each occurrence of e in the plaintext becomes b in the ciphertext.in cryptography, a caesar cipher, also known as caesars cipher, the shift cipher, caesars code or caesar shift, is one of the simplest and most widely known encryption techniques. it is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. for example, with a left shift of 3, d would be replaced by a, e would become b, and so on. the method is named after julius caesar, who used it in his private correspondence. the encryption step performed by a caesar cipher is often incorporated as part of more complex schemes, such as the vigenère cipher, and still has modern application in the rot13 system. as with all single-alphabet substitution ciphers, the caesar cipher is easily broken and in modern practice offers essentially no communication security.'));
