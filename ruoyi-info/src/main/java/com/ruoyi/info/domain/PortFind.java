package com.ruoyi.info.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.ToString;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 港口发现生物对象 u_port_find
 *
 * @author 31734
 */
@Data
@ToString
public class PortFind extends BaseEntity {

    private Long id;

    @Excel(name = "生物编号")
    private Long biologyId;

    @Excel(name = "生物名称")
    private String biologyName;

    @Excel(name = "港口编号")
    private Long portId;

    @Excel(name = "港口名称")
    private String portName;

    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "首次发现时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date firstFoundTime;

    @Excel(name = "首次发现地点")
    private String firstFoundLocation;
}
