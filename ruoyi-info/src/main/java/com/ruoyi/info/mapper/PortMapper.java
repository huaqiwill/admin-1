package com.ruoyi.info.mapper;

import java.util.List;

import com.ruoyi.info.domain.Port;
import com.ruoyi.info.domain.dto.CommonDTO;

/**
 * 港口信息管理Mapper接口
 *
 * @author ruoyi
 * @date 2024-06-17
 */
public interface PortMapper {
    /**
     * 查询港口信息管理
     *
     * @param id 港口信息管理主键
     * @return 港口信息管理
     */
    public Port selectPortById(Long id);

    /**
     * 查询港口信息管理列表
     *
     * @param port 港口信息管理
     * @return 港口信息管理集合
     */
    public List<Port> selectPortList(Port port);

    /**
     * 新增港口信息管理
     *
     * @param port 港口信息管理
     * @return 结果
     */
    public int insertPort(Port port);

    /**
     * 修改港口信息管理
     *
     * @param port 港口信息管理
     * @return 结果
     */
    public int updatePort(Port port);

    /**
     * 删除港口信息管理
     *
     * @param id 港口信息管理主键
     * @return 结果
     */
    public int deletePortById(Long id);

    /**
     * 批量删除港口信息管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deletePortByIds(Long[] ids);

    List<CommonDTO> selectPortNameList();
}
