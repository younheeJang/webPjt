package controller;

import java.io.File;
import java.io.IOException;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileController {

	@RequestMapping("/uploadForm.do")
	public String uploadFile() {
		return "upload_file";
	}

	@RequestMapping("/upload.do")
	public ModelAndView upload(@RequestParam("myFile")MultipartFile myFile) {
		
		String dirPath="c:/springFiles/";
		File dir = new File(dirPath);
		if(dir.exists()==false) {
			dir.mkdir();
		}
		
		String savedName=
				dirPath+new Random().nextInt(10000000);
			File savedFile = new File(savedName);
			
			try {
				myFile.transferTo(savedFile);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			System.out.println("originalName:"+myFile.getOriginalFilename());
			System.out.println("savedName:"+savedFile.getAbsolutePath());
			
		ModelAndView mv = new ModelAndView("upload_result");
		mv.addObject("originalName", myFile.getOriginalFilename());
		
		return mv;
	
	
	}

	
	
}
