class ClubController < ApplicationController
    def create
    end    

    def create_done
        #unless params[:name].blank?||params[:belonging].blank?||params[:cat].blank?||params[:limit_deptm].blank?||params[:limit_stunum].blank?||params[:mustdo].blank?||params[:freq].blank?||params[:estab].blank?||params[:cont].blank?
            new_reg=Reg.new
            new_reg.name=params[:name]
            new_reg.belonging=params[:belonging]
            new_reg.belonging_text=params[:belonging_text]
            new_reg.cat=params[:cat]
            new_reg.limit_deptm=params[:limit_deptm]
            new_reg.limit_stunum=params[:limit_stunum]
            new_reg.limit_stunum_text=params[:limit_stunum_text]
            new_reg.mustdo=params[:mustdo]
            new_reg.mustdo_text=params[:mustdo_text]
            new_reg.freq=params[:freq]
            new_reg.freq_text=params[:freq_text]
            new_reg.estab=params[:estab]
            new_reg.cont=params[:cont]
            new_reg.save
        #end
    end
    
    #컨트롤러 따로 만들어야 하는건지 모르겠어서 여기 추가했어요
    def main 
    end
    
    def main_image
    end
    
    def calendar
    end
    def calendar_event
    end
    def calendar_recruit
    end
end
