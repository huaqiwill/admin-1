package com.ruoyi.info.domain;

import lombok.Data;
import lombok.ToString;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 港口信息管理对象 u_port
 *
 * @author 31734
 */
@Data
@ToString
public class Port extends BaseEntity {

    private Long id;

    @Excel(name = "港口编号")
    private Long num;

    @Excel(name = "港口名称")
    private String name;

    @Excel(name = "国家名称")
    private String countryId;

    @Excel(name = "港口状态")
    private Integer status;

    @Excel(name = "所在省份")
    private String province;

}
