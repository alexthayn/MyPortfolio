package WashingMachine;

public interface State {
	public void insertQuarters();
	public void ejectQuarters();
	public void start();
	public void cancel();
}
