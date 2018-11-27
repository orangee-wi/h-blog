package top.sinch.blog.article.service.impl;

import top.sinch.blog.article.entity.Comment;
import top.sinch.blog.article.mapper.CommentMapper;
import top.sinch.blog.article.service.ICommentService;
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
