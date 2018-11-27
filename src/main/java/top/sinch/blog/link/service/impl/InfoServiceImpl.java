package top.sinch.blog.link.service.impl;

import top.sinch.blog.link.entity.Info;
import top.sinch.blog.link.mapper.InfoMapper;
import top.sinch.blog.link.service.IInfoService;
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
@Service("linkInfoServiceImpl")
public class InfoServiceImpl extends ServiceImpl<InfoMapper, Info> implements IInfoService {

}
