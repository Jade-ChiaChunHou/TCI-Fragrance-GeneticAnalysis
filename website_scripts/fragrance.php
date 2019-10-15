<!DOCTYPE html>
<html>
<head>
<style>

.overview {
  background-color: #E8F8F5;
  color: black;
  margin: 60px 30px 200px 20px;
  padding: 20px;

  border: 0px solid #F7DC6F;

  table-layout: auto;
  width: 840px;
}

.table_overview{

  background-color: white;
  color: black;
  margin: 20px;
  padding: 20px;
  border: 2px solid #D5D8DC;

  table-layout: auto;
  width: 800px;
}



.disease_title {
  background-color: white;
  color: black;
  margin: 20px;
  padding: 20px;
  border: 0px solid #F7DC6F;

  table-layout: auto;
  width: 840px;
}

.table_report_title{
  background-color: #FDF2E9;
  color: black;
  margin: 5px;
  padding: 20px;
  border: 1px solid #FDF2E9;

  table-layout: auto;
  width: 800px;
}


.table_disease_tile{
  background-color: white;
  color: black;
  margin: 5px;
  padding: 5px;
  border: 1px solid #F7DC6F;

  table-layout: auto;
  width: 800px;

}




.disease_detail {
  background-color: #FDF2E9;
  color: black;
  margin: 20px;
  padding: 1px;
  border: 0px solid #FDF2E9;

  table-layout: auto;
  width: 840px;
}

.plotly3D {
  background-color: #FDF2E9;
  color: black;
  margin: 40px;
  padding: 1px;
  border: 0px solid #FDF2E9;

  table-layout: auto;
  width: 800px;
}


th.disease_detail{
  background-color: #FDEBD0;
  color: white;
}

.table_disease_detail{
  background-color: white;
  color: black;
  margin: 20px;
  padding: 20px;
  border: 1px solid #D5D8DC;

  table-layout: auto;
  width: 800px;

}

.table_disease_detail th[scope=col]{
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #E8F8F5;
  color: black;

}




</style>
</head>

<body bgcolor="#FDF2E9">



<div class="disease_detail">


  <table class="table_report_title" FRAME="VOID" BORDER="2" RULES="ALL">

    <tr align="center">

      <th rowspan = "3">
        <ul style="list-style-type:none; text-align: left">
          <li align = "left"><font size="5" >專屬香氛精油報告</font></li>
          <li align = "left"><font size="4" >Personal Aroma Design<br>By Dynamic Gene Technology</font></li>
        </ul>
      </th>

      <td>採檢日期：2019/08/23</td>
    </tr>

    <tr align="center">
      <td>收件日期：2019/08/24</td>
    </tr>

    <tr align="center">
      <td>報告日期：2019/08/25</td>
    </tr>


  </table>

</div>





<div class="disease_detail">


  <table class="table_disease_detail" FRAME="VOID" BORDER="2" RULES="ALL">

    <tr align="center">
      <th scope=col>會員編號</th>
      <th scope=col>姓名</th>
      <th scope=col>出生日期</th>
      <th scope=col>檢測項目</th>
      <th scope=col>檢體類別</th>
      <th scope=col>檢測單位</th>
    </tr>


    <tr align="center">
      <td height="50">DP0001234T</td>
      <td>陳大名</td>
      <td>1992/12/27</td>
      <td>R1 抗衰老</td>
      <td>周邊血液細胞</td>
      <td>大江基因</td>
    </tr>



  </table>


</div>






<div class="disease_detail">


  <table class="table_disease_detail" FRAME="VOID" BORDER="2" RULES="ALL">

    <tr align="center">
      <th scope=col>客製化功能香評估</th>
    </tr>


    <tr align="center">
      <td><br>
          大江基因依您的周邊血液細胞進行基因表現量(RNA)分析，根據<br>
          「精油基因資料庫」、「高通量動態基因分析」、「科學化數據評估」<br>
          等三大方向，綜合評估出您的香氛精油。客製化功能香評估是作為<br>
          個人化專屬精油調配之重點參考。
          <br><br>
      </td>
    </tr>



  </table>


</div>






