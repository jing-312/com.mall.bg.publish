package com.DS.component.Mapper;

import com.DS.entity.Commodity;
import java.util.List;

public interface CommodityMapper {
    int insert(Commodity record);

    List<Commodity> selectAll();
}