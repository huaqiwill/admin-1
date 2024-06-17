package com.ruoyi.info.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.info.domain.dto.CommonDTO;
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
import com.ruoyi.info.domain.Biology;
import com.ruoyi.info.service.IBiologyService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 生物信息管理Controller
 *
 * @author ruoyi
 * @date 2024-06-17
 */
@RestController
@RequestMapping("/info/biology")
public class BiologyController extends BaseController {
    @Autowired
    private IBiologyService biologyService;

    /**
     * 查询生物信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('info:biology:list')")
    @GetMapping("/list")
    public TableDataInfo list(Biology biology) {
        startPage();
        List<Biology> list = biologyService.selectBiologyList(biology);
        return getDataTable(list);
    }

    /**
     * 导出生物信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('info:biology:export')")
    @Log(title = "生物信息管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Biology biology) {
        List<Biology> list = biologyService.selectBiologyList(biology);
        ExcelUtil<Biology> util = new ExcelUtil<Biology>(Biology.class);
        util.exportExcel(response, list, "生物信息管理数据");
    }

    /**
     * 获取生物信息管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('info:biology:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(biologyService.selectBiologyById(id));
    }

    /**
     * 新增生物信息管理
     */
    @PreAuthorize("@ss.hasPermi('info:biology:add')")
    @Log(title = "生物信息管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Biology biology) {
        return toAjax(biologyService.insertBiology(biology));
    }

    /**
     * 修改生物信息管理
     */
    @PreAuthorize("@ss.hasPermi('info:biology:edit')")
    @Log(title = "生物信息管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Biology biology) {
        return toAjax(biologyService.updateBiology(biology));
    }

    /**
     * 删除生物信息管理
     */
    @PreAuthorize("@ss.hasPermi('info:biology:remove')")
    @Log(title = "生物信息管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(biologyService.deleteBiologyByIds(ids));
    }

    /**
     * 查询生物信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('info:biology:nameList')")
    @GetMapping("/nameList")
    public AjaxResult nameList() {
        List<CommonDTO> list = biologyService.selectBiologyNameList();
        return AjaxResult.success(list);
    }
}
