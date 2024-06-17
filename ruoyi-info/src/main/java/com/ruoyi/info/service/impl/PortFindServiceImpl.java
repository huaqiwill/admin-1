package com.ruoyi.info.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import com.ruoyi.info.mapper.PortFindMapper;
import com.ruoyi.info.domain.PortFind;
import com.ruoyi.info.service.IPortFindService;

import javax.annotation.Resource;

/**
 * 港口发现生物Service业务层处理
 *
 * @author ruoyi
 * @date 2024-06-17
 */
@Service
public class PortFindServiceImpl implements IPortFindService {
    @Resource
    private PortFindMapper portFindMapper;

    /**
     * 查询港口发现生物
     *
     * @param id 港口发现生物主键
     * @return 港口发现生物
     */
    @Override
    public PortFind selectPortFindById(Long id) {
        return portFindMapper.selectPortFindById(id);
    }

    /**
     * 查询港口发现生物列表
     *
     * @param portFind 港口发现生物
     * @return 港口发现生物
     */
    @Override
    public List<PortFind> selectPortFindList(PortFind portFind) {
        return portFindMapper.selectPortFindList(portFind);
    }

    /**
     * 新增港口发现生物
     *
     * @param portFind 港口发现生物
     * @return 结果
     */
    @Override
    public int insertPortFind(PortFind portFind) {
        return portFindMapper.insertPortFind(portFind);
    }

    /**
     * 修改港口发现生物
     *
     * @param portFind 港口发现生物
     * @return 结果
     */
    @Override
    public int updatePortFind(PortFind portFind) {
        return portFindMapper.updatePortFind(portFind);
    }

    /**
     * 批量删除港口发现生物
     *
     * @param ids 需要删除的港口发现生物主键
     * @return 结果
     */
    @Override
    public int deletePortFindByIds(Long[] ids) {
        return portFindMapper.deletePortFindByIds(ids);
    }

    /**
     * 删除港口发现生物信息
     *
     * @param id 港口发现生物主键
     * @return 结果
     */
    @Override
    public int deletePortFindById(Long id) {
        return portFindMapper.deletePortFindById(id);
    }
}
