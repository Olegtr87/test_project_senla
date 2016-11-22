public class CryptPassword {

    public static String cryptPassword(String decPass){
    	
		Blob exampleIv = Blob.valueOf('Example of IV123');
		Blob key = Crypto.generateAesKey(128);
		Blob data = Blob.valueOf(decPass);
		Blob encrypted = Crypto.encrypt('AES128', key, exampleIv, data);
		
		String encryptedString = EncodingUtil.base64encode(encrypted);
				
		return encryptedString;
    }
    
}