package com.DS.entity;

import java.util.Date;

public class Commodity {
    private Integer id;

    private String commodityName;

    private String commodityImger;

    private String oneClassTable;

    private String secondaryClassTable;

    private Integer brandId;

    private Date createTime;

    private String commodityDescrption;

    @Override
	public String toString() {
		return "Commodity [id=" + id + ", commodityName=" + commodityName + ", commodityImger=" + commodityImger
				+ ", oneClassTable=" + oneClassTable + ", secondaryClassTable=" + secondaryClassTable + ", brandId="
				+ brandId + ", createTime=" + createTime + ", commodityDescrption=" + commodityDescrption + "]";
	}

	public Commodity(Integer id, String commodityName, String commodityImger, String oneClassTable,
			String secondaryClassTable, Integer brandId, Date createTime, String commodityDescrption) {
		super();
		this.id = id;
		this.commodityName = commodityName;
		this.commodityImger = commodityImger;
		this.oneClassTable = oneClassTable;
		this.secondaryClassTable = secondaryClassTable;
		this.brandId = brandId;
		this.createTime = createTime;
		this.commodityDescrption = commodityDescrption;
	}

	public Commodity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCommodityName() {
        return commodityName;
    }

    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName == null ? null : commodityName.trim();
    }

    public String getCommodityImger() {
        return commodityImger;
    }

    public void setCommodityImger(String commodityImger) {
        this.commodityImger = commodityImger == null ? null : commodityImger.trim();
    }

    public String getOneClassTable() {
        return oneClassTable;
    }

    public void setOneClassTable(String oneClassTable) {
        this.oneClassTable = oneClassTable == null ? null : oneClassTable.trim();
    }

    public String getSecondaryClassTable() {
        return secondaryClassTable;
    }

    public void setSecondaryClassTable(String secondaryClassTable) {
        this.secondaryClassTable = secondaryClassTable == null ? null : secondaryClassTable.trim();
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCommodityDescrption() {
        return commodityDescrption;
    }

    public void setCommodityDescrption(String commodityDescrption) {
        this.commodityDescrption = commodityDescrption == null ? null : commodityDescrption.trim();
    }
}