package com.apk.down;

import com.apk.down.model.ResultModel;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.sun.istack.internal.NotNull;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * Created by bighero on 2019/4/17.
 */
@WebServlet(name = "room", urlPatterns = "/room")
public class RoomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        List<String> read = read("/Users/bighero/java/Reserve/result");
        if (read == null) {
            return;
        }
        Gson gson = new Gson();
        List<ResultModel> list = new ArrayList<>();
        for (String s : read) {
            ResultModel resultModel = gson.fromJson(s, ResultModel.class);
            list.add(resultModel);
        }
        Collections.sort(list);


        request.setAttribute("rooms", list);
        request.getRequestDispatcher("room.jsp").forward(request, resp);
    }


    public static List<String> read(@NotNull String fileName) {
        File file = new File(fileName);
        if (!file.exists()) {
            return null;
        }
        String line;
        InputStreamReader inputStreamReader = null;
        BufferedReader bufferedReader = null;
        FileInputStream fileInputStream = null;
        List<String> strings = new ArrayList<>();
        try {
            fileInputStream = new FileInputStream(fileName);
            inputStreamReader = new InputStreamReader(fileInputStream, "UTF-8");
            bufferedReader = new BufferedReader(inputStreamReader);

            while ((line = bufferedReader.readLine()) != null) {
                strings.add(line);
            }
            return strings;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {

            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            if (inputStreamReader != null) {
                try {
                    inputStreamReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

        }

        return null;
    }
}
