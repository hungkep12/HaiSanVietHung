package com.haisanviethung;

import java.util.List;

import com.haisanviethung.entities.Items;

public class IsExisting {

	public static int isExisting(int id, List<Items> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getId() == id)
				return i;

		}
		return -1;
	}
}
