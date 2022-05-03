package com.mycompany.webapp.items;

import java.util.HashMap;

import org.springframework.stereotype.Component;

import com.mycompany.webapp.dto.Estimate;

@Component
public class EstimateProcess {
	private HashMap<String, Double> typeWeightMap = new HashMap<>();
	private HashMap<String, Integer> priceMap = new HashMap<>();
	private int totalPrice;
	
	public EstimateProcess() {
		typeWeightMap.put("house", 1.0);
		typeWeightMap.put("officetel", 1.25);
		typeWeightMap.put("normalDental", 1.0);
		typeWeightMap.put("bracesDental", 1.5);
		typeWeightMap.put("childrenDental", 1.25);
		
		priceMap.put("laminate", 70000);
		priceMap.put("gangmaru", 90000);
		priceMap.put("marble", 150000);
		priceMap.put("paper", 4000);
		priceMap.put("silk", 6000);
		priceMap.put("k3000b", 2500000);
		priceMap.put("k5000b", 4000000);
		priceMap.put("s2100z", 2350000);
		priceMap.put("funiture1", 40000);
		priceMap.put("furniture2", 30000);
		priceMap.put("furniture3", 30000);
	}
	
	public HashMap<String, Double> getTypeWeightMap() {
		return typeWeightMap;
	}
	
	public int categoryTotalPrice(String targetName, int targetCount) {
		int result = priceMap.get(targetName) * targetCount;
		totalPrice += result;
		return result;
	}
	
	public int getTotalPrice(Estimate estimate) {
		return totalPrice;
	}
}
