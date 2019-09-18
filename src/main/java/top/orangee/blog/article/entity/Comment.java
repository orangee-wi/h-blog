package top.orangee.blog.article.entity;

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
@TableName("article_comment")
@ApiModel(value="Comment对象", description="")
public class Comment implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "评论id")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "文章id")
    private Long articleInfoId;

    @ApiModelProperty(value = "评论详情")
    private String detail;

    @ApiModelProperty(value = "评论是否屏蔽")
    private Boolean shield;

    @ApiModelProperty(value = "评论者名称")
    private String commenterName;

    @ApiModelProperty(value = "评论者电子邮箱")
    private String commenterEmail;

    @ApiModelProperty(value = "评论者网站（个人主页）")
    private String commenterWebsite;

    @ApiModelProperty(value = "评论者头像")
    private String commenterAvatar;

    @ApiModelProperty(value = "评论日期")
    private Integer commentDate;

    @ApiModelProperty(value = "创建时间")
    private LocalDateTime gmtCreate;

    @ApiModelProperty(value = "修改时间")
    private LocalDateTime gmtModified;


}
