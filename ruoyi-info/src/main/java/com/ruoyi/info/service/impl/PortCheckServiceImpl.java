package com.ruoyi.info.service.impl;

import java.util.List;
import org.springframework.stereotype.Service;
import com.ruoyi.info.mapper.PortCheckMapper;
import com.ruoyi.info.domain.PortCheck;
import com.ruoyi.info.service.IPortCheckService;

import javax.annotation.Resource;

/**
 * 港口检查生物Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-17
 */
@Service
public class PortCheckServiceImpl implements IPortCheckService 
{
    @Resource
    private PortCheckMapper portCheckMapper;

    /**
     * 查询港口检查生物
     * 
     * @param id 港口检查生物主键
     * @return 港口检查生物
     */
    @Override
    public PortCheck selectPortCheckById(Long id)
    {
        return portCheckMapper.selectPortCheckById(id);
    }

    /**
     * 查询港口检查生物列表
     * 
     * @param portCheck 港口检查生物
     * @return 港口检查生物
     */
    @Override
    public List<PortCheck> selectPortCheckList(PortCheck portCheck)
    {
        return portCheckMapper.selectPortCheckList(portCheck);
    }

    /**
     * 新增港口检查生物
     * 
     * @param portCheck 港口检查生物
     * @return 结果
     */
    @Override
    public int insertPortCheck(PortCheck portCheck)
    {
        return portCheckMapper.insertPortCheck(portCheck);
    }

    /**
     * 修改港口检查生物
     * 
     * @param portCheck 港口检查生物
     * @return 结果
     */
    @Override
    public int updatePortCheck(PortCheck portCheck)
    {
        return portCheckMapper.updatePortCheck(portCheck);
    }

    /**
     * 批量删除港口检查生物
     * 
     * @param ids 需要删除的港口检查生物主键
     * @return 结果
     */
    @Override
    public int deletePortCheckByIds(Long[] ids)
    {
        return portCheckMapper.deletePortCheckByIds(ids);
    }

    /**
     * 删除港口检查生物信息
     * 
     * @param id 港口检查生物主键
     * @return 结果
     */
    @Override
    public int deletePortCheckById(Long id)
    {
        return portCheckMapper.deletePortCheckById(id);
    }
}
