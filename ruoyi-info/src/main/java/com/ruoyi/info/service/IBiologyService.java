package com.ruoyi.info.service;

import java.util.List;

import com.ruoyi.info.domain.Biology;
import com.ruoyi.info.domain.dto.CommonDTO;

/**
 * 生物信息管理Service接口
 *
 * @author ruoyi
 * @date 2024-06-17
 */
public interface IBiologyService {
    /**
     * 查询生物信息管理
     *
     * @param id 生物信息管理主键
     * @return 生物信息管理
     */
    public Biology selectBiologyById(Long id);

    /**
     * 查询生物信息管理列表
     *
     * @param biology 生物信息管理
     * @return 生物信息管理集合
     */
    public List<Biology> selectBiologyList(Biology biology);

    /**
     * 新增生物信息管理
     *
     * @param biology 生物信息管理
     * @return 结果
     */
    public int insertBiology(Biology biology);

    /**
     * 修改生物信息管理
     *
     * @param biology 生物信息管理
     * @return 结果
     */
    public int updateBiology(Biology biology);

    /**
     * 批量删除生物信息管理
     *
     * @param ids 需要删除的生物信息管理主键集合
     * @return 结果
     */
    public int deleteBiologyByIds(Long[] ids);

    /**
     * 删除生物信息管理信息
     *
     * @param id 生物信息管理主键
     * @return 结果
     */
    public int deleteBiologyById(Long id);

    public List<CommonDTO> selectBiologyNameList();
}
