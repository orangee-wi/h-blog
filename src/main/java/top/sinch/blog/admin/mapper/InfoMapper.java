package top.sinch.blog.admin.mapper;

import org.springframework.stereotype.Repository;
import top.sinch.blog.admin.entity.Info;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author sincH
 * @since 2018-11-20
 */
@Repository("adminInfoMapper")
public interface InfoMapper extends BaseMapper<Info> {

}
