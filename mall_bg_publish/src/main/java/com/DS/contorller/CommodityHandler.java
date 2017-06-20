package com.DS.contorller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.DS.service.CommodityService;
/**
 * 用来处理请求的控制转发器
 * @author Administrator
 *
 */
@Controller
public class CommodityHandler {

	@Autowired 
	private CommodityService commodityService;
	
}
