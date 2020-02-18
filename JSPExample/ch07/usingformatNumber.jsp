<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>计Αて</title></head>
    <body> 
    
    <table border="1" width="100%">
      <tr>
        <th width="50%">Α</th>
        <th width="50%">块</th>
      </tr>
      <tr>
        <td width="50%"  align=right>﹍计</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}"  />
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>簿埃だ筳才腹</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}" groupingUsed='false' />
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>程2俱计</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}"  maxIntegerDigits='2'  />       
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>程12俱计</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}"  minIntegerDigits='12'  />
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>程2计</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}"  maxFractionDigits='2'  />   
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>程12计</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}"  minFractionDigits='12'  /> 
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>穝刽</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}" type="currency"  currencyCode="TWD" />
        </td>
      </tr>
      <tr>
        <td width="50%" align=right></td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}" type="currency"  currencyCode="USD" />
        </td>
      </tr> 
      <tr>
        <td width="50%" align=right>チ刽</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}" type="currency"  currencyCode="CNY" />
        </td>
      </tr>   
      <tr>
        <td width="50%" align=right>璹妓Α(#.####E0)</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}" pattern="#.####E0" />
        </td>
      </tr>  
      <tr>
        <td width="50%" align=right>猭瓣计Α</td>
        <td width="50%">
        <fmt:setLocale value="fr"   />
        <fmt:formatNumber  value="${20001000.123}"   var = "formatValue" /> 
        ${formatValue}        
        </td>
      </tr>   
    </table>
    </body>
</html>
