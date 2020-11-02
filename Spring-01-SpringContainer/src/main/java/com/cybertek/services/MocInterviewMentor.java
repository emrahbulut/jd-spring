package com.cybertek.services;

import com.cybertek.interfaces.Mentor;

public class MocInterviewMentor implements Mentor {

    @Override
    public void createAccount() {
        System.out.println("MOC interview Mentor Account is created");
    }
}
