package com.mycompany.webapp.items;

import java.util.HashMap;

import org.json.JSONObject;
import org.springframework.stereotype.Component;

import com.mycompany.webapp.dto.Estimate;

@Component
public class EstimateProcess {
	private HashMap<String, Double> typeWeightMap = new HashMap<>();
	private HashMap<String, Integer> priceMap = new HashMap<>();
	private int totalPrice;
	private JSONObject jsonObject = new JSONObject();
	
	public EstimateProcess() {
		typeWeightMap.put("house", 1.0);
		typeWeightMap.put("officetel", 1.25);
		typeWeightMap.put("normal", 1.0);
		typeWeightMap.put("braces", 1.5);
		typeWeightMap.put("children", 1.25);
		
		priceMap.put("laminate", 70000);
		priceMap.put("gangmaru", 90000);
		priceMap.put("marble", 150000);
		priceMap.put("paper", 4000);
		priceMap.put("silk", 6000);
		priceMap.put("k3000b", 2500000);
		priceMap.put("k5000b", 4000000);
		priceMap.put("s2100z", 2350000);
		priceMap.put("furniture1", 40000);
		priceMap.put("furniture2", 30000);
		priceMap.put("furniture3", 30000);
	}
	
	public HashMap<String, Double> getTypeWeightMap() {
		return typeWeightMap;
	}
	
	public int categoryTotalPrice(String targetName, int targetCount) {
		int price = priceMap.get(targetName);
		int result = price * targetCount;
		totalPrice += result;
		
		jsonObject.put(targetName, targetCount);
		jsonObject.put(targetName+"Total", result);
		return result;
	}
	
	public int getTotalPrice() {
		return totalPrice;
	}
	
	public JSONObject jsonWrapper(Estimate estimate) {
		totalPrice = (int) (totalPrice * typeWeightMap.get(estimate.getEbuildingType()) * typeWeightMap.get(estimate.getEdentalType()));
		jsonObject.put("totalPrice", totalPrice);
		return jsonObject;
	}
}
