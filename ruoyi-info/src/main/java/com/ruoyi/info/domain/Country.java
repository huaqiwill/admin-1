package com.ruoyi.info.domain;

import lombok.Data;
import lombok.ToString;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 国家信息管理对象 u_country
 *
 * @author 31734
 */
@Data
@ToString
public class Country extends BaseEntity {

    private Long id;

    @Excel(name = "国家编号")
    private Long num;

    @Excel(name = "国家名称")
    private String name;

    @Excel(name = "国家状态")
    private Integer status;

    @Excel(name = "贸易国家")
    private String isTrader;
}
