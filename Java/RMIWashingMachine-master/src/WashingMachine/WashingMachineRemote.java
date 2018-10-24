package WashingMachine;

import java.rmi.Remote;
import java.rmi.RemoteException;

public interface WashingMachineRemote extends Remote{
	public String getLocation() throws RemoteException;
	public int getMachineNum() throws RemoteException;
	public String getStringState() throws RemoteException;
}
