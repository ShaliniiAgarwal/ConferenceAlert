package io.conference.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import io.conference.Entity.Conference;
import java.util.List;
@Repository
public interface ConfRepository extends JpaRepository<Conference,Integer>{
	
	  @Query(value="SELECT DISTINCT topic FROM confinfo ORDER BY topic",nativeQuery=true)
	  List<Conference> findDistinctTopic();
	  @Query(value="SELECT * FROM conference.confinfo group by city",nativeQuery=true)
	  List<Conference> findDistinctCity();
	@Query(value="SELECT *FROM confinfo WHERE topic=?1 && status=\"active\"",nativeQuery=true)
	List<Conference> getInfoByTopic(String topic);
	@Query(value="SELECT * FROM confinfo WHERE city=?1 && status=\"active\"",nativeQuery=true)
	List<Conference> getInfoByCity(String city);
	
}
