package top.sinch.blog.message.entity;

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
@TableName("message_info")
@ApiModel(value="Info对象", description="")
public class Info implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "留言id")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "留言详情")
    private String detail;

    @ApiModelProperty(value = "留言是否屏蔽")
    private Boolean shield;

    @ApiModelProperty(value = "留言者名称")
    private String messagerName;

    @ApiModelProperty(value = "留言者电子邮箱")
    private String messagerEmail;

    @ApiModelProperty(value = "留言者网站（个人主页）")
    private String messagerWebsite;

    @ApiModelProperty(value = "留言者头像")
    private String messagerAvatar;

    @ApiModelProperty(value = "留言日期")
    private Integer messageDate;

    @ApiModelProperty(value = "创建时间")
    private LocalDateTime gmtCreate;

    @ApiModelProperty(value = "修改时间")
    private LocalDateTime gmtModified;


}
