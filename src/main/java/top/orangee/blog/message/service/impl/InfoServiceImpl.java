package top.orangee.blog.message.service.impl;

import top.orangee.blog.message.entity.Info;
import top.orangee.blog.message.mapper.InfoMapper;
import top.orangee.blog.message.service.IInfoService;
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
