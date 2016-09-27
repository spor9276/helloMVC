package service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import model.Customer;

public class CustomerService {
	private Map<String, Customer> customers;

	private static final CustomerService instance = new CustomerService();
	
	private CustomerService() {
		customers = new HashMap<String, Customer>();
			
	}
	
	public static CustomerService getInstance(){
		return instance;
	}
	
	public void addCustomer(Customer customer){
		customers.put(customer.getId(), customer);
	}
	
	public Customer findCustomer(String id){
		if(id != null){
			return(customers.get(id.toLowerCase()));
		}
		else{
			return null;
		}
	}
	public Customer login(String id, String password){
		Iterator<String> itr = customers.keySet().iterator();
		while(itr.hasNext()){
			String findid = itr.next();
			if(id.equals(findid) &&password.equals(customers.get(findid).getPassword())){
				return customers.get(findid);
			}
		}
		return null;
	}
	
}
