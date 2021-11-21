package cn.aa.userinbox;

public class Userbox {
    private String acceptuser;
    private String theme;
    private String text;
    private String senduser;
    private String state;
    private int zizeng;

    public String getAcceptuser() {
        return acceptuser;
    }

    public void setAcceptuser(String acceptuser) {
        this.acceptuser = acceptuser;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getSenduser() {
        return senduser;
    }

    public void setSenduser(String senduser) {
        this.senduser = senduser;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getZizeng() {
        return zizeng;
    }

    public void setZizeng(int zizeng) {
        this.zizeng = zizeng;
    }


    @Override
    public String toString() {
        return "Userbox{" +
                "acceptuser='" + acceptuser + '\'' +
                ", theme='" + theme + '\'' +
                ", text='" + text + '\'' +
                ", senduser='" + senduser + '\'' +
                ", state='" + state + '\'' +
                ", zizeng=" + zizeng +
                '}';
    }
}
