class Famimain
  def timecal(itemtime, createtime)
    # 販売可能時間を計算する
    # 秒で計算
    cal_time = (itemtime * 3600 - (Time.now - createtime))
    #１時間未満だったら分を返す。それ以外は時間で返す。
    if cal_time >= 3600
      return "#{(cal_time / 3600).to_i}時間"
    elsif 0 < cal_time && cal_time < 3600
      return "#{(cal_time / 60).to_i}分"
    else
      return "0時間"
    end
  end
  def timecalnos(itemtime, createtime)
    # 販売可能時間を計算する
    # 秒で計算
    cal_time = (itemtime * 3600 - (Time.now - createtime))
    #１時間未満だったら分を返す。それ以外は時間で返す。
    if cal_time >= 3600
      return (cal_time / 3600).to_i
    elsif 0 < cal_time && cal_time < 3600
      return (cal_time / 60).to_i
    else
      return cal_time
    end
  end

  def timediscard(itemtime, createtime)
    # 廃棄時間を計算する
    dis_time = (createtime + itemtime*3600)
    return dis_time.strftime("%-m月%-d日 %-H時%-M分")
  end

  def timediscardno(itemtime, createtime)
    # 廃棄時間を計算する
    dis_time = (createtime + itemtime*3600)
  end

end