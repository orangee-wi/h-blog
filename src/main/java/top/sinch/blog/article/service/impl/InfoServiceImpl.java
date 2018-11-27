package top.sinch.blog.article.service.impl;

import top.sinch.blog.article.entity.Info;
import top.sinch.blog.article.mapper.InfoMapper;
import top.sinch.blog.article.service.IInfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author sincH
 * @since 2018-11-20
 */
@Service("articleInfoServiceImpl")
public class InfoServiceImpl extends ServiceImpl<InfoMapper, Info> implements IInfoService {

}
