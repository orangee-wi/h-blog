package top.orangee.blog.article.service.impl;

import top.orangee.blog.article.entity.Label;
import top.orangee.blog.article.mapper.LabelMapper;
import top.orangee.blog.article.service.ILabelService;
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
public class LabelServiceImpl extends ServiceImpl<LabelMapper, Label> implements ILabelService {

}
