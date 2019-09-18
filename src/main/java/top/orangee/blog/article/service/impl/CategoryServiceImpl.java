package top.orangee.blog.article.service.impl;

import top.orangee.blog.article.entity.Category;
import top.orangee.blog.article.mapper.CategoryMapper;
import top.orangee.blog.article.service.ICategoryService;
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
public class CategoryServiceImpl extends ServiceImpl<CategoryMapper, Category> implements ICategoryService {

}
