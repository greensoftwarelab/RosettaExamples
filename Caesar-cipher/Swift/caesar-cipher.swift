var arr:[Character]=[" ","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

func res(st:String,ar:[Character],x:Int,ro:String)->String{

    var str2:[Character]=[]

    for i in st.characters
    {

        for j in 0...25
        {


            if i==ar[j]
            {

                switch ro
                {
                    case "right":

                    if(j+x<=25)
                    {

                        str2.append(ar[j+x])
                        break

                    }
                    else
                    {

                        str2.append(ar[j+x-26])
                        break
                    }

                    case "left":

                     if(j-x>=0)
                    {

                        str2.append(ar[j-x])
                        break
                    }
                    else
                    {

                        str2.append(ar[j-x+26])
                        break
                    }
                   default:
                   print("incorrect input for rotation direction")
                }


            }
        }
    }

    return String(str2)
}

var mssg:String="the action of a caesar cipher is to replace each plaintext letter with a different one a fixed number of places down the alphabet. the cipher illustrated here uses a left shift of three, so that each occurrence of e in the plaintext becomes b in the ciphertext.in cryptography, a caesar cipher, also known as caesars cipher, the shift cipher, caesars code or caesar shift, is one of the simplest and most widely known encryption techniques. it is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. for example, with a left shift of 3, d would be replaced by a, e would become b, and so on. the method is named after julius caesar, who used it in his private correspondence. the encryption step performed by a caesar cipher is often incorporated as part of more complex schemes, such as the vigenère cipher, and still has modern application in the rot13 system. as with all single-alphabet substitution ciphers, the caesar cipher is easily broken and in modern practice offers essentially no communication security."
var x1:Int=12
var rot:String="right"
var rotstr:String=res(st:mssg,ar:arr,x:x1,ro:rot)
print(rotstr)
var rot2:String="left"
var rotstr2:String=res(st:rotstr,ar:arr,x:x1,ro:rot2)
print(rotstr2)
