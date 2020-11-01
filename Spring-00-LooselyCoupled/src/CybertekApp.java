import service.FullTimeMentor;
import service.MentorAccount;
import service.PartTimeMentor;

public class CybertekApp {

    public static void main(String[] args) {

        FullTimeMentor fullTime = new FullTimeMentor();
        PartTimeMentor partTime = new PartTimeMentor();

        MentorAccount partMentor = new MentorAccount(fullTime);
        MentorAccount fullMentor = new MentorAccount (partTime);

        partMentor.manageAccount();
        fullMentor.manageAccount();
    }

}

