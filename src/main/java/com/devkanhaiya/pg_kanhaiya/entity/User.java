package com.devkanhaiya.pg_kanhaiya.entity;


import org.springframework.lang.Nullable;

import lombok.Data;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "users")
@Data
public class User implements Serializable {

    @Id
    @SequenceGenerator(name = "sequenceGenerator", sequenceName = "sequence_name_user", allocationSize = 1, initialValue = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequenceGenerator")
    private Long id;

    @Column(name = "first_name", length = 50)
    private String firstName;

    @Column(name = "last_name", length = 50)
    private String lastName;
    

    @Column(name = "type")
    private String type;

    @Column(name = "room_no", length = 50)
    @Nullable
    private String roomNumber;
    

    @Column(name = "bed")
    private String bed;

    @Column(name = "address", length = 50)
    @Nullable
    private String address;
    

    @Column(name = "image", length = 50)
    @Nullable
    private String image;


    @Nullable
    private String mobileNumber;

   
    @Nullable
    private String dateOfBirth;

   
    @Nullable
    private String motherTongue;

   
    @Nullable
    private String nationality;

   
    @Nullable
    private String religion;

   
    @Nullable
    private String fatherName;

   
    @Nullable
    private String parentMobileNumber;

   
    @Nullable
    private String bloodGroup;

   
    @Nullable
    private String guardinaAddress;

   
    @Nullable
    private String companyname;

   
    @Nullable
    private String employeeNumber;

   
    @Nullable
    private String officeAddress;

   
    @Nullable
    private String officePhone;

   
    @Nullable
    private String joiningDate;

   
    @Nullable
    private String leavingDate;

   
    @Nullable
    private String passport;

   
    @Nullable
    private String addhar;

   
    @Nullable
    private String drivinglicence;

   
    @Nullable
    private String pan;

   
    @Nullable
    private String registerDate;

   
    @Nullable
    private String place;

   
    @Nullable
    private String givenPayment;

    @Nullable
    private String sharing;

}
