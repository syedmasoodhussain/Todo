package com.entities;

import java.util.Date;

public class Todo {
    private String todoTitle;
    private String todoContent;
    private String email;
    private Date todoDate;
    private Long id;

    public Todo(String todoTitle, String todoContent, String email, Date todoDate) {
        this.todoTitle = todoTitle;
        this.todoContent = todoContent;
        this.email = email;
        this.todoDate = todoDate;
    }

    public Todo() {
        // Default constructor
    }

    public String getTodoTitle() {
        return todoTitle;
    }

    public void setTodoTitle(String todoTitle) {
        this.todoTitle = todoTitle;
    }

    public String getTodoContent() {
        return todoContent;
    }

    public void setTodoContent(String todoContent) {
        this.todoContent = todoContent;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getTodoDate() {
        return todoDate;
    }

    public void setTodoDate(Date todoDate) {
        this.todoDate = todoDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return this.getTodoTitle() + ": " + this.todoContent + " : " + this.getEmail();
    }
}
