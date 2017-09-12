package edu.ynu.software.Rocket.excellentHouse.service;

import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import java.security.GeneralSecurityException;

/**
 * Created by maxleo on 17-9-12.
 */
public interface EmailService {
    public void snedVerMail(String EmailAddr, String VerCode, String userName) throws Exception;

}
