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
import com.ruoyi.info.domain.Port;
import com.ruoyi.info.service.IPortService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 港口信息管理Controller
 *
 * @author ruoyi
 * @date 2024-06-17
 */
@RestController
@RequestMapping("/info/port")
public class PortController extends BaseController {
    @Autowired
    private IPortService portService;

    /**
     * 查询港口信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('info:port:list')")
    @GetMapping("/list")
    public TableDataInfo list(Port port) {
        startPage();
        List<Port> list = portService.selectPortList(port);
        return getDataTable(list);
    }

    /**
     * 导出港口信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('info:port:export')")
    @Log(title = "港口信息管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Port port) {
        List<Port> list = portService.selectPortList(port);
        ExcelUtil<Port> util = new ExcelUtil<>(Port.class);
        util.exportExcel(response, list, "港口信息管理数据");
    }

    /**
     * 获取港口信息管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('info:port:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(portService.selectPortById(id));
    }

    /**
     * 新增港口信息管理
     */
    @PreAuthorize("@ss.hasPermi('info:port:add')")
    @Log(title = "港口信息管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Port port) {
        return toAjax(portService.insertPort(port));
    }

    /**
     * 修改港口信息管理
     */
    @PreAuthorize("@ss.hasPermi('info:port:edit')")
    @Log(title = "港口信息管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Port port) {
        return toAjax(portService.updatePort(port));
    }

    /**
     * 删除港口信息管理
     */
    @PreAuthorize("@ss.hasPermi('info:port:remove')")
    @Log(title = "港口信息管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(portService.deletePortByIds(ids));
    }

    /**
     * 查询生物信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('info:port:nameList')")
    @GetMapping("/nameList")
    public AjaxResult nameList() {
        List<CommonDTO> list = portService.selectPortNameList();
        return success(list);
    }
}
