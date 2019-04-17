package com.apk.down.model;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by bighero on 2019/4/17.
 */
public class ResultModel implements Comparable<ResultModel> {
    public int id;
    public String date;
    public String start_time;
    public String end_time;
    public String name = "";
    public String topic = "";
    public List<String> users = new ArrayList<>();




    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResultModel)) {
            return false;
        }
        if (((ResultModel) obj).id == id
                && ((ResultModel) obj).date.equals(date)
                && ((ResultModel) obj).start_time.equals(start_time)
                && ((ResultModel) obj).end_time.equals(end_time)) {
            return true;
        }
        return false;
    }

    @Override
    public int compareTo(ResultModel o) {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date old = sdf.parse(o.date);
            Date news = sdf.parse(date);
            return old.compareTo(news);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }



}
