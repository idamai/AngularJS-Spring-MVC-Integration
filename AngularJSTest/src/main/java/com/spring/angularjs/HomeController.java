package com.spring.angularjs;

import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.apache.commons.io.FileUtils;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.angularjs.model.Book;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	private final static String DEFAULT_RESOURCE_PATH = "WEB-INF/classes/";
	private final static String JSON_FILENAME = "booklist.json";

	private Book[] books;

	@Autowired
	private ResourceLoader resourceLoader;

	public void loadBooks() throws JsonParseException, JsonMappingException,
			IOException {
		Resource jsonfile;
		jsonfile = resourceLoader.getResource(DEFAULT_RESOURCE_PATH
				+ JSON_FILENAME);
		ObjectMapper mapper = new ObjectMapper();
		books = mapper
				.readValue(FileUtils.readFileToByteArray(jsonfile.getFile()),
						Book[].class);
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 * 
	 * @throws JsonMappingException
	 * @throws JsonParseException
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws JsonParseException,
			JsonMappingException, IOException {
		logger.info("Welcome home! The client locale is {}.", locale);

		loadBooks();
		logger.info("loaded books", books.toString());

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home.jsp";
	}

	@RequestMapping(value = "/showBooks", method = RequestMethod.GET)
	@ResponseBody
	public List<Book> getBooks() {
		List<Book> bookList = new ArrayList<Book>(Arrays.asList(books));
		return bookList;
	}
}
