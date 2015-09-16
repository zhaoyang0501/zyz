
package com.pzy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pzy.entity.Action;
import com.pzy.entity.Worker;
import com.pzy.entity.WorkerToAction;
import com.pzy.repository.WorkerToActionRepository;

@Service
public class WorkerToActionService {
     @Autowired
     private WorkerToActionRepository workerToActionRepository;
     public List<WorkerToAction> findByWorker(Worker worker){
    	 return this.workerToActionRepository.findByWorker(worker);
     }
     public List<WorkerToAction> findByAction(Action action){
    	 return this.workerToActionRepository.findByAction(action);
     }
     public void delete(Long id){
          workerToActionRepository.delete(id);
     }
     public WorkerToAction find(Long id){
    	  return workerToActionRepository.findOne(id);
     }
     public void save(WorkerToAction WorkerToAction){
    	 workerToActionRepository.save(WorkerToAction);
     }
}