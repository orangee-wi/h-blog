package top.orangee.blog.article.controller;


import com.google.gson.Gson;
import com.google.gson.JsonObject;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.spring.web.json.Json;
import top.orangee.blog.article.entity.Info;
import top.orangee.blog.article.service.impl.InfoServiceImpl;
import top.orangee.blog.core.web.ResponseData;

import java.time.format.DateTimeFormatter;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * <p>
 * 前端控制器  文章信息
 * </p>
 *
 * @author orangee
 * @since 2019年9月18日21:45:02
 */
@RestController("articleInfoController")
@RequestMapping("/article/info")
public class InfoController {
    @Autowired
    private InfoServiceImpl infoService;

    @ApiOperation("获取单个文章信息")
    @GetMapping("/{id}")
    public ResponseData get(@PathVariable("id") String id) {
        Info articleInfo =  infoService.getById(id);
        Map<String,Object> dataMap = new ConcurrentHashMap<>();
        dataMap.put("articleInfo",articleInfo);
        ResponseData responseData = new ResponseData("0", "ok", dataMap);
//        return new Gson().toJson(responseData);
        return responseData;
    }

    @ApiOperation("获取所有文章信息")
    @GetMapping("/all")
    public String list() {
        return "list successful";
    }

    @ApiOperation("新增一篇文章信息")
    @PostMapping("")
    public String save(Info articleInfo) {
        infoService.save(articleInfo);
        ResponseData responseData = new ResponseData("0", "ok", "");
        return new Gson().toJson(responseData);
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
