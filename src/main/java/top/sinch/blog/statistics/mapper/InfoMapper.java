package top.sinch.blog.statistics.mapper;

import org.springframework.stereotype.Repository;
import top.sinch.blog.statistics.entity.Info;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author sincH
 * @since 2018-11-20
 */
@Repository("statisticsInfoMapper")
public interface InfoMapper extends BaseMapper<Info> {

}
