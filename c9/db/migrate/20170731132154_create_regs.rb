class CreateRegs < ActiveRecord::Migration
  def change
    create_table :regs do |t|
      t.string :name  #동아리명
      t.string :belonging   #동아리소속
      t.string :belonging_text  #동아리소속 기타
      t.string :cat   #분과
      t.string :limit_deptm  #학과제한
      t.string :limit_stunum   #학번제한
      t.string :limit_stunum_text  #학번제한 기타
      t.string :mustdo  #필수활동기간
      t.string :mustdo_text  #필수활동기간 기타
      t.string :freq #활동빈도
      t.string :freq_text  #활동빈도 기타
      t.integer :estab  #창설연도
      t.text :cont  #동아리설명
      
      t.timestamps null: false
    end
  end
end
