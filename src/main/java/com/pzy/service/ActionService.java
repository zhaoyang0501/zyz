
package com.pzy.service;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.pzy.entity.Action;
import com.pzy.repository.ActionRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class ActionService {
     @Autowired
     private ActionRepository actionRepository;
     @Autowired
     private WorkerToActionService workerToActionService;
     public List<Action> findAll() {
    	 List<Action> list=(List<Action>) actionRepository.findAll();
    	 warpWorkerToAction(list);
    	 return list;
    	 
     }
     
     public void warpWorkerToAction(List<Action> actions){
    	 for(int i=0;i<actions.size();i++){
    		 actions.get(i).setWorkToActions(workerToActionService.findByAction(actions.get(i)));
    	 }
     }
     public Page<Action> findAll(final int pageNumber, final int pageSize,final String actionName){
               PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
              
               Specification<Action> spec = new Specification<Action>() {
                    @Override
                    public Predicate toPredicate(Root<Action> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
                    Predicate predicate = cb.conjunction();
                    if (actionName != null) {
                         predicate.getExpressions().add(cb.like(root.get("name").as(String.class), "%"+actionName+"%"));
                    }
                    return predicate;
                    }
               };
               Page<Action> result = (Page<Action>) actionRepository.findAll(spec, pageRequest);
               return result;
     }
     
     
     public void delete(Long id){
          actionRepository.delete(id);
     }
     public Action find(Long id){
    	  return actionRepository.findOne(id);
     }
     public void save(Action Action){
    	 actionRepository.save(Action);
     }
}