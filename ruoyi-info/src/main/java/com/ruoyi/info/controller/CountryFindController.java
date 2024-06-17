package com.ruoyi.info.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.info.domain.CountryFind;
import com.ruoyi.info.service.ICountryFindService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 国家发现生物Controller
 * 
 * @author ruoyi
 * @date 2024-06-17
 */
@RestController
@RequestMapping("/info/country_find")
public class CountryFindController extends BaseController
{
    @Autowired
    private ICountryFindService countryFindService;

    /**
     * 查询国家发现生物列表
     */
    @PreAuthorize("@ss.hasPermi('info:country_find:list')")
    @GetMapping("/list")
    public TableDataInfo list(CountryFind countryFind)
    {
        startPage();
        List<CountryFind> list = countryFindService.selectCountryFindList(countryFind);
        return getDataTable(list);
    }

    /**
     * 导出国家发现生物列表
     */
    @PreAuthorize("@ss.hasPermi('info:country_find:export')")
    @Log(title = "国家发现生物", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CountryFind countryFind)
    {
        List<CountryFind> list = countryFindService.selectCountryFindList(countryFind);
        ExcelUtil<CountryFind> util = new ExcelUtil<CountryFind>(CountryFind.class);
        util.exportExcel(response, list, "国家发现生物数据");
    }

    /**
     * 获取国家发现生物详细信息
     */
    @PreAuthorize("@ss.hasPermi('info:country_find:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(countryFindService.selectCountryFindById(id));
    }

    /**
     * 新增国家发现生物
     */
    @PreAuthorize("@ss.hasPermi('info:country_find:add')")
    @Log(title = "国家发现生物", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CountryFind countryFind)
    {
        return toAjax(countryFindService.insertCountryFind(countryFind));
    }

    /**
     * 修改国家发现生物
     */
    @PreAuthorize("@ss.hasPermi('info:country_find:edit')")
    @Log(title = "国家发现生物", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CountryFind countryFind)
    {
        return toAjax(countryFindService.updateCountryFind(countryFind));
    }

    /**
     * 删除国家发现生物
     */
    @PreAuthorize("@ss.hasPermi('info:country_find:remove')")
    @Log(title = "国家发现生物", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(countryFindService.deleteCountryFindByIds(ids));
    }
}
