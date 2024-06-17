package com.ruoyi.info.service;

import java.util.List;
import com.ruoyi.info.domain.PortFind;

/**
 * 港口发现生物Service接口
 * 
 * @author ruoyi
 * @date 2024-06-17
 */
public interface IPortFindService 
{
    /**
     * 查询港口发现生物
     * 
     * @param id 港口发现生物主键
     * @return 港口发现生物
     */
    public PortFind selectPortFindById(Long id);

    /**
     * 查询港口发现生物列表
     * 
     * @param portFind 港口发现生物
     * @return 港口发现生物集合
     */
    public List<PortFind> selectPortFindList(PortFind portFind);

    /**
     * 新增港口发现生物
     * 
     * @param portFind 港口发现生物
     * @return 结果
     */
    public int insertPortFind(PortFind portFind);

    /**
     * 修改港口发现生物
     * 
     * @param portFind 港口发现生物
     * @return 结果
     */
    public int updatePortFind(PortFind portFind);

    /**
     * 批量删除港口发现生物
     * 
     * @param ids 需要删除的港口发现生物主键集合
     * @return 结果
     */
    public int deletePortFindByIds(Long[] ids);

    /**
     * 删除港口发现生物信息
     * 
     * @param id 港口发现生物主键
     * @return 结果
     */
    public int deletePortFindById(Long id);
}
