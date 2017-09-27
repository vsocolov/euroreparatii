package md.euroreparatii.service.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class ServerResponse<T extends Serializable> {

    private Long timestamp = new Date().getTime();
    private Integer status;
    private String message;
    private String developerMessage;
    private String moreInfo;
    private T data;
    private List<T> dataList;

    public ServerResponse() {
        super();
    }

    public ServerResponse(Integer status, String message) {
        this.status = status;
        this.message = message;
        this.data = null;
        this.dataList = null;
    }

    public ServerResponse(Integer status, String message, T data) {
        this.status = status;
        this.message = message;
        this.data = data;
    }

    public ServerResponse(Integer status, String message, List<T> dataList) {
        this.status = status;
        this.message = message;
        this.dataList = dataList;
    }

    public ServerResponse(Integer status, String message, String developerMessage) {
        this.status = status;
        this.message = message;
        this.developerMessage = developerMessage;
    }

    public ServerResponse(Integer status, String message, String developerMessage, T data) {
        this.status = status;
        this.message = message;
        this.developerMessage = developerMessage;
        this.data = data;
    }

    public Long getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Long timestamp) {
        this.timestamp = timestamp;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getDeveloperMessage() {
        return developerMessage;
    }

    public void setDeveloperMessage(String developerMessage) {
        this.developerMessage = developerMessage;
    }

    public String getMoreInfo() {
        return moreInfo;
    }

    public void setMoreInfo(String moreInfo) {
        this.moreInfo = moreInfo;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public List<T> getDataList() {
        return dataList;
    }

    public void setDataList(List<T> dataList) {
        this.dataList = dataList;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("ServerResponse [timestamp=");
        builder.append(timestamp);
        builder.append(", status=");
        builder.append(status);
        builder.append(", message=");
        builder.append(message);
        builder.append(", developerMessage=");
        builder.append(developerMessage);
        builder.append(", moreInfo=");
        builder.append(moreInfo);
        builder.append(", data=");
        builder.append(data);
        builder.append(", dataList=");
        builder.append(dataList);
        builder.append("]");
        return builder.toString();
    }

}
