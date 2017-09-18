package edu.ynu.software.Rocket.excellentHouse.eneityAO;

import edu.ynu.software.Rocket.excellentHouse.entity.DecoCompany;
import edu.ynu.software.Rocket.excellentHouse.entity.Designer;
import edu.ynu.software.Rocket.excellentHouse.entity.Picture;

import java.util.List;

/**
 * Created by August on 2017/9/15.
 */
public class DesignerAO {
    private Designer entity;
    private DecoCompany decoCompany;
    private List<Picture> pictureList;
    private List<DecoInstanceAO> decoInstanceAOList;

    public Designer getEntity() {
        return entity;
    }

    public void setEntity(Designer entity) {
        this.entity = entity;
    }

    public DecoCompany getDecoCompany() {
        return decoCompany;
    }

    public void setDecoCompany(DecoCompany decoCompany) {
        this.decoCompany = decoCompany;
    }

    public List<Picture> getPictureList() {
        return pictureList;
    }

    public void setPictureList(List<Picture> pictureList) {
        this.pictureList = pictureList;
    }

    public List<DecoInstanceAO> getDecoInstanceAOList() {
        return decoInstanceAOList;
    }

    public void setDecoInstanceAOList(List<DecoInstanceAO> decoInstanceAOList) {
        this.decoInstanceAOList = decoInstanceAOList;
    }
}
