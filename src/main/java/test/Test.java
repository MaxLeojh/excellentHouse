package test;

import edu.ynu.software.Rocket.excellentHouse.service.CommonService;
import edu.ynu.software.Rocket.excellentHouse.service.impl.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;

public class Test{



    public static void main(String[] args) {
        CommonService commonService = new CommonServiceImpl();
        String location = commonService.codeToLocation(511502004);

        System.out.println(location);
    }
}