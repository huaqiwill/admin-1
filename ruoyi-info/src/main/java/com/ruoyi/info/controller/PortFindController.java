package com.ruoyi.info.controller;

import java.util.List;
import javax.annotation.Resource;
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
import com.ruoyi.info.domain.PortFind;
import com.ruoyi.info.service.IPortFindService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 港口发现生物Controller
 *
 * @author ruoyi
 * @date 2024-06-17
 */
@RestController
@RequestMapping("/info/port_find")
public class PortFindController extends BaseController {
    @Resource
    private IPortFindService portFindService;

    /**
     * 查询港口发现生物列表
     */
    @PreAuthorize("@ss.hasPermi('info:port_find:list')")
    @GetMapping("/list")
    public TableDataInfo list(PortFind portFind) {
        startPage();
        List<PortFind> list = portFindService.selectPortFindList(portFind);
        return getDataTable(list);
    }

    /**
     * 导出港口发现生物列表
     */
    @PreAuthorize("@ss.hasPermi('info:port_find:export')")
    @Log(title = "港口发现生物", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PortFind portFind) {
        List<PortFind> list = portFindService.selectPortFindList(portFind);
        ExcelUtil<PortFind> util = new ExcelUtil<PortFind>(PortFind.class);
        util.exportExcel(response, list, "港口发现生物数据");
    }

    /**
     * 获取港口发现生物详细信息
     */
    @PreAuthorize("@ss.hasPermi('info:port_find:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(portFindService.selectPortFindById(id));
    }

    /**
     * 新增港口发现生物
     */
    @PreAuthorize("@ss.hasPermi('info:port_find:add')")
    @Log(title = "港口发现生物", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PortFind portFind) {
        return toAjax(portFindService.insertPortFind(portFind));
    }

    /**
     * 修改港口发现生物
     */
    @PreAuthorize("@ss.hasPermi('info:port_find:edit')")
    @Log(title = "港口发现生物", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PortFind portFind) {
        return toAjax(portFindService.updatePortFind(portFind));
    }

    /**
     * 删除港口发现生物
     */
    @PreAuthorize("@ss.hasPermi('info:port_find:remove')")
    @Log(title = "港口发现生物", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(portFindService.deletePortFindByIds(ids));
    }
}
