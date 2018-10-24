package WashingMachine;

import java.rmi.*;

public class WashingMachineMonitor {
	WashingMachineRemote machine;
	
	public WashingMachineMonitor(WashingMachineRemote wmr) {
		this.machine = wmr;
	}
	
	public void report() {
		try {
			System.out.println("\nLOCATION: "+ machine.getLocation());
			System.out.println("MACHINE NUMBER: " + machine.getMachineNum());
			System.out.println("CURRENT STATE: " + machine.getStringState()+ "\n");
		}catch (RemoteException e) {
			e.printStackTrace();
		}
	}
}
