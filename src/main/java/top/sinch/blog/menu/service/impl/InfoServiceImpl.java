package top.sinch.blog.menu.service.impl;

import top.sinch.blog.menu.entity.Info;
import top.sinch.blog.menu.mapper.InfoMapper;
import top.sinch.blog.menu.service.IInfoService;
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
