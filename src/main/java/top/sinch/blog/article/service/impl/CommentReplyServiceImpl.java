package top.sinch.blog.article.service.impl;

import top.sinch.blog.article.entity.CommentReply;
import top.sinch.blog.article.mapper.CommentReplyMapper;
import top.sinch.blog.article.service.ICommentReplyService;
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
public class CommentReplyServiceImpl extends ServiceImpl<CommentReplyMapper, CommentReply> implements ICommentReplyService {

}
