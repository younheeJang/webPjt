package com.chartIsWorking.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Entity
public @Data class OutputFileBean {
	@Id
	@GeneratedValue
	Integer out_file_num;
	String out_original_name;
	String out_saved_path;
}
