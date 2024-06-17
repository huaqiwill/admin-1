package com.ruoyi.info.domain;

import lombok.Data;
import lombok.ToString;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 生物信息管理对象 u_biology
 *
 * @author 31734
 */
@Data
@ToString
public class Biology extends BaseEntity {

    private Long id;

    @Excel(name = "生物编号")
    private Long num;

    @Excel(name = "生物名称")
    private String name;

    @Excel(name = "生物门属")
    private String men;

    @Excel(name = "生物危害")
    private String harm;

    @Excel(name = "世界分布")
    private String worldDistribution;

    @Excel(name = "拉丁名")
    private String latin;
}
