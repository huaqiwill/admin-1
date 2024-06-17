package com.ruoyi.info.mapper;

import java.util.List;

import com.ruoyi.info.domain.Country;
import com.ruoyi.info.domain.dto.CommonDTO;

/**
 * 国家信息管理Mapper接口
 *
 * @author ruoyi
 * @date 2024-06-17
 */
public interface CountryMapper {
    /**
     * 查询国家信息管理
     *
     * @param id 国家信息管理主键
     * @return 国家信息管理
     */
    public Country selectCountryById(Long id);

    /**
     * 查询国家信息管理列表
     *
     * @param country 国家信息管理
     * @return 国家信息管理集合
     */
    public List<Country> selectCountryList(Country country);

    /**
     * 新增国家信息管理
     *
     * @param country 国家信息管理
     * @return 结果
     */
    public int insertCountry(Country country);

    /**
     * 修改国家信息管理
     *
     * @param country 国家信息管理
     * @return 结果
     */
    public int updateCountry(Country country);

    /**
     * 删除国家信息管理
     *
     * @param id 国家信息管理主键
     * @return 结果
     */
    public int deleteCountryById(Long id);

    /**
     * 批量删除国家信息管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCountryByIds(Long[] ids);

    public List<CommonDTO> selectCountryNameList();
}
