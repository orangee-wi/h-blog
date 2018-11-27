package top.sinch.blog.message.service.impl;

import top.sinch.blog.message.entity.Info;
import top.sinch.blog.message.mapper.InfoMapper;
import top.sinch.blog.message.service.IInfoService;
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
@Service("messageInfoServiceImpl")
public class InfoServiceImpl extends ServiceImpl<InfoMapper, Info> implements IInfoService {

}
