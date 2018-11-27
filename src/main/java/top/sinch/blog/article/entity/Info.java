package top.sinch.blog.article.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author sincH
 * @since 2018-11-20
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("article_info")
@ApiModel(value="Info对象", description="")
public class Info implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "文章id")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "文章标题")
    private String title;

    @ApiModelProperty(value = "文章作者名")
    private String author;

    @ApiModelProperty(value = "文章概要")
    private String synopsis;

    @ApiModelProperty(value = "文章关联图（用于首页展示）")
    private String picture;

    @ApiModelProperty(value = "文章点赞量")
    private Integer likeNum;

    @ApiModelProperty(value = "文章阅读量")
    private Integer readNum;

    @ApiModelProperty(value = "文章评论量")
    private Integer commentNum;

    @ApiModelProperty(value = "文章是否置顶")
    private Boolean top;

    @ApiModelProperty(value = "文章是否发布")
    private Boolean published;

    @ApiModelProperty(value = "文章是否热门")
    private Boolean hot;

    @ApiModelProperty(value = "文章归档id")
    private Long articleArchiveId;

    @ApiModelProperty(value = "文章发布时间；is_published为0时，gmt_publish为gmt_create，is_published为1时，gmt_publish为文章发布时间")
    private LocalDateTime gmtPublish;

    @ApiModelProperty(value = "创建时间")
    private LocalDateTime gmtCreate;

    @ApiModelProperty(value = "修改时间")
    private LocalDateTime gmtModified;


}
