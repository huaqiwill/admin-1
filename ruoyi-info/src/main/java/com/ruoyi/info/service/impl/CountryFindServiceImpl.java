package com.ruoyi.info.service.impl;

import java.util.List;
import org.springframework.stereotype.Service;
import com.ruoyi.info.mapper.CountryFindMapper;
import com.ruoyi.info.domain.CountryFind;
import com.ruoyi.info.service.ICountryFindService;

import javax.annotation.Resource;

/**
 * 国家发现生物Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-17
 */
@Service
public class CountryFindServiceImpl implements ICountryFindService 
{
    @Resource
    private CountryFindMapper countryFindMapper;

    /**
     * 查询国家发现生物
     * 
     * @param id 国家发现生物主键
     * @return 国家发现生物
     */
    @Override
    public CountryFind selectCountryFindById(Long id)
    {
        return countryFindMapper.selectCountryFindById(id);
    }

    /**
     * 查询国家发现生物列表
     * 
     * @param countryFind 国家发现生物
     * @return 国家发现生物
     */
    @Override
    public List<CountryFind> selectCountryFindList(CountryFind countryFind)
    {
        return countryFindMapper.selectCountryFindList(countryFind);
    }

    /**
     * 新增国家发现生物
     * 
     * @param countryFind 国家发现生物
     * @return 结果
     */
    @Override
    public int insertCountryFind(CountryFind countryFind)
    {
        return countryFindMapper.insertCountryFind(countryFind);
    }

    /**
     * 修改国家发现生物
     * 
     * @param countryFind 国家发现生物
     * @return 结果
     */
    @Override
    public int updateCountryFind(CountryFind countryFind)
    {
        return countryFindMapper.updateCountryFind(countryFind);
    }

    /**
     * 批量删除国家发现生物
     * 
     * @param ids 需要删除的国家发现生物主键
     * @return 结果
     */
    @Override
    public int deleteCountryFindByIds(Long[] ids)
    {
        return countryFindMapper.deleteCountryFindByIds(ids);
    }

    /**
     * 删除国家发现生物信息
     * 
     * @param id 国家发现生物主键
     * @return 结果
     */
    @Override
    public int deleteCountryFindById(Long id)
    {
        return countryFindMapper.deleteCountryFindById(id);
    }
}
