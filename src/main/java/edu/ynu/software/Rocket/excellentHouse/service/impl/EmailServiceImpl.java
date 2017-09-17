package edu.ynu.software.Rocket.excellentHouse.service.impl;

import com.sun.mail.util.MailSSLSocketFactory;
import edu.ynu.software.Rocket.excellentHouse.service.EmailService;
import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.security.GeneralSecurityException;
import java.util.Properties;

/**
 * Created by maxleo on 17-9-12.
 */
@Service
public class EmailServiceImpl implements EmailService{

    private String EmailAddr;
    private String verCode;
    private String userName;

    public void snedVerMail(String EmailAddr, String verCode, String userName) throws Exception {
        this.EmailAddr = EmailAddr;
        this.verCode = verCode;
        this.userName = userName;
        send();
    }

    public void send() throws Exception {
        Properties prop = new Properties();
        // 开启debug调试，以便在控制台查看
        prop.setProperty("mail.debug", "true");
        // 设置邮件服务器主机名
        prop.setProperty("mail.host", "smtp.qq.com");
        // 发送服务器需要身份验证
        prop.setProperty("mail.smtp.auth", "true");
        // 发送邮件协议名称
        prop.setProperty("mail.transport.protocol", "smtp");

        // 开启SSL加密，否则会失败
        MailSSLSocketFactory sf = new MailSSLSocketFactory();
        sf.setTrustAllHosts(true);
        prop.put("mail.smtp.ssl.enable", "true");
        prop.put("mail.smtp.ssl.socketFactory", sf);

        // 创建session
        Session session = Session.getInstance(prop);

        // 通过session得到transport对象
        Transport ts = session.getTransport();
        // 连接邮件服务器：邮箱类型，帐号，授权码代替密码（更安全）
        ts.connect("smtp.qq.com", "351976788", "muhwcjazwqdybgca");
        // 后面的字符是授权码，用qq密码失败了

        // 创建邮件
        Message message = createSimpleMail(session);
        // 发送邮件
        ts.sendMessage(message, message.getAllRecipients());
        ts.close();
    }

    public MimeMessage createSimpleMail(Session session)
            throws Exception {
        // 创建邮件对象
        MimeMessage message = new MimeMessage(session);
        // 指明邮件的发件人
        message.setFrom(new InternetAddress("excellenthouse@foxmail.com"));
        // 指明邮件的收件人，现在发件人和收件人是一样的，那就是自己给自己发
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(this.EmailAddr));
        // 邮件的标题
        message.setSubject("Welcome to register in Excellent House");
        // 邮件的文本内容
        String msg;
        msg = "Dear user " + this.userName + ":<br>";
        msg += "Thanks for joining The Excellent House!<br>";
        msg += "Click the following URL to finish registration:<br>";
        String link = "http://localhost:8080/user/emailConfirm?code=" + this.verCode;
        msg += link;
        msg += "<br>Thanks for your cooperation.";

        message.setContent(msg, "text/html;charset=UTF-8");
        // 返回创建好的邮件对象
        return message;
    }


}