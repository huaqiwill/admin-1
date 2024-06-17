package com.ruoyi.info.service;

import java.util.List;
import com.ruoyi.info.domain.CountryFind;

/**
 * 国家发现生物Service接口
 * 
 * @author ruoyi
 * @date 2024-06-17
 */
public interface ICountryFindService 
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
     * 批量删除国家发现生物
     * 
     * @param ids 需要删除的国家发现生物主键集合
     * @return 结果
     */
    public int deleteCountryFindByIds(Long[] ids);

    /**
     * 删除国家发现生物信息
     * 
     * @param id 国家发现生物主键
     * @return 结果
     */
    public int deleteCountryFindById(Long id);
}
