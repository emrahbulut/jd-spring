package com.cybertek;

import com.cybertek.interfaces.Course;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class CybertekApp {
    public static void main(String[] args) {

        ApplicationContext container = new ClassPathXmlApplicationContext("config.xml");

        Course course = container.getBean("java",Course.class);
        Course course2 = container.getBean("selenium",Course.class);

//        If the class name is all capital, Bean name should be all capital
        Course course3 = container.getBean("API",Course.class);

        course.getTeachingHours();
    }
}
