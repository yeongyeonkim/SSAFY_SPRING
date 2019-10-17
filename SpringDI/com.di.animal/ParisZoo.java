package com.di.animal;

import java.util.List;

public class ParisZoo implements Zoo{
	
	List<Tiger> tigers; // 2마리
	List<Lion> lions; // 2마리
	
	public void setTigers(List<Tiger> tigers) {
		this.tigers = tigers;
	}
	
	public void setLions(List<Lion> lions) {
		this.lions = lions;
	}
	
	@Override
	public void info() {
		//lions, tigers를 loop처리
		for(Tiger t : tigers) t.info();
		for(Lion l : lions) l.info();
	}
	
}
