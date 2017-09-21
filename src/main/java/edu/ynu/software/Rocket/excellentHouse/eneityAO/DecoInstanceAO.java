package edu.ynu.software.Rocket.excellentHouse.eneityAO;

import edu.ynu.software.Rocket.excellentHouse.entity.DecoInstance;
import edu.ynu.software.Rocket.excellentHouse.entity.Designer;
import edu.ynu.software.Rocket.excellentHouse.entity.Picture;

import java.util.List;

/**
 * Created by August on 2017/9/15.
 */
public class DecoInstanceAO {
    private DecoInstance entity;
    private DesignerAO designerAO;
    private List<Picture> pictureList;
    private List<PostAO> postAOList;

    public DecoInstance getEntity() {
        return entity;
    }

    public void setEntity(DecoInstance entity) {
        this.entity = entity;
    }

    public DesignerAO getDesignerAO() {
        return designerAO;
    }

    public void setDesignerAO(DesignerAO designerAO) {
        this.designerAO = designerAO;
    }

    public List<Picture> getPictureList() {
        return pictureList;
    }

    public void setPictureList(List<Picture> pictureList) {
        this.pictureList = pictureList;
    }

    public List<PostAO> getPostAOList() {
        return postAOList;
    }

    public void setPostAOList(List<PostAO> postAOList) {
        this.postAOList = postAOList;
    }
}
