package top.orangee.blog.article.controller;


import com.baomidou.mybatisplus.core.conditions.Condition;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.segments.MergeSegments;
import com.google.gson.Gson;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import top.orangee.blog.article.entity.Info;
import top.orangee.blog.article.service.impl.InfoServiceImpl;
import top.orangee.blog.core.web.ResponseData;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * <p>
 * 前端控制器 文章信息
 * </p>
 *
 * @author orangee
 * @since 2019年10月8日23:06:23
 */
@RestController("articleInfoController")
@RequestMapping("/article/info")
public class InfoController {
    @Autowired
    private InfoServiceImpl infoService;

    @ApiOperation("获取单个文章信息")
    @GetMapping("/{uuid}")
    public ResponseData get(@PathVariable("uuid") String uuid) {
        Info articleInfo = infoService.getById(uuid);
        Map<String, Object> dataMap = new ConcurrentHashMap<>();
        dataMap.put("articleInfo", articleInfo);
//        ResponseData responseData = new ResponseData("0", "ok", dataMap);
        return new ResponseData().ok(dataMap);
    }

    @ApiOperation("获取所有文章信息")
    @GetMapping("/all")
    public ResponseData list() {
//        QueryWrapper queryWrapper= new QueryWrapper<Info>().eq("summary","用于测试");
//        List<Info> articleInfoList = infoService.list(queryWrapper);
        List<Info> articleInfoList = infoService.list(null);
        Map<String, Object> dataMap = new ConcurrentHashMap<>();
        dataMap.put("articleInfoList", articleInfoList);
//        return "list successful";
        return new ResponseData().ok(dataMap);
    }

    @ApiOperation("新增一篇文章信息")
    @PostMapping("")
    public ResponseData save(Info articleInfo) {
        infoService.save(articleInfo);
        return new ResponseData().ok("");
    }

    @ApiOperation("更新一篇文章信息")
    @PutMapping("/{id}")
    public String modify(@PathVariable("id") String id) {
        return "modify successful";
    }

    @ApiOperation("删除一篇文章信息")
    @DeleteMapping("/{id}")
    public String remove(@PathVariable("id") String id) {
        return "remove successful";
    }
}
