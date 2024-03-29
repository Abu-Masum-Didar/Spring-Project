package springMvcSearch;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class fileUpContro {
	
	@RequestMapping("/file")
	public String showUploadForm() 
	{
		
		
		return "fileUpload";
	}
	
	
	@RequestMapping(value="/uploadImage", method = RequestMethod.POST)
	public String uploadFile(@RequestParam("fileUp") CommonsMultipartFile file, HttpSession s, Model m)
	{
		System.out.println("file upload handler");
		System.out.println(file.getSize());
		System.out.println(file.getContentType());
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getStorageDescription());
		byte[] data = file.getBytes();
		//we have to this file to server..........
		
		
		//Auto file Save........
		//String path = s.getServletContext().getRealPath("/")+file.getOriginalFilename();
		
		// Select file Save 
		String path = s.getServletContext().getRealPath("/")
				+"WEB-INF"+File.separator+"resources"+File.separator+"images"+File.separator+file.getOriginalFilename();
		
		System.out.println(path);
		try {
				FileOutputStream fos= new FileOutputStream(path);
				fos.write(data);
				fos.close();
				System.out.println("File Uploaded");
				m.addAttribute("msg", "File uploaded successfully");
				m.addAttribute("fileName", file.getOriginalFilename());
		}catch(IOException e) {
			e.printStackTrace();
			System.out.println("Uploading error");
			m.addAttribute("msg", "Uploading problem!!!!!!!!!");
			
			
		}
		
		return"fileSuccess";
	}

}
