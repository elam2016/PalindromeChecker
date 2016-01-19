public void setup(){
	String lines[] = loadStrings("palindromes.txt");
	println("there are " + lines.length + " lines");
	for (int i=0; i < lines.length; i++) {
		if(palindrome(justLetters(noSpaces(lines[i])).toLowerCase())==true){
			println(lines[i] + " IS a palidrome.");
		} else{
			println(lines[i] + " is NOT a palidrome.");
		}
	}
}

public String noSpaces(String sWord){
	String s = new String();
	for(int i = 0; i < sWord.length(); i++){
		if(!(sWord.substring(i, i+1).equals(" ")))
			s += sWord.substring(i, i+1);
		}
	return s;
}

public String justLetters(String sString){
	String s = new String();
	for(int i = 0; i < sString.length(); i++){
		if(Character.isLetter(sString.charAt(i)))
			s += sString.substring(i, i+1);
		}
	return s;
}

public String reverse(String str){
	String sNew = new String();
	int nLast = str.length()-1;
	for(int nI = nLast; nI >= 0; nI--){
		sNew += (char)str.charAt(nI);
	}
	return justLetters(noSpaces(sNew)).toLowerCase();
}

public boolean palindrome(String word){
	if(word.equals(reverse(word)))
		return true;
	return false;
}
