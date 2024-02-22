package com.design_shinbi.shindan.model;

public class Item {
    private int id;
    private String text;
    //コンストラクター
    public Item(int id, String text) {
        this.id = id;
        this.text = text;
    }
    //ゲッター
    public int getId() {
        return id;
    }
    public String getText() {
        return text;
    }
    
}
