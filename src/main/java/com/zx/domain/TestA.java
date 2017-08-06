package com.zx.domain;

import org.hibernate.annotations.*;
import org.hibernate.annotations.Cache;

import javax.persistence.*;
import javax.persistence.Entity;

/**
 * Created by 97038 on 2017-05-27.
 */
@Entity
public class TestA {
    @Id
    @GeneratedValue
    private Long id;
    @Column(length = 40)
    private String name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
