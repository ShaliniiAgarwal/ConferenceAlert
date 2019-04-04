package io.conference.service;

public interface MailService {
   public void send(String fromAddress,String toAddress,String subject,String content) throws Exception;
}
