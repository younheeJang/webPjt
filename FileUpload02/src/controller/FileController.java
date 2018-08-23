package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dao.FileDAO;
import vo.FileVO;

@Controller
public class FileController {

	@Autowired
	private FileDAO dao;

	@RequestMapping("/uploadForm.do")
	public String uploadForm() {

		return "upload_form";
	}

	@RequestMapping("/upload.do")
	public ModelAndView upload(@RequestParam("uploadFiles") MultipartFile[] files) {

		String dirPath = "c:/springFiles/";

		File dir = new File(dirPath);
		if (dir.exists() == false) {
			dir.mkdir();
		}

		List<FileVO> fileList = new ArrayList<>();

		for(MultipartFile f:files) {
			String savedName = new Random().nextInt(10000000)+"";
			String savedPath = dirPath+savedName;
			String originalName = f.getOriginalFilename();
			
			FileVO myFile=new FileVO();
			myFile.setOriginalName(originalName);
			myFile.setSavedPath(savedPath);
			File savedFile = new File(savedPath);
			try {
				f.transferTo(savedFile);
				dao.insert(myFile);
				fileList.add(myFile);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		ModelAndView mv = new ModelAndView("upload_result");		
		mv.addObject("fileList", fileList);
		return mv;
	}

	
}
