package com.ruoyi.info.service;

import java.util.List;
import com.ruoyi.info.domain.PortCheck;

/**
 * 港口检查生物Service接口
 * 
 * @author ruoyi
 * @date 2024-06-17
 */
public interface IPortCheckService 
{
    /**
     * 查询港口检查生物
     * 
     * @param id 港口检查生物主键
     * @return 港口检查生物
     */
    public PortCheck selectPortCheckById(Long id);

    /**
     * 查询港口检查生物列表
     * 
     * @param portCheck 港口检查生物
     * @return 港口检查生物集合
     */
    public List<PortCheck> selectPortCheckList(PortCheck portCheck);

    /**
     * 新增港口检查生物
     * 
     * @param portCheck 港口检查生物
     * @return 结果
     */
    public int insertPortCheck(PortCheck portCheck);

    /**
     * 修改港口检查生物
     * 
     * @param portCheck 港口检查生物
     * @return 结果
     */
    public int updatePortCheck(PortCheck portCheck);

    /**
     * 批量删除港口检查生物
     * 
     * @param ids 需要删除的港口检查生物主键集合
     * @return 结果
     */
    public int deletePortCheckByIds(Long[] ids);

    /**
     * 删除港口检查生物信息
     * 
     * @param id 港口检查生物主键
     * @return 结果
     */
    public int deletePortCheckById(Long id);
}
