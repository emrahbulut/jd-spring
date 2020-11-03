package com.cybertek.services;

import com.cybertek.interfaces.Course;
import com.cybertek.interfaces.ExtraSessions;

public class Java implements Course {

//    How to imply field
     public int x;

//    1st way
//    OfficeHours officeHours;

//    We need to create a constructor for Injection if we use constructor approach.
//    public Java(OfficeHours officeHours) {
//        this.officeHours = officeHours;
//    }

//    2nd way
    ExtraSessions extraSessions;

    public Java(ExtraSessions extraSessions) {
        this.extraSessions = extraSessions;
    }

    @Override
    public void getTeachingHours() {

        System.out.println("Weekly Teaching Hours: " + (20+ extraSessions.getHours()));

    }
}
