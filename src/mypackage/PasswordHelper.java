package mypackage;

import org.bouncycastle.crypto.generators.SCrypt;

import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Base64;

public class PasswordHelper {
  private static final int N = 16384; // CPU/memory cost (should be power of 2, e.g., 16384)
  private static final int r = 8;     // block size
  private static final int p = 1;     // parallelization
  private static final int keyLength = 32; // desired key length in bytes
  private static final int saltLength = 16; // salt length in bytes

  // Generate a random salt
  private static byte[] generateSalt() {
    byte[] salt = new byte[saltLength];
    new SecureRandom().nextBytes(salt);
    return salt;
  }

  // Hash a password with Scrypt
  public static String hashPassword(String password) {
    byte[] salt = generateSalt();
    byte[] derived = SCrypt.generate(password.getBytes(), salt, N, r, p, keyLength);
    return Base64.getEncoder().encodeToString(salt) + "$" + Base64.getEncoder().encodeToString(derived);
  }

  // Verify a password
  public static boolean verifyPassword(String password, String storedHash) {
    String[] parts = storedHash.split("\\$");
    if (parts.length != 2) return false;
    byte[] salt = Base64.getDecoder().decode(parts[0]);
    byte[] expected = Base64.getDecoder().decode(parts[1]);
    byte[] actual = SCrypt.generate(password.getBytes(), salt, N, r, p, keyLength);
    return Arrays.equals(expected, actual);
  }

}
