package top.orangee.blog.admin.entity;

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
@TableName("admin_info")
@ApiModel(value="Info对象", description="")
public class Info implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "后台用户id")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "后台用户名")
    private String username;

    @ApiModelProperty(value = "后台用户密码")
    private String password;

    @ApiModelProperty(value = "后台用户昵称")
    private String nickname;

    @ApiModelProperty(value = "后台用户头像")
    private String avatar;

    @ApiModelProperty(value = "后台用户电子邮箱")
    private String email;

    @ApiModelProperty(value = "后台用户个人介绍")
    private String introduction;

    @ApiModelProperty(value = "创建时间")
    private LocalDateTime gmtCreate;

    @ApiModelProperty(value = "修改时间")
    private LocalDateTime gmtModified;


}
