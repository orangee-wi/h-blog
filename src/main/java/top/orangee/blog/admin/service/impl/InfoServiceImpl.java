package top.orangee.blog.admin.service.impl;

import top.orangee.blog.admin.entity.Info;
import top.orangee.blog.admin.mapper.InfoMapper;
import top.orangee.blog.admin.service.IInfoService;
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
@Service("adminInfoServiceImpl")
public class InfoServiceImpl extends ServiceImpl<InfoMapper, Info> implements IInfoService {

}
