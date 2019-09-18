package top.orangee.blog.article.controller;


import com.google.gson.Gson;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
import top.orangee.blog.article.entity.Info;

/**
 * <p>
 *  前端控制器  文章信息
 * </p>
 *
 * @author sincH
 * @since 2018-11-20
 */
@RestController("articleInfoController")
@RequestMapping("/article/info")
public class InfoController {
    @ApiOperation("获取单个文章信息")
    @GetMapping("/{id}")
    public String get(@PathVariable("id") String id) {
        Info articleInfo = new Info();
        articleInfo.setAuthor("sincH");
        articleInfo.setTitle("Test");
        return new Gson().toJson(articleInfo);
    }

    @ApiOperation("获取所有文章信息")
    @GetMapping("/all")
    public String list(){
        return "list successful";
    }

    @ApiOperation("新增一篇文章信息")
    @PostMapping("")
    public String save(){
        return "save successful";
    }

    @ApiOperation("更新一篇文章信息")
    @PutMapping("/{id}")
    public String update(@PathVariable("id") String id){
        return "update successful";
    }

    @ApiOperation("删除一篇文章信息")
    @DeleteMapping("/{id}")
    public String remove(@PathVariable("id") String id){
        return "remove successful";
    }
}
