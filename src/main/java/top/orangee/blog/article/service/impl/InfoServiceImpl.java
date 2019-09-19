package top.orangee.blog.article.service.impl;

import top.orangee.blog.article.entity.Info;
import top.orangee.blog.article.mapper.InfoMapper;
import top.orangee.blog.article.service.IInfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类 文章信息
 * </p>
 *
 * @author orangee
 * @since 2019年9月19日20:37:38
 */
@Service("articleInfoServiceImpl")
public class InfoServiceImpl extends ServiceImpl<InfoMapper, Info> implements IInfoService {

}
