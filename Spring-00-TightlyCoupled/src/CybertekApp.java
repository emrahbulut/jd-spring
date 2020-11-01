public class CybertekApp {

    public static void main(String[] args) {

        FullTImeMentor fullTime = new FullTImeMentor();
        PartTimeMentor partTime = new PartTimeMentor();

        Mentor mentor = new Mentor(fullTime, partTime); //MI
        mentor.manageAccount();

        //MI
    }
}