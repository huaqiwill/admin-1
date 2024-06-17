package com.ruoyi.info.service.impl;

import java.util.List;

import com.ruoyi.info.domain.dto.CommonDTO;
import org.springframework.stereotype.Service;
import com.ruoyi.info.mapper.PortMapper;
import com.ruoyi.info.domain.Port;
import com.ruoyi.info.service.IPortService;

import javax.annotation.Resource;

/**
 * 港口信息管理Service业务层处理
 *
 * @author ruoyi
 * @date 2024-06-17
 */
@Service
public class PortServiceImpl implements IPortService {
    @Resource
    private PortMapper portMapper;

    /**
     * 查询港口信息管理
     *
     * @param id 港口信息管理主键
     * @return 港口信息管理
     */
    @Override
    public Port selectPortById(Long id) {
        return portMapper.selectPortById(id);
    }

    /**
     * 查询港口信息管理列表
     *
     * @param port 港口信息管理
     * @return 港口信息管理
     */
    @Override
    public List<Port> selectPortList(Port port) {
        return portMapper.selectPortList(port);
    }

    /**
     * 新增港口信息管理
     *
     * @param port 港口信息管理
     * @return 结果
     */
    @Override
    public int insertPort(Port port) {
        return portMapper.insertPort(port);
    }

    /**
     * 修改港口信息管理
     *
     * @param port 港口信息管理
     * @return 结果
     */
    @Override
    public int updatePort(Port port) {
        return portMapper.updatePort(port);
    }

    /**
     * 批量删除港口信息管理
     *
     * @param ids 需要删除的港口信息管理主键
     * @return 结果
     */
    @Override
    public int deletePortByIds(Long[] ids) {
        return portMapper.deletePortByIds(ids);
    }

    /**
     * 删除港口信息管理信息
     *
     * @param id 港口信息管理主键
     * @return 结果
     */
    @Override
    public int deletePortById(Long id) {
        return portMapper.deletePortById(id);
    }

    @Override
    public List<CommonDTO> selectPortNameList() {
        return portMapper.selectPortNameList();
    }
}
