package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Action;
public interface ActionRepository extends PagingAndSortingRepository<Action, Long>,JpaSpecificationExecutor<Action>{
 
}

