package top.sinch.blog.notice.service.impl;

import top.sinch.blog.notice.entity.Info;
import top.sinch.blog.notice.mapper.InfoMapper;
import top.sinch.blog.notice.service.IInfoService;
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
@Service("noticeInfoServiceImpl")
public class InfoServiceImpl extends ServiceImpl<InfoMapper, Info> implements IInfoService {

}
