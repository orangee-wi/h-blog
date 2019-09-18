package top.orangee.blog.article.service.impl;

import top.orangee.blog.article.entity.Comment;
import top.orangee.blog.article.mapper.CommentMapper;
import top.orangee.blog.article.service.ICommentService;
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
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements ICommentService {

}
