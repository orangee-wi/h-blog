package com.baomidou.mybatisplus;

import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.*;
import com.baomidou.mybatisplus.generator.config.po.TableInfo;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;

import java.util.ArrayList;
import java.util.List;

/**
 * mybatis-plus 代码生成器
 *
 * @author orangee
 * @since 2019年9月18日21:20:12
 */
public class CodeGenerator {
    public static void main(String[] args) {
        // 代码生成器
        AutoGenerator mpg = new AutoGenerator();

        // 全局配置
        GlobalConfig gc = new GlobalConfig();
        //项目根目录
        String projectPath = "D:\\Code\\o-blog";
//        String projectPath = "D:/_Code/idea/blog";
//        String projectPath = "C:/Users/sincH/Desktop/Temp/blog";
        //Java源码输出目录
        gc.setOutputDir(projectPath + "/src/main/java");
        //作者
        gc.setAuthor("orangee");
        //是否打开输出目录，默认true
        gc.setOpen(false);
        //开启swagger2模式（将实体类默认的Javadoc文档注解转为Swagger文档注解），默认false
        gc.setSwagger2(true);
        mpg.setGlobalConfig(gc);

        // 数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        //数据库连接URL
        dsc.setUrl("jdbc:mysql://localhost:3306/blog?useUnicode=true&useSSL=false&characterEncoding=utf8");
        // dsc.setSchemaName("public");//数据库模式；MySQL中库即模式
        //数据库驱动
        dsc.setDriverName("com.mysql.jdbc.Driver");
        //数据库用户名
        dsc.setUsername("root");
        //数据库密码
        dsc.setPassword("root");
        mpg.setDataSource(dsc);

        // 包配置
        PackageConfig pc = new PackageConfig();
        //模块名
        pc.setModuleName("article");
        //父包名；模块将在父包下生成
        pc.setParent("top.orangee.blog");
        mpg.setPackageInfo(pc);

        // 自定义配置
//        InjectionConfig cfg = new InjectionConfig() {
//            @Override
//            public void initMap() {
//                // to do nothing
//            }
//        };
//        List<FileOutConfig> focList = new ArrayList<>();
//        focList.add(new FileOutConfig("/templates/mapper.xml.ftl") {
//            @Override
//            public String outputFile(TableInfo tableInfo) {
//                // 自定义输入文件名称
//                return projectPath + "/src/main/resources/mapper/" + pc.getModuleName()
//                        + "/" + tableInfo.getEntityName() + "Mapper" + StringPool.DOT_XML;
//            }
//        });
//        cfg.setFileOutConfigList(focList);
//        mpg.setCfg(cfg);
        //setXml(null)代表不生成xml文件
        mpg.setTemplate(new TemplateConfig().setXml(null));

        // 策略配置
        StrategyConfig strategy = new StrategyConfig();
        //表名下划线转驼峰
        strategy.setNaming(NamingStrategy.underline_to_camel);
        //列名下划线转驼峰
        strategy.setColumnNaming(NamingStrategy.underline_to_camel);
        //Boolean类型字段是否移除is前缀（默认 false）
        strategy.setEntityBooleanColumnRemoveIsPrefix(true);
//        strategy.setSuperEntityClass("com.baomidou.ant.common.BaseEntity");
        //是否开启实体类Lombok模式（默认false）
        strategy.setEntityLombokModel(true);
        //是否开启RestController风格
        strategy.setRestControllerStyle(true);
//        strategy.setSuperControllerClass("com.baomidou.ant.common.BaseController");
        //表名（数据库中存在的表）;多表传数组
        strategy.setInclude(new String[]{
                "article_info","article_content","article_comment","article_comment_reply",
                "article_archive","article_label","article_category",
                "r_article_info_article_label","r_article_info_article_category"
        });
//        strategy.setSuperEntityColumns("id");
        //驼峰转连字符（是否开启Controller映射连字符风格）
        strategy.setControllerMappingHyphenStyle(true);

        /**
         *设置表名前缀；
         *此表名前缀若与数据库表名前缀一致，则自动创建实体类时，实体类名匹配数据库表名前缀后面的名；
         *栗子：数据库表名为 admin_info ，当strategy.setTablePrefix("admin_")时，则实体类名为Info；
         *若不设置表名前缀，则实体类名匹配数据库表名
         */
        strategy.setTablePrefix(pc.getModuleName() + "_");
        mpg.setStrategy(strategy);

        //设置代码生成器的模板引擎
        mpg.setTemplateEngine(new FreemarkerTemplateEngine());
        //执行代码生成器
        mpg.execute();
    }
}
