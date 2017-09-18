package edu.ynu.software.Rocket.excellentHouse.eneityAO;

import edu.ynu.software.Rocket.excellentHouse.entity.DecoCompany;
import edu.ynu.software.Rocket.excellentHouse.entity.Picture;

import java.util.List;

/**
 * Created by August on 2017/9/15.
 */
public class DecoCompanyAO {
    private DecoCompany entity;
    private List<Picture> pictureList;
    private List<DesignerAO> designerAOList;

    public DecoCompany getEntity() {
        return entity;
    }

    public void setEntity(DecoCompany entity) {
        this.entity = entity;
    }

    public List<Picture> getPictureList() {
        return pictureList;
    }

    public void setPictureList(List<Picture> pictureList) {
        this.pictureList = pictureList;
    }

    public List<DesignerAO> getDesignerAOList() {
        return designerAOList;
    }

    public void setDesignerAOList(List<DesignerAO> designerAOList) {
        this.designerAOList = designerAOList;
    }
}
