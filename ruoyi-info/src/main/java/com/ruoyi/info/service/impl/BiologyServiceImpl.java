package com.ruoyi.info.service.impl;

import java.util.List;

import com.ruoyi.info.domain.dto.CommonDTO;
import org.springframework.stereotype.Service;
import com.ruoyi.info.mapper.BiologyMapper;
import com.ruoyi.info.domain.Biology;
import com.ruoyi.info.service.IBiologyService;

import javax.annotation.Resource;

/**
 * 生物信息管理Service业务层处理
 *
 * @author ruoyi
 * @date 2024-06-17
 */
@Service
public class BiologyServiceImpl implements IBiologyService {

    @Resource
    private BiologyMapper biologyMapper;

    @Override
    public List<CommonDTO> selectBiologyNameList() {
        return biologyMapper.selectBiologyNameList();
    }

    /**
     * 查询生物信息管理
     *
     * @param id 生物信息管理主键
     * @return 生物信息管理
     */
    @Override
    public Biology selectBiologyById(Long id) {
        return biologyMapper.selectBiologyById(id);
    }

    /**
     * 查询生物信息管理列表
     *
     * @param biology 生物信息管理
     * @return 生物信息管理
     */
    @Override
    public List<Biology> selectBiologyList(Biology biology) {
        return biologyMapper.selectBiologyList(biology);
    }

    /**
     * 新增生物信息管理
     *
     * @param biology 生物信息管理
     * @return 结果
     */
    @Override
    public int insertBiology(Biology biology) {
        return biologyMapper.insertBiology(biology);
    }

    /**
     * 修改生物信息管理
     *
     * @param biology 生物信息管理
     * @return 结果
     */
    @Override
    public int updateBiology(Biology biology) {
        return biologyMapper.updateBiology(biology);
    }

    /**
     * 批量删除生物信息管理
     *
     * @param ids 需要删除的生物信息管理主键
     * @return 结果
     */
    @Override
    public int deleteBiologyByIds(Long[] ids) {
        return biologyMapper.deleteBiologyByIds(ids);
    }

    /**
     * 删除生物信息管理信息
     *
     * @param id 生物信息管理主键
     * @return 结果
     */
    @Override
    public int deleteBiologyById(Long id) {
        return biologyMapper.deleteBiologyById(id);
    }
}
