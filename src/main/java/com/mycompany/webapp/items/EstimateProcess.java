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
	private Estimate estimate;
	
	public EstimateProcess(Estimate estimate) {
		this.estimate = estimate;
		
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
	
	public int materialTotalPrice(String targetName, int targetCount) {
		int price = priceMap.get(targetName);
		int result = price * targetCount;
		totalPrice += result;
		
		if(targetName.charAt(0) == 'w') {
			estimate.setWallUnitPrice(price);
			estimate.setWallTotalPrice(result);
		} else {
			estimate.setFloorUnitPrice(price);
			estimate.setFloorTotalPrice(result);
		}
		
		return result;
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
	
	public JSONObject jsonWrapper() {
		totalPrice = (int) (totalPrice * typeWeightMap.get(estimate.getEbuildingType()) * typeWeightMap.get(estimate.getEdentalType()));
		jsonObject.put("totalPrice", totalPrice);
		return jsonObject;
	}
	
	public Estimate init() {
		int py = estimate.getEpy();
		estimate.setBuildingWeight(typeWeightMap.get(estimate.getEbuildingType()));
		estimate.setDentalWeight(typeWeightMap.get(estimate.getEdentalType()));
		estimate.setFloorTotalPrice(categoryTotalPrice(estimate.getEfloorType(), py));
		estimate.setWallTotalPrice(categoryTotalPrice(estimate.getEwallType(), py));
		estimate.setK3000bTotalPrice(categoryTotalPrice("k3000b", estimate.getEk3000b()));
		estimate.setK5000bTotalPrice(categoryTotalPrice("k5000b", estimate.getEk5000b()));
		estimate.setS2100zTotalPrice(categoryTotalPrice("s2100z", estimate.getEs2100z()));
		estimate.setFurniture1TotalPrice(categoryTotalPrice("furniture1", estimate.getEfurniture1()));
		estimate.setFurniture2TotalPrice(categoryTotalPrice("furniture2", estimate.getEfurniture2()));
		estimate.setFurniture3TotalPrice(categoryTotalPrice("furniture3", estimate.getEfurniture3()));
		jsonObject = jsonWrapper();
		estimate.setTotalPrice(totalPrice);
		
		return estimate;
	}
}
