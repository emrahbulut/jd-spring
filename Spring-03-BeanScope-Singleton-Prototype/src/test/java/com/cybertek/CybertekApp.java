package com.cybertek;

import com.cybertek.interfaces.Course;
import com.cybertek.services.Java;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class CybertekApp {

    public static void main(String[] args) {

        ApplicationContext container = new ClassPathXmlApplicationContext("config.xml");

//        Old way
//        Course course = new Java();

//        INTERFACE   =     OBJECT                  DOWN CASTING
        Course course = container.getBean("java", Course.class);

        course.getTeachingHours();

    }


}
