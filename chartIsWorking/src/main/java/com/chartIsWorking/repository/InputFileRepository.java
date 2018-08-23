package com.chartIsWorking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chartIsWorking.model.InputFileBean;

public interface InputFileRepository extends JpaRepository<InputFileBean, Integer> {

}
