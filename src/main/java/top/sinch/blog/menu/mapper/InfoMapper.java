package top.sinch.blog.menu.mapper;

import org.springframework.stereotype.Repository;
import top.sinch.blog.menu.entity.Info;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author sincH
 * @since 2018-11-20
 */
@Repository("menuInfoMapper")
public interface InfoMapper extends BaseMapper<Info> {

}
