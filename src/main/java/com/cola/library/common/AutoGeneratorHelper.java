package com.cola.library.common;

import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;

import java.util.ResourceBundle;

/**
 * @author Liq
 * @date 2020/8/11
 */
public class AutoGeneratorHelper {
    public static void main(String[] args) {

        ResourceBundle rb = ResourceBundle.getBundle("Mybatis-Plus-Generator");

        // 代码生成器
        AutoGenerator mpg = new AutoGenerator();

        // 全局配置
        GlobalConfig globalConfig = new GlobalConfig();
        String property = System.getProperty("user.dir");
        globalConfig.setOutputDir(System.getProperty("user.dir") + rb.getString("moduleName") + "/src/main/java");
        globalConfig.setAuthor(rb.getString("author"));
        globalConfig.setBaseColumnList(true);
        globalConfig.setBaseResultMap(true);
        globalConfig.setOpen(false);

        // 数据库配置
        DataSourceConfig dataSourceConfig = new DataSourceConfig();
        dataSourceConfig.setUrl(rb.getString("url"));
        dataSourceConfig.setDriverName("com.mysql.cj.jdbc.Driver");
//        dataSourceConfig.setDriverName("oracle.jdbc.driver.OracleDriver");
        dataSourceConfig.setUsername(rb.getString("username"));
        dataSourceConfig.setPassword(rb.getString("password"));

        // 策略配置
        StrategyConfig strategy = new StrategyConfig();
        strategy.setEntityLombokModel(true);
        strategy.setNaming(NamingStrategy.underline_to_camel);
        strategy.setEntityTableFieldAnnotationEnable(true);
        strategy.setInclude(rb.getString("tableName").split(","));
        strategy.setRestControllerStyle(false);



        // 包配置
        PackageConfig pc = new PackageConfig();
        pc.setParent("com.cola.library");
        pc.setEntity("entity");
        pc.setMapper("mapper");
        pc.setXml("mapper");
        pc.setService("service.itf");
        pc.setServiceImpl("service.impl");
        pc.setController("controller");

        // 配置生成表
        mpg
                .setPackageInfo(pc)
                .setGlobalConfig(globalConfig)
                .setDataSource(dataSourceConfig)
                .setStrategy(strategy);
        mpg.execute();

    }

}
