package com.example.android.kulub;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.ArrayList;

/**
 * Created by neroc on 2017-08-24.
 */

public class SchedulerAdapter extends BaseAdapter {
    private Context mContext;
    private ArrayList<Scheduler> mScheduler;
    public SchedulerAdapter(Context ctx, ArrayList<Scheduler> scheduler){
        mContext = ctx;
        mScheduler = scheduler;
    }

    @Override
    public int getCount() {
        return mScheduler.size();
    }

    @Override
    public Object getItem(int position) {
        return mScheduler.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        // Check if the existing view is being reused, otherwise inflate the view
        View gridItemView = convertView;
        if(gridItemView == null) {
            gridItemView = LayoutInflater.from(parent.getContext()).inflate(
                    R.layout.scheduler_grid_item, parent, false);
        }

        // Get the {@link Scheduler} object located at this position in the list
        Scheduler currentScheduler = (Scheduler)getItem(position);


        // Find the TextView in the list_item.xml layout with the ID version_name
        TextView dateTextView = (TextView) gridItemView.findViewById(R.id.date);
        // Get the version name from the current AndroidFlavor object and
        // set this text on the name TextView
        dateTextView.setText(Integer.toString(currentScheduler.getDate()));


        return gridItemView;
    }
}
