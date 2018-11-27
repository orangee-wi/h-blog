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
@TableName("message_reply")
@ApiModel(value="Reply对象", description="")
public class Reply implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "留言回复id")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "留言id")
    private Long messageInfoId;

    @ApiModelProperty(value = "留言回复详情")
    private String detail;

    @ApiModelProperty(value = "留言回复是否屏蔽")
    private Boolean shield;

    @ApiModelProperty(value = "留言回复类型；默认为-1，0为回复留言，1为回复回复")
    private Integer type;

    @ApiModelProperty(value = "评论目标id；type为0，目标id为message_base_id，type为1，目标id为message_reply_id")
    private Long targetId;

    @ApiModelProperty(value = "留言被回复者名称")
    private String messagerName;

    @ApiModelProperty(value = "留言回复者名称")
    private String replierName;

    @ApiModelProperty(value = "留言回复者电子邮箱")
    private String replierEmail;

    @ApiModelProperty(value = "留言回复者网站（个人主页）")
    private String replierWebsite;

    @ApiModelProperty(value = "留言回复者头像")
    private String replierAvatar;

    @ApiModelProperty(value = "留言回复日期")
    private Integer replyDate;

    @ApiModelProperty(value = "创建时间")
    private LocalDateTime gmtCreate;

    @ApiModelProperty(value = "修改时间")
    private LocalDateTime gmtModified;


}
