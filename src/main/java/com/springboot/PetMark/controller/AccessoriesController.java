package com.springboot.PetMark.controller;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.List;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Category;
import com.springboot.PetMark.repository.AccessoriesRepository;
import com.springboot.PetMark.service.AccessoriesService;
import com.springboot.PetMark.service.CategoryService;

@Controller
@RequestMapping("/admin/AccessoriesManagement")
public class AccessoriesController {
	@Autowired
	AccessoriesService AccessoriesService;
	@Autowired
	CategoryService CategoryService;
	@Autowired
	ServletContext context;

//	
	@RequestMapping
	public String index(ModelMap model, HttpServletRequest request) throws IllegalArgumentException {
		HttpSession session = request.getSession();
		List<Accessories> listAccessories = new ArrayList<Accessories>();
//		List<Accessories> listAccessories = AccessoriesService.findAll();
		List<Integer> listAccessoriesInteger = new ArrayList<Integer>();
		List<Category> listCategory = CategoryService.findAll();
//		
		List<String> listStatus = AccessoriesService.getStatus();
		int countContinueAccessories = AccessoriesService.countContinueProduct();
//		System.out.println("countContinueAccessories: " + countContinueAccessories);
		int totalPage = (int) Math.ceil((double)countContinueAccessories/10);
//		
		int targetPage;

		if (session.getAttribute("targetPage") != null) {
			targetPage = (int) session.getAttribute("targetPage");
		} else
			targetPage = 1;

		if (request.getParameter("targetPage") != null) {
			targetPage = Integer.valueOf(request.getParameter("targetPage"));
		}
		int page = targetPage - 1;
//		listAccessories = AccessoriesService.findAll();
		listAccessories = AccessoriesService.showProductByCategoryPageable("", PageRequest.of(page, 10, Sort.by("id").ascending()));
//		System.out.println("danh sách thú: " +listAccessories);
//		System.out.println("danh sách giống: " +listCategory);
//		model.addAttribute("listAccessories", listAccessories);
//		model.addAttribute("listCategory", listCategory);
//		int page = targetPage - 1;

		if (request.getParameter("scrollT") != null) {
			model.addAttribute("scrollT", request.getParameter("scrollT"));
		}

		String nameButton2 = "Ngừng bán";
//		String classButton2 = "btn_upload";
		String classButtonDelete = "btn_delete2";
		String sortValue = request.getParameter("sortValue");
		System.out.println("Index Sort: " + sortValue);
		if (sortValue == null)
			sortValue = "-1";
		model.addAttribute("sortValue", sortValue);
		try {		
			switch (sortValue) {
			case "-1":
				if(targetPage > totalPage) page = 0;
				listAccessories = AccessoriesService.showProductByCategoryPageable( "Còn hàng", PageRequest.of(page, 10, Sort.by("id").ascending()));
				
				break;
			case "0":
				if(targetPage > totalPage) page = 0;
				listAccessories = AccessoriesService.showProductByCategoryPageable("Còn hàng", PageRequest.of(page, 10, Sort.by("id").descending()));
				
				break;
			case "1":
				if(targetPage > totalPage) page = 0;
				listAccessories = AccessoriesService.showProductByCategoryPageable("Còn hàng", PageRequest.of(page, 10, Sort.by("price").ascending()));
				
				break;
			case "2":
				if(targetPage > totalPage) page = 0;
				listAccessories = AccessoriesService.showProductByCategoryPageable("Còn hàng", PageRequest.of(page, 10, Sort.by("price").descending()));
				
				break;
//			case "3":
//				if(targetPage > totalPage) page = 0;
//				listAccessories = AccessoriesService.showAccessoriesByCategoryPageable("Còn hàng", PageRequest.of(page, 10, Sort.by("id").ascending()));
//				
//				break;
//			case "3":
//				int countPaid = AccessoriesService.showAccessoriesByCategoryOrderByPaid("", false, null).size();
//				totalPage = (int) Math.ceil((double)countPaid/10);
//				if(targetPage > totalPage) page = 0;
//				listAccessoriesInteger = AccessoriesService.showAccessoriesByCategoryOrderByPaid("", false, PageRequest.of(page, 10));
//				
//				break;
//			case "4":
//				int countLike = AccessoriesService.showAccessoriesByCategoryOrderByLike("", false, null).size();
//				totalPage = (int) Math.ceil((double)countLike/10);
//				if(targetPage > totalPage) page = 0;
//				listAccessoriesInteger = AccessoriesService.showAccessoriesByCategoryOrderByLike("", false, PageRequest.of(page, 10));
//				
//				break;
//			case "5":
//				int countView = AccessoriesService.showAccessoriesByCategoryOrderByView("", false, null).size();
//				totalPage = (int) Math.ceil((double)countView/10);
//				if(targetPage > totalPage) page = 0;
//				listAccessoriesInteger = AccessoriesService.showAccessoriesByCategoryOrderByView("", false, PageRequest.of(page, 10));
//				
//				break;
			case "3":
				if(targetPage > totalPage) page = 0;
				listAccessories = AccessoriesService.showProductByCategoryPageable("Ngừng bán", PageRequest.of(page, 10, Sort.by("id").ascending()));
//				totalPage = (int) Math.ceil((double)AccessoriesService.countAccessories("Ngừng bán")/10);
				nameButton2 = "Đăng bán";
//				classButton2 = "cancel_discontinue";
				classButtonDelete = "cancel_discontinue";
				
				break;
			default:
				
				break;
			}
		
		} catch (Exception e) {
			return "404";
		}
		if (!listAccessoriesInteger.isEmpty()) {
			for (Integer integer : listAccessoriesInteger) {
				listAccessories.add(AccessoriesService.findById(integer));
			}
		}
//		

		if (session.getAttribute("add") != null) {
			model.addAttribute("add", "added");
			session.setAttribute("add", null);
		}
//		
		session.setAttribute("targetPage", targetPage);
		model.addAttribute("nameButton2", nameButton2);
//		model.addAttribute("classButton2", classButton2);
		model.addAttribute("classButtonDelete", classButtonDelete);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("listAccessories", listAccessories);
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("listStatus", listStatus);
		System.out.println(listAccessories);
//		
		return "pages/accessory/accessory-manager";
//		return "admin/QLPK";
	}

//	
	@RequestMapping("/getPageableQLSP")
	public String getPageableQLSP(HttpServletRequest request) {

		return "redirect:/admin/AccessoriesManagement";
	}

//	
	@RequestMapping("/changeSortValue")
	public String changeSortValue(HttpServletRequest request) {
		String sortValue = request.getParameter("sortValue");
		
		return "redirect:/admin/AccessoriesManagement?sortValue="+sortValue;
		
	}
//	
	@RequestMapping("/AddAccessories")
	public String addAccessories(HttpServletRequest request) {
		String name = request.getParameter("name");
		String status = request.getParameter("status");
		String des = request.getParameter("mota");
//		String imagePath = request.getParameter("hiddenImgPath");
//		System.out.println("IMGpath:" + imagePath);
		String priceDisplay = request.getParameter("price");
		float price = Float.valueOf(priceDisplay);
//		String giaCoc = request.getParameter("p_add_coc");
//		float coc = Float.valueOf(giaCoc.substring(0, giaCoc.length() - 2).replaceAll("\\.", ""));
		int quantityLeft = Integer.valueOf(request.getParameter("quantity"));
//		int age = Integer.valueOf(request.getParameter("p_add_age"));
		int categoryID = Integer.valueOf(request.getParameter("category"));
		Category Category = CategoryService.findById(categoryID);
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		Accessories Accessories = new Accessories( name,  price,  quantityLeft,  Category,  date,des,  status);
		System.out.println("Accessories: "+Accessories);
//		System.out.println("giống : "+Category);
		AccessoriesService.addAccessories(Accessories);
//		request.getSession().setAttribute("add", "added");

		return "redirect:/admin/AccessoriesManagement";
	}


//	@RequestMapping("/AccessoriesManagement/UpdateAccessories")
//	@ResponseBody
//	public String updateAccessories(HttpServletRequest request) throws ParseException {
//		int id = Integer.valueOf(request.getParameter("p_fix_id"));
//		String name = request.getParameter("p_fix_name");
//		String status = request.getParameter("p_fix_status");
//		String priceDisplay = request.getParameter("p_fix_price");
//		String coc = request.getParameter("p_fix_coc");
//		float price = Float.valueOf(priceDisplay.substring(0, priceDisplay.length() - 2).replaceAll("\\.", ""));
//		float giaCoc = Float.valueOf(coc.substring(0, coc.length() - 2).replaceAll("\\.", ""));
//		int quantityLeft = Integer.valueOf(request.getParameter("p_fix_quantity"));
//		int age = Integer.valueOf(request.getParameter("p_fix_age"));
//		int categoryID = Integer.valueOf(request.getParameter("p_fix_categoryID"));
//		Category Category = CategoryService.findById(categoryID);
//		String date1 = request.getParameter("p_fix_date");
//		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(date1);
//		System.out.println(date);
//		Accessories Accessories = new Accessories(id, name, price, giaCoc, age, quantityLeft, "", status, Category, date);
//		AccessoriesService.updateAccessories(Accessories);
//		return "?update=done";
//	}
	
