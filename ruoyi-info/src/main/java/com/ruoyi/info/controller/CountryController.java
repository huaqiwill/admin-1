package com.ruoyi.info.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.info.domain.dto.CommonDTO;
import org.springframework.security.access.prepost.PreAuthorize;
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
import com.ruoyi.info.domain.Country;
import com.ruoyi.info.service.ICountryService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 国家信息管理Controller
 *
 * @author ruoyi
 * @date 2024-06-17
 */
@RestController
@RequestMapping("/info/country")
public class CountryController extends BaseController {
    @Resource
    private ICountryService countryService;

    /**
     * 查询国家信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('info:country:list')")
    @GetMapping("/list")
    public TableDataInfo list(Country country) {
        startPage();
        List<Country> list = countryService.selectCountryList(country);
        return getDataTable(list);
    }

    /**
     * 导出国家信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('info:country:export')")
    @Log(title = "国家信息管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Country country) {
        List<Country> list = countryService.selectCountryList(country);
        ExcelUtil<Country> util = new ExcelUtil<>(Country.class);
        util.exportExcel(response, list, "国家信息管理数据");
    }

    /**
     * 获取国家信息管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('info:country:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(countryService.selectCountryById(id));
    }

    /**
     * 新增国家信息管理
     */
    @PreAuthorize("@ss.hasPermi('info:country:add')")
    @Log(title = "国家信息管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Country country) {
        return toAjax(countryService.insertCountry(country));
    }

    /**
     * 修改国家信息管理
     */
    @PreAuthorize("@ss.hasPermi('info:country:edit')")
    @Log(title = "国家信息管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Country country) {
        return toAjax(countryService.updateCountry(country));
    }

    /**
     * 删除国家信息管理
     */
    @PreAuthorize("@ss.hasPermi('info:country:remove')")
    @Log(title = "国家信息管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(countryService.deleteCountryByIds(ids));
    }

    /**
     * 查询国家信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('info:country:nameList')")
    @GetMapping("/nameList")
    public AjaxResult nameList() {
        List<CommonDTO> list = countryService.selectCountryNameList();
        return AjaxResult.success(list);
    }
}
