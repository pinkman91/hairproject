package ko.rheebh.set;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "loginPage";
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "mainPage";
	}

	@RequestMapping(value = "/calendarInfo", method = RequestMethod.GET)
	public String calendar(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "calendar/calendarInfo";
	}
	@RequestMapping(value = "/calendarReservation", method = RequestMethod.GET)
	public String calendar2(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "calendar/calendarReservation";
	}
	//기본 페이지
	@RequestMapping(value = "/mainInfo" , method = RequestMethod.GET)
	public String loginPage(Locale locale) {
		return "mainInfo";
	}
	//시술입력 메인
	@RequestMapping(value = "/saleInfo" , method = RequestMethod.GET)
	public String saleInfo(Locale locale) {
		return "sale/saleInfo";
	}
	//시술입력 중복 팝업창
	@RequestMapping(value = "/saleOverlap" , method = RequestMethod.GET)
	public String saleOverlap(Locale locale) {
		return "sale/saleOverlap";
	}
	//직원 개인 매출관리
	@RequestMapping(value = "/empSalesInfo" , method = RequestMethod.GET)
	public String empSalesInfo(Locale locale) {
		return "employee/empSalesInfo";
	}
	//직원 출.퇴근 관리
	@RequestMapping(value= "/diaryInfo" , method = RequestMethod.GET)
	public String diaryInfo(Locale locale) {
		return "employee/diaryInfo";
	}
	//고객관리 페이지
	@RequestMapping(value = "customerInfo" , method = RequestMethod.GET)
	public String customerInfo(Locale locale) {
		return "customerPage/customerinfo";
	}
	//신규고객등록 팝업창
	@RequestMapping(value = "customerNew" , method = RequestMethod.GET)
	public String customerNew(Locale locale) {
		return "customerPage/customerNew";
	}
	//중복 고객 확인 팝업창
	@RequestMapping(value = "customerOverlap" , method = RequestMethod.GET)
	public String customerOverlap(Locale locale) {
		return "customerPage/customerOverlap";
	}
	//고객 정보수정 팝업창
	@RequestMapping(value = "customerUpdate" , method = RequestMethod.GET)
	public String customerUpdate(Locale locale) {
		return "customerPage/customerUpdate";
	}
	//이벤트 메일발송
	@RequestMapping(value = "adminEmail" , method = RequestMethod.GET)
	public String adminEmail(Locale locale) {
		return "admin/adminEmail";
	}
	//제품 삭제 팝업창
	@RequestMapping(value = "adminItemDeletePopUp" , method = RequestMethod.GET)
	public String adminItemDeletePopUp(Locale locale) {
		return "admin/adminItemDeletePopUp";
	}
	//제품 추가 팝업창
	@RequestMapping(value = "adminItemInsertPopUp" , method = RequestMethod.GET)
	public String adminItemInsertPopUp(Locale locale) {
		return "admin/adminItemInsertPopUp";
	}
	//제품 수정 팝업창
	@RequestMapping(value = "adminItemUpdatePopUp" , method = RequestMethod.GET)
	public String adminItemUpdatePopUp(Locale locale) {
		return "admin/adminItemUpdatePopUp";
	}
	//관리자 영업 관리
	@RequestMapping(value = "adminSales" , method = RequestMethod.GET)
	public String adminSales(Locale locale) {
		return "admin/adminSales";
	}
	//관리자 매출 관리
	@RequestMapping(value = "adminSalesStatus" , method = RequestMethod.GET)
	public String adminSalesStatus(Locale locale) {
		return "admin/adminSalesStatus";
	}
	//관리자 매출 상새 팝업창
	@RequestMapping(value = "adminSalesStatusPopUp" , method = RequestMethod.GET)
	public String adminSalesStatusPopUp(Locale locale) {
		return "admin/adminSalesStatusPopUp";
	}
	//관리자 시술 삭제 팝업창
	@RequestMapping(value = "adminServiceDeletePopUp" , method = RequestMethod.GET)
	public String adminServiceDeletePopUp(Locale locale) {
		return "admin/adminServiceDeletePopUp";
	}
	//관리자 시술 추가 팝업창
	@RequestMapping(value = "adminServiceInsertPopUp" , method = RequestMethod.GET)
	public String adminServiceInsertPopUp(Locale locale) {
		return "admin/adminServiceInsertPopUp";
	}
	//관리자 시술 수정 팝업창
	@RequestMapping(value = "adminServiceUpdatePopUp" , method = RequestMethod.GET)
	public String adminServiceUpdatePopUp(Locale locale) {
		return "admin/adminServiceUpdatePopUp";
	}
	
}
