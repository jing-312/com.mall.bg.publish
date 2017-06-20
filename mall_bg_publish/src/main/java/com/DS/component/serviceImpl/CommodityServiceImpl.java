package com.DS.component.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.DS.component.Mapper.CommodityMapper;
import com.DS.component.service.CommodityService;
/**
 * 商品发布逻辑业务层
 * @author Administrator
 *
 */
@Service
public class CommodityServiceImpl implements CommodityService {

	@Autowired
	private CommodityMapper commodityMapper;
	
}
