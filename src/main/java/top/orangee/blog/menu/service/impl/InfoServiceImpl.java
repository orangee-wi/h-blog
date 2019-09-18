package top.orangee.blog.menu.service.impl;

import top.orangee.blog.menu.entity.Info;
import top.orangee.blog.menu.mapper.InfoMapper;
import top.orangee.blog.menu.service.IInfoService;
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
@Service("menuInfoServiceImpl")
public class InfoServiceImpl extends ServiceImpl<InfoMapper, Info> implements IInfoService {

}
