package io.conference.Entity;
import javax.persistence.*;
import java.util.Set;
@Entity
@Table(name="admin")
public class Admin {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
 private int id;
	@Column(name="name")
 private String name;
	@Column(name="password")
 private String password;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public Admin() {
}

}
