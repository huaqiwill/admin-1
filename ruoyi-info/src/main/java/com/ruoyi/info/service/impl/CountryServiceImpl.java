package com.ruoyi.info.service.impl;

import java.util.List;

import com.ruoyi.info.domain.dto.CommonDTO;
import org.springframework.stereotype.Service;
import com.ruoyi.info.mapper.CountryMapper;
import com.ruoyi.info.domain.Country;
import com.ruoyi.info.service.ICountryService;

import javax.annotation.Resource;

/**
 * 国家信息管理Service业务层处理
 *
 * @author ruoyi
 * @date 2024-06-17
 */
@Service
public class CountryServiceImpl implements ICountryService {

    @Resource
    private CountryMapper countryMapper;

    @Override
    public List<CommonDTO> selectCountryNameList() {
        return countryMapper.selectCountryNameList();
    }

    /**
     * 查询国家信息管理
     *
     * @param id 国家信息管理主键
     * @return 国家信息管理
     */
    @Override
    public Country selectCountryById(Long id) {
        return countryMapper.selectCountryById(id);
    }

    /**
     * 查询国家信息管理列表
     *
     * @param country 国家信息管理
     * @return 国家信息管理
     */
    @Override
    public List<Country> selectCountryList(Country country) {
        return countryMapper.selectCountryList(country);
    }

    /**
     * 新增国家信息管理
     *
     * @param country 国家信息管理
     * @return 结果
     */
    @Override
    public int insertCountry(Country country) {
        return countryMapper.insertCountry(country);
    }

    /**
     * 修改国家信息管理
     *
     * @param country 国家信息管理
     * @return 结果
     */
    @Override
    public int updateCountry(Country country) {
        return countryMapper.updateCountry(country);
    }

    /**
     * 批量删除国家信息管理
     *
     * @param ids 需要删除的国家信息管理主键
     * @return 结果
     */
    @Override
    public int deleteCountryByIds(Long[] ids) {
        return countryMapper.deleteCountryByIds(ids);
    }

    /**
     * 删除国家信息管理信息
     *
     * @param id 国家信息管理主键
     * @return 结果
     */
    @Override
    public int deleteCountryById(Long id) {
        return countryMapper.deleteCountryById(id);
    }
}
