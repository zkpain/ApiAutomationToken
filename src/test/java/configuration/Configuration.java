package configuration;

import org.omg.CORBA.PUBLIC_MEMBER;

public class Configuration {
    public static final String HOST="http://todo.ly/";
    //  user:pwd ---> Basic base64
    public static final String BASIC_AUTHENTICATION="Basic emtwYWluQHlvcG1haWwuY29tOnlvcDEyMw==";
    public static final String BASIC_AUTHENTICATION_HEADER="Authorization";
    public static final String TOKEN_AUTHENTICATION_HEADER="Token";
}
