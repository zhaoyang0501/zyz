package com.pzy.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Action;
import com.pzy.entity.Worker;
import com.pzy.entity.WorkerToAction;
public interface WorkerToActionRepository extends PagingAndSortingRepository<WorkerToAction, Long>,JpaSpecificationExecutor<WorkerToAction>{
 public List<WorkerToAction> findByWorker(Worker worker);
 public List<WorkerToAction> findByAction(Action action);
 public List<WorkerToAction> findByActionAndWorker(Action action,Worker worker);
}