	@RequestMapping("/DisContinuedAccessories")
	@ResponseBody
	public String disContinuedAccessories(HttpServletRequest request) {
		int AccessoriesId = Integer.valueOf(request.getParameter("AccessoriesId"));
		System.out.println("AccessoriesID: " + AccessoriesId);
		AccessoriesService.disContinueAccessories(AccessoriesId);

		return "?DisContinuedAccessories=" + AccessoriesId;
	}
//	
	@RequestMapping("/ContinuedAccessories")
	@ResponseBody
	public String continuedAccessories(HttpServletRequest request) {
		int AccessoriesId = Integer.valueOf(request.getParameter("AccessoriesId"));
		AccessoriesService.continueAccessories(AccessoriesId);
		
		return "?ContinuedAccessories="+AccessoriesId;
	}
//	
//	@RequestMapping("/AccessoriesManagement/PermanentlyDeleted")
//	@ResponseBody
//	public String permanentlyDeleted(HttpServletRequest request) {
//		int AccessoriesId = Integer.valueOf(request.getParameter("AccessoriesId"));
//		AccessoriesService.permanentlyDeleted(AccessoriesId);
//		
//		return "?PermanentlyDeleted="+AccessoriesId;
//	}
//	
//	
//	@RequestMapping("/UploadIMG")
//	@ResponseBody
//	public String uploadIMG(ModelMap model, @RequestParam("addAccessoriesIMG") MultipartFile photo) {
//		try {
//			String fileContentType = photo.getContentType();
//			long fileSize = photo.getSize();
//			System.out.println("fileContentType: " + fileContentType); 
//			System.out.println("fileSize: " + fileSize); 
//			System.out.println(fileContentType.substring(0, 6));
//			if(!fileContentType.substring(0, 6).equals("image/")) {
//				return "?photo_name=FAIL";
//			} else if (fileSize > 2097152) {
//				return "?photo_name=OVERSIZE";
//			}
//			
//			String photoPath = context.getRealPath("/files/shop_item/" + photo.getOriginalFilename());
//			photo.transferTo(new File(photoPath));
//			model.addAttribute("photo_name", photo.getOriginalFilename());
//			
//		} catch (Exception e) {
//			// TODO: handle exception
//			System.out.println("Lỗi lưu file: " + e);
//		}
//		
//		return "?photo_name=files/shop_item/"+photo.getOriginalFilename();
}
