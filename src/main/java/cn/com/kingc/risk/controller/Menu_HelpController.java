package cn.com.kingc.risk.controller;

import cn.com.kingc.eoms.controller.FileUploadController;
import cn.com.kingc.eoms.model.Menu_help;
import cn.com.kingc.eoms.service.Menu_helpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

/**
 * Created by zhangzhiyao on 2018/8/14
 */
@RestController
@RequestMapping("MenuHelp")
public class Menu_HelpController {

    @Autowired
    private Menu_helpService menu_helpService;

    private static String fProduct_GUID;
    //运维平台虚拟目录
    private static String platform_Virtual;

    static {
        //读取配置文件
        Properties preperties=new Properties();
        try {
            preperties.load(FileUploadController.class.getClassLoader().getResourceAsStream(
                    "resource.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        fProduct_GUID=preperties.getProperty("fProduct_GUID");
        platform_Virtual=preperties.getProperty("platform_Virtual");
    }

    @RequestMapping("/help")
    public  Object testf(@RequestParam String MenuUrl) {
        List<Menu_help> s =menu_helpService.getMenu_helpByProduct_IDandMenu_Url(fProduct_GUID,MenuUrl);
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("platform",platform_Virtual);
        map.put("menuhelp",s);
        return map;
    }

}
