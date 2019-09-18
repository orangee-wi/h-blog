package top.orangee.blog.article.service.impl;

import top.orangee.blog.article.entity.Archive;
import top.orangee.blog.article.mapper.ArchiveMapper;
import top.orangee.blog.article.service.IArchiveService;
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
public class ArchiveServiceImpl extends ServiceImpl<ArchiveMapper, Archive> implements IArchiveService {

}
