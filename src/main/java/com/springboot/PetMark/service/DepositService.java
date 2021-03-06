package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Deposit;

public interface DepositService {
	List<Deposit> findAll();

	Deposit findById(int id);
	
	List<Deposit> findByAccount(Account account);
	
	void add(Deposit deposit);
	List<Deposit> findByAccountStt(Account account, String stt);
}
