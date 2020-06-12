package web.utility;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class Password {

	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(4);


    public String encriptador(String password) {

        return encoder.encode(password);
        
    }
}
