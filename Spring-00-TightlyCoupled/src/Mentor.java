public class Mentor {

    FullTImeMentor fullTimeMentor;
    PartTimeMentor partTimeMentor;
    //MI

    public Mentor(FullTImeMentor fullTimeMentor, PartTimeMentor partTimeMentor) { //MI
        this.fullTimeMentor = fullTimeMentor;
        this.partTimeMentor = partTimeMentor;
    }

    public void manageAccount(){
        fullTimeMentor.createAccount();
        partTimeMentor.createAccount();
        //MI
    }
}