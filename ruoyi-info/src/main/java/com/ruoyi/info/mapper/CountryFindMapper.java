package com.ruoyi.info.mapper;

import java.util.List;
import com.ruoyi.info.domain.CountryFind;

/**
 * 国家发现生物Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-17
 */
public interface CountryFindMapper 
{
    /**
     * 查询国家发现生物
     * 
     * @param id 国家发现生物主键
     * @return 国家发现生物
     */
    public CountryFind selectCountryFindById(Long id);

    /**
     * 查询国家发现生物列表
     * 
     * @param countryFind 国家发现生物
     * @return 国家发现生物集合
     */
    public List<CountryFind> selectCountryFindList(CountryFind countryFind);

    /**
     * 新增国家发现生物
     * 
     * @param countryFind 国家发现生物
     * @return 结果
     */
    public int insertCountryFind(CountryFind countryFind);

    /**
     * 修改国家发现生物
     * 
     * @param countryFind 国家发现生物
     * @return 结果
     */
    public int updateCountryFind(CountryFind countryFind);

    /**
     * 删除国家发现生物
     * 
     * @param id 国家发现生物主键
     * @return 结果
     */
    public int deleteCountryFindById(Long id);

    /**
     * 批量删除国家发现生物
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCountryFindByIds(Long[] ids);
}
