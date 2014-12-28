package com.vladinooo.lovedance.entity;

import javax.persistence.*;

@Entity
public class Profile {

    public static final int FIRSTNAME_MAX = 50;
    public static final String FIRSTNAME_PATTERN = "[a-zA-Z ]{0,50}";

    public static final int SURNAME_MAX = 50;
    public static final String SURNAME_PATTERN = "[a-zA-Z ]{0,50}";

    public static final int PHONE_MAX = 30;
    public static final String PHONE_PATTERN = "[0-9()-]{0,30}";

    public static final int BIOGRAPHY_MAX = 2000;

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private long id;

    @Column(length = FIRSTNAME_MAX)
    private String firstname;

    @Column(length = SURNAME_MAX)
    private String surname;

    @Column(length = PHONE_MAX)
    private String phone;

    @Column(length = BIOGRAPHY_MAX)
    private String biography;

    @Column
    private String photoPath;

    @OneToOne(mappedBy = "profile")
    private User user;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBiography() {
        return biography;
    }

    public void setBiography(String biography) {
        this.biography = biography;
    }

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }
}
