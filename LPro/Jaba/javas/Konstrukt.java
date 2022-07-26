import java.util.Scanner;

public class Konstuct {

    public static void main(String[] args) {

        Scanner rid = new Scanner(System.in);
        int ag1;
        String nm1, fm1;

        System.out.println("Vvedite imya chelovyaka:");
        nm1 = rid.nextLine();
        System.out.println("Vvedite familiu chelovyaka:");
        fm1 = rid.nextLine();
        System.out.println("Vvedite vozrast chelovyaka:");
        ag1 = rid.nextInt();
        Chel hren = new Chel(ag1, nm1, fm1);
        System.out.println("My name is "+hren.nam+", family is "+hren.fam+", and im "+hren.age+" years old.");
    }

    public static class Chel {
        int age;
        String nam, fam;
        public Chel(int age, String nam, String fam) {
            this.age = age;
            this.nam = nam;
            this.fam = fam;
        }
    }
}