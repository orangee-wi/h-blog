package top.orangee.blog.article.mapper;

import org.springframework.stereotype.Repository;
import top.orangee.blog.article.entity.Info;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author sincH
 * @since 2018-11-20
 */
@Repository("articleInfoMapper")
public interface InfoMapper extends BaseMapper<Info> {

}
