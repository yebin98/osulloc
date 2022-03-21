
package org.osulloc.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;


import org.osulloc.domain.ProductDTO;
import org.osulloc.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import net.coobird.thumbnailator.Thumbnailator;

@Controller
@RequestMapping("page")

public class ProductController {

	
	
	@Autowired
	private ProductService productService;

	
	@PostMapping("product")
	public void addProduct(ProductDTO product) {
		productService.addProduct(product);
		
		System.out.println("connect!");

		
		
	}
	
	@GetMapping("product")
	public void product() {
	
	System.out.println("占쎄맒占쎈�뱄옙踰묉에占� 占쎈읂占쎌뵠筌욑옙 ");
	
	
	}	
	
	
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date(); 
		
	    String str=sdf.format(date); 
	    
	    return str.replace("-", File.separator);
	
	}

	
	private boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());  
			return contentType.startsWith("image");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}
	

	@PostMapping(value="productAjaxAction",produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	
	@ResponseBody
	public ResponseEntity<List<ProductDTO>> uploadAjaxPost(MultipartFile[] uploadFile) {
		
		System.out.println("aaa="+uploadFile);
		
		
		List<ProductDTO>list = new ArrayList<>();
		
		String uploadFolder="C:\\upload";
		
		
				// make Folder......
				String uploadFolderPath = getFolder();
				
				File uploadPath = new File(uploadFolder, getFolder());
				
				if(uploadPath.exists()==false) {
					uploadPath.mkdirs(); 
					
				}
				System.out.println("upload path: " + uploadPath);
				
				
				
				
				System.out.println("--------------------------------");
		for (MultipartFile multipartFile : uploadFile) {
			ProductDTO ProductDTO = new ProductDTO();
			System.out.println("Upload File Name: " +multipartFile.getOriginalFilename());
			System.out.println("Upload File Size: " +multipartFile.getSize());
			System.out.println("Upload File Content Type = " + multipartFile.getContentType());
			
			String uploadFileName = multipartFile.getOriginalFilename();
			
			/*uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);*/
			ProductDTO.setFilename(uploadFileName);
			
			
			UUID uuid = UUID.randomUUID();
		
			uploadFileName = uuid.toString() + "_" + uploadFileName;

			
			try {
				File saveFile = new File(uploadPath,uploadFileName);
				multipartFile.transferTo(saveFile);
				System.out.println("saveFile=" +saveFile);
			
				
				System.out.println("uploadPath=" +uploadPath);
				
				System.out.println("uploadFolderPath=" +uploadFolderPath);
				
				
				ProductDTO.setUploadpath(uploadFolderPath);
				ProductDTO.setUuid(uuid.toString());
				
				//check image type file 
				if(checkImageType(saveFile)) {
					
					ProductDTO.setImage(true);
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath,"s_"+uploadFileName));
					Thumbnailator.createThumbnail(multipartFile.getInputStream(),thumbnail,300,300);
					
					thumbnail.close(); 
				}
				
				list.add(ProductDTO);
				
				
				
			}catch (Exception e) {
				 System.out.println(e.getMessage());
			}
		}// end for
		return new ResponseEntity<>(list,HttpStatus.OK);
	}  //uploadAjaxPost
		
}