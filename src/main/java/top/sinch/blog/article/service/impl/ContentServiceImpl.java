package top.sinch.blog.article.service.impl;

import top.sinch.blog.article.entity.Content;
import top.sinch.blog.article.mapper.ContentMapper;
import top.sinch.blog.article.service.IContentService;
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
@Service
public class ContentServiceImpl extends ServiceImpl<ContentMapper, Content> implements IContentService {

}
