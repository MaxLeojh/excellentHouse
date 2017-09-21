package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.entity.Addressbase;

import java.util.List;

/**
 * Created by maxleo on 17-9-20.
 */
public interface CommonService {
    String codeToLocation(int code);

    int locationToCode(String location);

    Addressbase getAddress(int code);

    List<Addressbase> getSubAddress(int code);
}
