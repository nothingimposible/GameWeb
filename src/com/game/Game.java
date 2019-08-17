package com.game;

public class Game {
  private String name;
  private String link;
  private String spicture;
  private int ID;
  private String picture1;
  private String picture2;
  private String picture3;
  private String text;
  private String message;
  private String classify1;
  private String type;
  private String classify2;
  private String classify3;
  private String classify4;
  private int onclick;

public int getOnclick() {
	return onclick;
}
public void setOnclick(int onclick) {
	this.onclick = onclick;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getLink() {
	return link;
}
public void setLink(String link) {
	this.link = link;
}
public String getSpicture() {
	return spicture;
}
public void setSpicture(String spicture) {
	this.spicture = spicture;
}
public int getID() {
	return ID;
}
public void setID(int iD) {
	ID = iD;
}
public String getPicture1() {
	return picture1;
}
public void setPicture1(String picture1) {
	this.picture1 = picture1;
}
public String getPicture2() {
	return picture2;
}
public void setPicture2(String picture2) {
	this.picture2 = picture2;
}
public String getPicture3() {
	return picture3;
}
public void setPicture3(String picture3) {
	this.picture3 = picture3;
}
public String getText() {
	return text;
}
public void setText(String text) {
	this.text = text;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
public String getClassify1() {
	return classify1;
}
public void setClassify1(String classify1) {
	this.classify1 = classify1;
}
public String getClassify2() {
	return classify2;
}
public void setClassify2(String classify2) {
	this.classify2 = classify2;
}
public String getClassify3() {
	return classify3;
}
public void setClassify3(String classify3) {
	this.classify3 = classify3;
}
public String getClassify4() {
	return classify4;
}
public void setClassify4(String classify4) {
	this.classify4 = classify4;
}
@Override
public String toString() {
	return "Game [name=" + name + ", link=" + link + ", spicture=" + spicture + ", ID=" + ID + ", picture1=" + picture1
			+ ", picture2=" + picture2 + ", picture3=" + picture3 + ", text=" + text + ", message=" + message
			+ ", classify1=" + classify1 + ", type=" + type + ", classify2=" + classify2 + ", classify3=" + classify3
			+ ", classify4=" + classify4 + ", onclick=" + onclick + "]";
}

}
