package com.example.android.kulub;

/**
 * Created by neroc on 2017-08-24.
 */

public class Scheduler {
    private int mDate;

    public Scheduler(int date){
        mDate = date;
    }

    public int getDate(){
        return mDate;
    }

    public void setDate(int date){
        mDate = date;
    }
}
