package top.orangee.blog.link.mapper;

import org.springframework.stereotype.Repository;
import top.orangee.blog.link.entity.Info;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author sincH
 * @since 2018-11-20
 */
@Repository("linkInfoMapper")
public interface InfoMapper extends BaseMapper<Info> {

}
