package com.DS.mapper;

import com.DS.entity.Commodity;
import java.util.List;

public interface CommodityMapper {
	
    int insert(Commodity record);

    List<Commodity> selectAll();
}