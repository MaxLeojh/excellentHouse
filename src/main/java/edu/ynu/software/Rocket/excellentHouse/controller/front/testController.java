package edu.ynu.software.Rocket.excellentHouse.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

/**s
 * Created by maxleo on 17-9-11.
 */

@Controller
@RequestMapping("/register")
public class testController {

    @RequestMapping("/mail")
    @ResponseBody
    public ModelAndView mail(){
        ModelAndView rnt = new ModelAndView("mail");

        return rnt;
    }

    @RequestMapping("/send")
    @ResponseBody
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //设置发送方的SMTP地址
        String host = "smtp.qq.com";
        //user
        String name = "351976788@qq.com";
        //password
//        String password = "hensidaohaodede";
        String password = "muhwcjazwqdybgca";
        //muhwcjazwqdybgca

        TextMail mail = new TextMail(host,name,password);
        mail.setFrom("351976788@qq.com");
        mail.setTo("970478631@qq.com");
        mail.setSubject("mailTest");
        mail.setText("Hello World!");


        response.setContentType("text/html");
        response.setCharacterEncoding("gb2312");
        PrintWriter out = response.getWriter();

        if(mail.send())
            out.print("<font size='2'>邮件发送成功</font>");
        else
            out.print("<font size='2'>邮件发送失败</font>");
    }

    public class MyAuthenticator extends Authenticator {
        String name;
        String password;

        public MyAuthenticator(String name,String password){
            this.name = name;
            this.password = password;

        }
        protected PasswordAuthentication getPasswordAuthentication(){
            return new PasswordAuthentication(name,password);
        }
    }

    public class TextMail {
        private MimeMessage message;
        private Properties props;
        private Session session;
        private String name="";
        private String password="";

        public TextMail(String host,String name,String password){
            //发送邮件初始化
            this.name = name;
            this.password = password;
            props = new Properties();
            //设置SMTP主机
            props.put("mail.smtp.host", host);
            //设置SMTP属性验证
            props.put("mail.smtp.auth", true);
            //获得邮件会话对象
            MyAuthenticator auth = new MyAuthenticator(name,password);
            session = Session.getDefaultInstance(props, auth);
            session.setDebug(true);
            //创建MIME邮件对象
            message = new MimeMessage(session);
        }

        public void setFrom(String from){
            try{
                message.setFrom(new InternetAddress(from));

            }catch(AddressException e){ System.out.println("setFrom地址错误");}
            catch(MessagingException e){System.out.println("setFrom设置message错误");}
        }
        public void setTo(String to){
            try{

                message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            }catch(AddressException e){e.printStackTrace();}
            catch(MessagingException e){e.printStackTrace();}
        }
        public void setSubject(String subject){
            try{
                message.setSubject(subject);
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        public void setText(String text){
            try{
                message.setText(text);
            }catch(Exception e){
                e.printStackTrace();
            }
        }

        //send
        public boolean send(){
//        try {
//            System.out.println("写出message");
////            message.writeTo(System.out);
//        } catch (FileNotFoundException e1) {
//            // TODO Auto-generated catch block
//            System.out.println("写message出错");
//        } catch (IOException e1) {
//            // TODO Auto-generated catch block
//            e1.printStackTrace();
//        } catch (MessagingException e1) {
//            // TODO Auto-generated catch block
//            e1.printStackTrace();
//        }
            Transport transport = null;
            try{
                //创建SMTP邮件协议发送对象
                transport = session.getTransport("smtp");
                System.out.println("SMTP邮件协议对象创建成功");
            }catch(Exception e){ System.out.println("创建smtp邮件协议发送对象失败");return false;}
            try{//取得与邮件服务器的连接
                transport.connect((String)props.get("mail.smtp.host"),name, password);
                System.out.println("连接服务器成功");
            }catch(Exception e2){System.out.println("与邮件服务器连接失败");return false;}
            try{//通过邮件服务器发送邮件
                transport.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
            }catch(Exception e3){System.out.println("发送失败");  return false;}
            try{transport.close();}catch(Exception e){System.out.println("关闭连接失败");return false;}
            return true;


//        }catch(NoSuchProviderException e){
//            e.printStackTrace();
//            return false;
//        }catch(MessagingException e){
//            e.printStackTrace();
//            return false;
//        }
        }

    }
}
