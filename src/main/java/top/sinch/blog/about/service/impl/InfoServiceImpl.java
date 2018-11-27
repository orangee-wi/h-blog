package top.sinch.blog.about.service.impl;

import top.sinch.blog.about.entity.Info;
import top.sinch.blog.about.mapper.InfoMapper;
import top.sinch.blog.about.service.IInfoService;
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
@Service("aboutInfoServiceImpl")
public class InfoServiceImpl extends ServiceImpl<InfoMapper, Info> implements IInfoService {

}
