package top.sinch.blog.statistics.service.impl;

import top.sinch.blog.statistics.entity.IP;
import top.sinch.blog.statistics.mapper.IPMapper;
import top.sinch.blog.statistics.service.IIPService;
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
