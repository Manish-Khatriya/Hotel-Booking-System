package book.hotel.controllers;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/UploadImageServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UploadImageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roomType = request.getParameter("roomType");
        Part filePart = request.getPart("image");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String uploadPath = getServletContext().getRealPath("") + File.separator + "images" + File.separator + roomType + ".jpg";

        // Ensure the directory exists
        File uploadDir = new File(getServletContext().getRealPath("") + File.separator + "images");
        if (!uploadDir.exists()) uploadDir.mkdir();

        try (InputStream input = filePart.getInputStream()) {
            // Save the uploaded file with a fixed name based on room type (e.g., basic.jpg)
            Files.copy(input, Paths.get(uploadPath), StandardCopyOption.REPLACE_EXISTING);
        }

        // After uploading, redirect back to the Rooms page or a success page
        response.sendRedirect("Rooms.jsp");
    }
}
