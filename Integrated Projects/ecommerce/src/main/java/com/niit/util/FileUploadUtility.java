package com.niit.util;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/*public class FileUploadUtility {
	private static final String ABS_PATH = "E:\\TTT\\ecommerce\\src\\main\\webapp\\resources\\images\\";
	private static String REAL_PATH = "";

	private static final Logger logger = LoggerFactory.getLogger(FileUploadUtility.class);

	public static void uploadFile(HttpServletRequest request, Object file, Object code) {

		// TODO Auto-generated method stub
		REAL_PATH = request.getSession().getServletContext().getRealPath("/resources/images");

		logger.info(REAL_PATH);

		// to make sure all the directories exists
		if (!new File(ABS_PATH).exists()) {
			// create the directories
			new File(ABS_PATH).mkdirs();
		}
		if (!new File(REAL_PATH).exists()) {
			// create the directories
			new File(REAL_PATH).mkdirs();
		}
		try {
			// server upload
			file.transferTo(new File(REAL_PATH + code + ".jpg"));
			// project directory upload
			file.transferTo(new File(ABS_PATH + code + ".jpg"));
		} catch (IOException ex) {

		}
	}

}*/
