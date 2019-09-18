package top.orangee.blog.statistics.service.impl;

import top.orangee.blog.statistics.entity.IP;
import top.orangee.blog.statistics.mapper.IPMapper;
import top.orangee.blog.statistics.service.IIPService;
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
public class IPServiceImpl extends ServiceImpl<IPMapper, IP> implements IIPService {

}
