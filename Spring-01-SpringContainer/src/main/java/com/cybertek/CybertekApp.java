package com.cybertek;

import com.cybertek.interfaces.Mentor;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class CybertekApp {

    public static void main(String[] args) {

//        First way
        // BeanFactory container = new ClassPathXmlApplicationContext("config.xml");
        // Mentor mentor = (Mentor)container.getBean("partTimeMentor");

//        Second way
        ApplicationContext container = new ClassPathXmlApplicationContext("config.xml");
        Mentor mentor = container.getBean("fullTimeMentor", Mentor.class);

        mentor.createAccount();


    }
}