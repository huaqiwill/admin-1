package com.ruoyi.info.domain;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.ToString;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 国家发现生物对象 u_country_find
 *
 * @author ruoyi
 * @date 2024-06-17
 */
@Data
@ToString
public class CountryFind extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long id;

    @Excel(name = "生物编号")
    private Long biologyId;

    @Excel(name = "生物名称")
    private String biologyName;

    @Excel(name = "国家编号")
    private Long countryId;

    @Excel(name = "国家名称")
    private String countryName;

    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "发现时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date foundTime;

    @Excel(name = "发现位置")
    private String foundLocation;

    @Excel(name = "经度")
    private BigDecimal longitude;

    @Excel(name = "纬度")
    private BigDecimal latitude;
}
