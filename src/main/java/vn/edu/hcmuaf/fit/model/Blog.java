package vn.edu.hcmuaf.fit.model;

public class Blog {
    int id;
    String img;
    String date;
    String user;
    String name;
    String cotent;
    String title1;
    String content1;
    String title2;
    String content2;

    public Blog(int id, String img, String date, String user, String name, String cotent, String title1, String content1, String title2, String content2) {
        this.id = id;
        this.img = img;
        this.date = date;
        this.user = user;
        this.name = name;
        this.cotent = cotent;
        this.title1 = title1;
        this.content1 = content1;
        this.title2 = title2;
        this.content2 = content2;
    }

    public String getTitle1() {
        return title1;
    }

    public void setTitle1(String title1) {
        this.title1 = title1;
    }

    public String getContent1() {
        return content1;
    }

    public void setContent1(String content1) {
        this.content1 = content1;
    }

    public String getTitle2() {
        return title2;
    }

    public void setTitle2(String title2) {
        this.title2 = title2;
    }

    public String getContent2() {
        return content2;
    }

    public void setContent2(String content2) {
        this.content2 = content2;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCotent() {
        return cotent;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id=" + id +
                ", img='" + img + '\'' +
                ", date='" + date + '\'' +
                ", user='" + user + '\'' +
                ", name='" + name + '\'' +
                ", cotent='" + cotent + '\'' +
                ", title1='" + title1 + '\'' +
                ", content1='" + content1 + '\'' +
                ", title2='" + title2 + '\'' +
                ", content2='" + content2 + '\'' +
                '}';
    }

    public void setCotent(String cotent) {
        this.cotent = cotent;
    }
}
