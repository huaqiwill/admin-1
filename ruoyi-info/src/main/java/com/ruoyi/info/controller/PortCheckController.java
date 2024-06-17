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
import com.ruoyi.info.domain.PortCheck;
import com.ruoyi.info.service.IPortCheckService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 港口检查生物Controller
 * 
 * @author ruoyi
 * @date 2024-06-17
 */
@RestController
@RequestMapping("/info/port_check")
public class PortCheckController extends BaseController
{
    @Autowired
    private IPortCheckService portCheckService;

    /**
     * 查询港口检查生物列表
     */
    @PreAuthorize("@ss.hasPermi('info:port_check:list')")
    @GetMapping("/list")
    public TableDataInfo list(PortCheck portCheck)
    {
        startPage();
        List<PortCheck> list = portCheckService.selectPortCheckList(portCheck);
        return getDataTable(list);
    }

    /**
     * 导出港口检查生物列表
     */
    @PreAuthorize("@ss.hasPermi('info:port_check:export')")
    @Log(title = "港口检查生物", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PortCheck portCheck)
    {
        List<PortCheck> list = portCheckService.selectPortCheckList(portCheck);
        ExcelUtil<PortCheck> util = new ExcelUtil<PortCheck>(PortCheck.class);
        util.exportExcel(response, list, "港口检查生物数据");
    }

    /**
     * 获取港口检查生物详细信息
     */
    @PreAuthorize("@ss.hasPermi('info:port_check:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(portCheckService.selectPortCheckById(id));
    }

    /**
     * 新增港口检查生物
     */
    @PreAuthorize("@ss.hasPermi('info:port_check:add')")
    @Log(title = "港口检查生物", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PortCheck portCheck)
    {
        return toAjax(portCheckService.insertPortCheck(portCheck));
    }

    /**
     * 修改港口检查生物
     */
    @PreAuthorize("@ss.hasPermi('info:port_check:edit')")
    @Log(title = "港口检查生物", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PortCheck portCheck)
    {
        return toAjax(portCheckService.updatePortCheck(portCheck));
    }

    /**
     * 删除港口检查生物
     */
    @PreAuthorize("@ss.hasPermi('info:port_check:remove')")
    @Log(title = "港口检查生物", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(portCheckService.deletePortCheckByIds(ids));
    }
}
