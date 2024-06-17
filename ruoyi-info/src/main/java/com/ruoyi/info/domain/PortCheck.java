package com.ruoyi.info.domain;

import java.math.BigDecimal;

import lombok.Data;
import lombok.ToString;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 港口检查生物对象 u_port_check
 *
 * @author 31734
 */
@Data
@ToString
public class PortCheck extends BaseEntity {

    private Long id;

    @Excel(name = "生物编号")
    private Long biologyId;

    @Excel(name = "生物名称")
    private String biologyName;

    @Excel(name = "港口编号")
    private Long portId;

    @Excel(name = "港口名称")
    private String portName;

    @Excel(name = "丰富度")
    private Long abundance;

    @Excel(name = "丰富度百分比")
    private BigDecimal abundanceRate;

}
