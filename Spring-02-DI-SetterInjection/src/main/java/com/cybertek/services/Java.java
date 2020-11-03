package com.cybertek.services;

import com.cybertek.interfaces.Course;
import com.cybertek.interfaces.ExtraSessions;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//@Getter
//@Setter
//@ToString
//If we use Data, it includes all above, and no need to create getter and setter method
@Data
public class Java implements Course {

    private ExtraSessions extraSessions;

//    public OfficeHours getOfficeHours() {
//        return officeHours;
//    }
//
//    public void setOfficeHours(OfficeHours officeHours) {
//        this.officeHours = officeHours;
//    }

    @Override
    public void getTeachingHours() {

        System.out.println("Weekly Teaching Hours: " + (20+ extraSessions.getHours()));

    }
}
