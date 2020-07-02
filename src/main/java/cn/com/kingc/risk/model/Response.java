package cn.com.kingc.risk.model;

public class Response<T> {
    private int state;
    private T data;
    private String message;

    public Response(int state, T data, String message) {
        this.state = state;
        this.data = data;
        this.message = message;
    }

    public Response() {
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public Object getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
