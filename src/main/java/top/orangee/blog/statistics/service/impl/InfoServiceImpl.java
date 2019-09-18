package top.orangee.blog.statistics.service.impl;

import top.orangee.blog.statistics.entity.Info;
import top.orangee.blog.statistics.mapper.InfoMapper;
import top.orangee.blog.statistics.service.IInfoService;
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
@Service("statisticsInfoServiceImpl")
public class InfoServiceImpl extends ServiceImpl<InfoMapper, Info> implements IInfoService {

}