<div class="disease_detail">



  <table class="table_disease_detail" FRAME="VOID" BORDER="2" RULES="ALL">


    <tr align="center">
      <th scope=col colspan="5">基因功效精油搭配</th>
    </tr>


    <tr align="center">
      <th scope=col>基因功效</th>
      <th scope=col>基因表現</th>
      <th scope=col>建議使用精油</th>
    </tr>


    <tr align="center">
      <td height="60">抗氧化</td>
      <td bgcolor="#A9DFBF">IDEAL</td>
      <td>葡萄柚、廣藿香</td>
    </tr>

    <tr align="center">
      <td height="60">抗老化</td>
      <td bgcolor="#F5B7B1">NON-IDEAL</td>
      <td>茶樹、雪松</td>
    </tr>

    <tr align="center">
      <td height="60">DNA修復</td>
      <td bgcolor="#F5B7B1">NON-IDEAL</td>
      <td>葡萄柚、薄荷</td>
    </tr>

    <tr align="center">
      <td height="60">免疫</td>
      <td bgcolor="#F9E79F">STANDARD</td>
      <td>杜松子、乳香</td>
    </tr>

    <tr align="center">
      <td height="60">膠原蛋白生成</td>
      <td bgcolor="#F9E79F">STANDARD</td>
      <td>佛手柑、絲柏</td>
    </tr>

    <tr align="center">
      <td height="60">抗發炎</td>
      <td bgcolor="#F5B7B1">NON-IDEAL</td>
      <td>冷壓檸檬、橙精油</td>
    </tr>

    <tr align="center">
      <td height="60">保濕</td>
      <td bgcolor="#A9DFBF">IDEAL</td>
      <td>玫瑰草、芫荽</td>
    </tr>

    <tr align="center">
      <td height="60">心血管保健</td>
      <td bgcolor="#A9DFBF">IDEAL</td>
      <td>百里香、薄荷</td>
    </tr>

    <tr align="center">
      <td height="60">脂肪肝</td>
      <td bgcolor="#F9E79F">STANDARD</td>
      <td>天竺葵、絲柏</td>
    </tr>

    <tr align="center">
      <td height="60">呼吸道過敏</td>
      <td bgcolor="#A9DFBF">IDEAL</td>
      <td>依蘭、綠花白千層</td>
    </tr>


    <tr>
      <td align="right" colspan="5" height="70">
        <font size = "2" color = "grey">評估結果，適合您的精油結果為&nbsp;</font>
        <font size = 5 color = "grey"> | </font>
        <font size = 5 color = #5DADE2>&nbsp;絲柏、天竺葵、甜馬鬱蘭&nbsp;精油&nbsp;&nbsp;</font></td>
    </tr>



  </table>

</div>





<div class="disease_detail">


  <table class="table_disease_detail" FRAME="VOID" BORDER="2" RULES="ALL">

    <tr align="center">
      <th scope=col>香氛散佈圖</th>
    </tr>


    <tr align="center">
      <td><br>
          大江基因針對香氛與人體生理功效互動性做研究。利用細胞實驗與基因平台測<br>
          試，觀察人體在使用香氛後，血液中的mRNA表現量與蛋白質活性反應，並結合<br>
          「精油基因資料庫」與「高通量基因分析儀」，經過科學化數據計算出您近期<br>
          身體的狀態，找出香氛與產品相輔相成的搭配趨勢，以建立TCI香氛資料庫，<br>
          創造每一支保養品的獨特配方與香味。
          <br><br>
      </td>
    </tr>



  </table>


</div>

<div class="plotly3D">
    <a href="https://plot.ly/~jade9756/7/?share_key=zBypw5s9pggTgk2S8tpntx" target="_blank" title="R1190816_R1_02_scatter3d-fragrance" style="display: block; text-align: center;"><img src="https://plot.ly/~jade9756/7.png?share_key=zBypw5s9pggTgk2S8tpntx" alt="R1190816_R1_02_scatter3d-fragrance" style="max-width: 100%;width: 600px;"  width="600" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="jade9756:7" sharekey-plotly="zBypw5s9pggTgk2S8tpntx" src="https://plot.ly/embed.js" async></script>
</div>






<div class="disease_detail">



  <table class="table_disease_detail" FRAME="VOID" BORDER="2" RULES="ALL">


    <tr align="center">
      <th scope=col colspan="5">基因功效精油搭配</th>
    </tr>


    <tr align="center">
      <th scope=col>推薦精油</th>
      <th scope=col>氣味</th>
      <th scope=col>功效</th>
    </tr>


    <tr align="center">
      <td height="60">絲柏</td>
      <td>散發出輕柔的木質清香與怡人的琥珀香味。</td>
      <td>調節肝臟功能，幫助血液循環、減輕經前症候群<br>
          及更年期造成的副作用、抗痙攣及舒緩的作用。</td>
    </tr>

    <tr align="center">
      <td height="60">天竺葵</td>
      <td>溫和、甜「香菜」味。</td>
      <td>利尿，排解體內水分滯留。調節循環系統，<br>
          能快速消除昆蟲叮咬的刺痛感。</td>
    </tr>

    <tr align="center">
      <td height="60">甜馬鬱蘭</td>
      <td>主調是香草香味，氣味性質溫暖。</td>
      <td>鎮定安神，舒緩焦慮與壓力。</td>
    </tr>



    <tr>
      <td align="right" colspan="5" height="70">
        <font size = "2" color = "grey">評估結果，適合您的精油結果為&nbsp;</font>
        <font size = 5 color = "grey"> | </font>
        <font size = 5 color = #5DADE2>&nbsp;絲柏、天竺葵、甜馬鬱蘭&nbsp;精油&nbsp;&nbsp;</font></td>
    </tr>

  </table>

</div>









</body>



</html>
