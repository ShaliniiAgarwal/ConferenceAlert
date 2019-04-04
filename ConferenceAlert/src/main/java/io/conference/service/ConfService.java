package io.conference.service;

import java.util.HashSet;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import io.conference.Entity.Conference;
import io.conference.repository.ConfRepository;
@Service
public class ConfService {
	  @Autowired
	   private ConfRepository Repo;
//here we can also use list instead of hashset
	public HashSet<Conference> getAllDetails() { 
		  HashSet<Conference> details= new  HashSet<>();
		  Repo.findAll()
		  .forEach(details::add);
		    return details;
	}
	  public List<Conference>getUniqueTopic() { 
		 return Repo.findDistinctTopic();
	}
	  public List<Conference> getUniqueCity() { 
			 return Repo.findDistinctCity();
		}
	 
	public List<Conference> getInfoByTopic(String topic) {
		return Repo.getInfoByTopic(topic);
	}
	public List<Conference> getInfoByCity(String city) {
		return Repo.getInfoByCity(city);
	}

}
