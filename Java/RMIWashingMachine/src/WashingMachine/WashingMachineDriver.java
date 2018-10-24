package WashingMachine;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.rmi.Naming;

public class WashingMachineDriver {
	public static void main(String[] args) {
		WashingMachine washingMachine = null;
		int machineNum;
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		if(args.length < 2) {
			System.out.println("Washing machine <Location> <MachineNumber>" );
			System.exit(1);
		}
		
		try {
			machineNum = Integer.parseInt(args[1]);
			
			washingMachine = new WashingMachine(args[0],machineNum);
			Naming.rebind("//"+args[0]+"/washingmachine",washingMachine);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		int choice=0;
		
		System.out.println(washingMachine);
		System.out.println("Welcome to Alex's " + washingMachine.getLocation() + " laundromat!\n");
		
		while(true) {
			System.out.println(
					"\nPlease select an option: \n"+
					"1. Insert a quarter (cost $1.00)\n"+
					"2. Eject quarters\n"+
					"3. Start Machine\n"+
					"4. Cancel Wash");
			try {
				choice = Integer.parseInt(reader.readLine());
				System.out.println("YOUR CHOICE: "+ choice);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			switch(choice) {
				case 1: 
					washingMachine.insertQuarter(1);
					break;
				case 2: 
					washingMachine.ejectQuarters();
					break;
				case 3: 
					washingMachine.start();
					break;
				case 4: 
					washingMachine.cancel();
					break;
				default:
					System.out.println("That is an invalid option you bum!.");
			}
		}
	}
}
