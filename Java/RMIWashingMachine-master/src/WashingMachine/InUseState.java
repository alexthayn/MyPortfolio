package WashingMachine;

public class InUseState implements State{
	WashingMachine washingMachine;
	
	//Constructor
	public InUseState(WashingMachine wm) {
		this.washingMachine = wm;
	}
	
	public void insertQuarters() {
		System.out.println("System is currently in use and you cannot insert any payment right now.");
		washingMachine.setNumQuarters(0);
	}
	public void ejectQuarters() {
		System.out.println("Machine has already started, your payment is mine!");
	}
	public void start() {
		System.out.println("Machine is already running.");
	}
	public void cancel() {
		System.out.println("Canceling the wash.");
		washingMachine.setState(washingMachine.getNotFullyPaidState());
	}
	
	public String toString() {
		return "is currently running";
	}
}
