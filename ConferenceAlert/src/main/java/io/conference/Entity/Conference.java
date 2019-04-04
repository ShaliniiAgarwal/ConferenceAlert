package io.conference.Entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="confinfo")
public class Conference {
@Id//here it work as primary key
@GeneratedValue(strategy = GenerationType.AUTO)
 private int id;
@Column(name="city")
 private String city;
@Column(name="topic")
 private String topic;
@Column(name="subtopic")
 private String subtopic;
@Column(name="date")
 private String date;
@Column(name="info")
 private String info;
@Column(name="eventserial")
private String eventserial;
@Column(name="website")
private String website;
@Column(name="contperson")
private String contperson;
@Column(name="email")
private String email;
@Column(name="deadline")
private String deadline;
@Column(name="venue")
private String venue;
@Column(name="orgby")
private String orgby;
@Column(name="orgpername")
private String orgpername;
@Column(name="eventname")
private String eventname;
@Column(name="eventpassword")
private String eventpassword;
@Column(name="status")
private String status;
private String subject;
public Conference() {

}
public Conference( String city, String topic, String subtopic, String date,
		         String info, String venue, String orgby, String deadline, String email, String contperson,
		         String website, String eventserial,String eventname,String orgpername,String eventpassword,String status) {
	super();
	this.city = city;
	this.topic = topic;
	this.subtopic = subtopic;
	this.date = date;
	this.info = info;
	this.venue = venue;
	this.orgby = orgby;
	this.deadline = deadline;
	this.contperson = contperson;
	this.website = website;
	this.eventserial = eventserial;
	this.eventname=eventname;
	this.orgpername=orgpername;
	this.eventpassword=eventpassword;
	this.status=status;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getTopic() {
	return topic;
}
public void setTopic(String topic) {
	this.topic = topic;
}
public String getSubtopic() {
	return subtopic;
}
public void setSubtopic(String subtopic) {
	this.subtopic = subtopic;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getInfo() {
	return info;
}
public void setInfo(String info) {
	this.info = info;
}

public String getEventserial() {
	return eventserial;
}
public void setEventserial(String eventserial) {
	this.eventserial = eventserial;
}
public String getWebsite() {
	return website;
}
public void setWebsite(String website) {
	this.website = website;
}
public String getContperson() {
	return contperson;
}
public void setContperson(String contperson) {
	this.contperson = contperson;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getDeadline() {
	return deadline;
}
public void setDeadline(String deadline) {
	this.deadline = deadline;
}
public String getVenue() {
	return venue;
}
public void setVenue(String venue) {
	this.venue = venue;
}
public String getOrgby() {
	return orgby;
}
public void setOrgby(String orgby) {
	this.orgby = orgby;
}
public String getOrgpername() {
	return orgpername;
}
public void setOrgpername(String orgpername) {
	this.orgpername = orgpername;
}
public String getEventname() {
	return eventname;
}
public void setEventname(String eventname) {
	this.eventname = eventname;
}
public String getEventpassword() {
	return eventpassword;
}
public void setEventpassword(String eventpassword) {
	this.eventpassword = eventpassword;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}

public String getSubject() {
	return subject;
}
public void setSubject(String subject) {
	this.subject = subject;
}
@Override
public String toString() {
	return "Conference [id=" + id + ", city=" + city + ", topic=" +topic + ", subtopic=" + subtopic+ ", info=" + info + ", orgby=" + orgby + ", venue=" +venue + ",deadline=" +deadline+ ","
	+ "email=" + email + ", date=" +date + ",website=" + website + ", eventserial=" + eventserial+","
	+ " eventname=" + eventname+",orgpername=" + orgpername+",eventpassword=" + eventpassword+",status=" + status+"]";
}
}
