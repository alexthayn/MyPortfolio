package WashingMachine;

public class NotFullyPaidState implements State {
	WashingMachine washingMachine;
	
	//Constructor
	public NotFullyPaidState(WashingMachine wm) {
		this.washingMachine = wm;
	}
	
	public void insertQuarters() {
		if(washingMachine.getNumQuarters() < 4) {
			System.out.println("You have inserted " + washingMachine.getNumQuarters() + " quarters, " 
					+ (4 - washingMachine.getNumQuarters()) + " more needed.");
		}
		else if(washingMachine.getNumQuarters() == 4) {
			System.out.println("Machine is ready to be started.");
			washingMachine.setState(washingMachine.getHasPaidState());
		}else if(washingMachine.getNumQuarters() > 4) {
			System.out.println("You have already inserted $1.00, no more payment is needed.");
			System.out.println("Returning "+ (washingMachine.getNumQuarters() -4) + " extra quarters");
			washingMachine.setNumQuarters(4);
			System.out.println("Machine is ready to be started.");
			washingMachine.setState(washingMachine.getHasPaidState());
		}
	}
	public void ejectQuarters() {
		if(washingMachine.getNumQuarters() <= 0) {
			System.out.println("You have not inserted any quarters");
		}else {
			System.out.println("Returning " + washingMachine.getNumQuarters() + " quarters");
			washingMachine.setNumQuarters(0);
		}
	}
	public void start() {
		if(washingMachine.getNumQuarters() == 4) {
			washingMachine.setState(washingMachine.getHasPaidState());
			washingMachine.setNumQuarters(0);
		}else
			System.out.println("Cannot start machine, you haven't fully paid for the wash yet.");
	}
	public void cancel() {
		System.out.println("You have not started the machine yet.");
	}
	
	public String toString() {
		return "is waiting to receive payment";
	}
}
