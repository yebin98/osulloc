package org.osulloc.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import org.osulloc.domain.AttachFileDTO;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import net.coobird.thumbnailator.Thumbnailator;

@Controller
public class UploadController {
	@GetMapping("upload")
	public void uploadForm() {}
	
	@GetMapping("uploadAjax")
	public void uploadAjaxForm() {}
	
	@PostMapping("uploadAction")
	public void uploadAction(MultipartFile[] uploadFile) {
		String uploadFolder="C:\\upload";
		for(MultipartFile multipartFile : uploadFile) {
			System.out.println("Upload File Name: " +multipartFile.getOriginalFilename());
			System.out.println("Upload File Size: " +multipartFile.getSize());
			System.out.println("Upload File Content Type = " + multipartFile.getContentType());
			File saveFile=new File(uploadFolder,multipartFile.getOriginalFilename());
			
			try {
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				e.printStackTrace();
			}//end try
		}
	}
	
	private String getFolder() {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str = sdf.format(date);
		System.out.println("date="+date);
		System.out.println(str.replace("-", File.separator));
		return str.replace("-", File.separator);
	}
	
	private boolean checkImage(File file) {
		try {
			String contentType=Files.probeContentType(file.toPath());
			return contentType.startsWith("image");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	@PostMapping(value="uploadAjaxAction",produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity <ArrayList<AttachFileDTO>> uploadAjaxAction(MultipartFile[] uploadFile) {
		ArrayList<AttachFileDTO> list = new ArrayList<>();
		String uploadFolder="C:\\upload";
		File uploadPath = new File(uploadFolder, getFolder());
		System.out.println("uploadAjaxAction osulloc uploadPath="+uploadPath);
		String uploadFolderPath=getFolder();
		if(uploadPath.exists()==false) {
			uploadPath.mkdirs();
		}
		
		for(MultipartFile multipartFile : uploadFile) {
			System.out.println("Upload File Name: " +multipartFile.getOriginalFilename());
			System.out.println("Upload File Size: " +multipartFile.getSize());
			System.out.println("Upload File Content Type = " + multipartFile.getContentType());
			AttachFileDTO attachdto = new AttachFileDTO();
			String uploadFileName= multipartFile.getOriginalFilename();
			attachdto.setFileName(uploadFileName);
			UUID uuid = UUID.randomUUID();
			uploadFileName=uuid.toString()+"_"+uploadFileName;
			File saveFile=new File(uploadPath,uploadFileName);
			try {
				multipartFile.transferTo(saveFile);
				attachdto.setUploadPath(uploadFolderPath); 
				attachdto.setUuid(uuid.toString()); 
				if(checkImage(saveFile)) {
					attachdto.setImage(true);
					FileOutputStream thumnail = new FileOutputStream(new File(uploadPath,"s_"+uploadFileName));
					Thumbnailator.createThumbnail(multipartFile.getInputStream(),thumnail, 200, 200);
					thumnail.close();
				}
				list.add(attachdto);
			} catch (Exception e) {
				e.printStackTrace();
			}//end try
		}
		return new ResponseEntity<>(list,HttpStatus.OK);
	}
	
	@GetMapping("display")
	public ResponseEntity<byte[]> getFile(String fileName) {
		System.out.println("url fileName="+fileName);
		
		File file = new File("C:\\upload\\"+fileName);
		System.out.println("file="+file);
		ResponseEntity<byte[]> result = null;

		try {
			HttpHeaders header = new HttpHeaders();
			result=new ResponseEntity<>(FileCopyUtils.copyToByteArray(file),header,HttpStatus.OK);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}

	@GetMapping(value="download",produces=MediaType.APPLICATION_OCTET_STREAM_VALUE)
	public ResponseEntity<Resource> downloadFile(String fileName){
		System.out.println("download fileName="+fileName);
		Resource resource = new FileSystemResource("C:\\upload\\"+fileName);
		System.out.println("download resource="+resource);
		String resourceName = resource.getFilename();
		HttpHeaders header = new HttpHeaders();
		try {
			header.add("Content-Disposition", "attachment; filename="+new String(resourceName.getBytes("UTF-8"),"ISO-8859-1"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		return new ResponseEntity<Resource>(resource,header,HttpStatus.OK);
	}
}