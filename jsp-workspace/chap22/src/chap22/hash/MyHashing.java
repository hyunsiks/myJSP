package chap22.hash;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MyHashing {

	public static String hash(String password) {
		
		
		try {
			MessageDigest sha256 = MessageDigest.getInstance("SHA-256");
			StringBuilder hashValue = new StringBuilder();
			
			for(byte b : sha256.digest(password.getBytes())) {
				hashValue.append(String.format("%02x", b));
			}
			System.out.println("해시결과 : " + hashValue);
			return hashValue.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
		
	}
}
