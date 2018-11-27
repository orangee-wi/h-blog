package top.sinch.blog.message.mapper;

import org.springframework.stereotype.Repository;
import top.sinch.blog.message.entity.Info;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author sincH
 * @since 2018-11-20
 */
@Repository("messageInfoMapper")
public interface InfoMapper extends BaseMapper<Info> {

}
