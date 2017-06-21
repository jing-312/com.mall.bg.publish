package com.DS.component.contorller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.DS.component.service.CommodityService;

/**
 * 用来控制商品商品发布的请求转发器。
 * @author Administrator
 *
 */
@Controller
public class CommodityHandler {

	@Autowired
	private CommodityService commodityService;
	@RequestMapping("/goto_product_publish")
	public String goto_commodity_publish(){
		
		
		return "product_publish";
	}
	
}
