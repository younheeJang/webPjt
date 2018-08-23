package com.chartIsWorking.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Entity
public @Data class InputFileBean {

	@Id
	@GeneratedValue
	Integer in_file_num;
	String in_original_name;
	String in_saved_path;
		
}
