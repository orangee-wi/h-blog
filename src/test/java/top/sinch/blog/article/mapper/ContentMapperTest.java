package top.sinch.blog.article.mapper;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;
import top.sinch.blog.BlogApplication;
import top.sinch.blog.article.entity.Content;

import javax.annotation.Resource;

import static org.hamcrest.core.IsEqual.equalTo;
import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@Transactional
public class ContentMapperTest {
//    @Autowired(required = false)//允许依赖对象为null
    @Resource
    private ContentMapper contentMapper;

    @Test
    public void insert() {
        Content content = new Content();
        content.setDetail("23333333333333333333333333333333");
//        content.setArticleInfoId(Integer.toUnsignedLong(1));
        int result = contentMapper.insert(content);
        Assert.assertThat(result, equalTo(1 ));
    }

}