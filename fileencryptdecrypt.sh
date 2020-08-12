#!bin/bash

echo "This is a File Encrypter And Decrypter Tool.."
echo "Please Choose What Do You Want To DO"

author(){
printf "\e[1;92m TOOL IS CREATED BY KRISNA PRANAV \e[1;92m \n"
printf "\e[1;92m Github Link https://www.github.com/krishpranav \e[1;92m \n"
printf "\e[1;92m Do Not Forget To Follow ME \e[1;92m \n"
}

choice="Encrypt / Decrypt"

select option in $choice; do
	if [$REPLY = 1];
then
	echo "You Have selected Encryption Mode"
	echo "Please Enter The File Name with path"
	read file;
	gpg -c $file
	echo "The File Has Been Encrypted"
else
	echo "You Have selected Decryption Mode"
	echo "Please Enter The File Name With Path"
	read file2;
	gpg -c $file2
	echo "The File Has been Decrypted"
fi

done
