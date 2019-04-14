/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nangui.services;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.servlet.http.Part;

/**
 * Ce fichier sert à uploader des fichiers images
 * @author Adonai Nangui
 * @version 1.0
 * @since 13/04/2019
 */
public class Upload {
    public static String getFileName(Part part) {
        //final String partHeader = part.getHeader("content-disposition");
        for (String content : part.getHeader("content-disposition").split(";")) {
            //System.out.println("***** Content : " + content);
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim()
                    .replace("\"", "");
            }
        }
        return null;
    }
    
    // save uploaded file to a defined location on the server
    public static void saveFile(InputStream uploadedInputStream,String serverLocation) {
        try {
            OutputStream outputStream = new FileOutputStream(new File(serverLocation));
            int read;
            byte[] bytes = new byte[1024];
            outputStream = new FileOutputStream(new File(serverLocation));
            while ((read = uploadedInputStream.read(bytes)) != -1) {
                outputStream.write(bytes, 0, read);
            }
            outputStream.flush();
            outputStream.close();
        } catch (IOException e) {
        }
    }
}
