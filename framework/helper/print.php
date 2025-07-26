<?php

function portait_print($data=array()){
    $ret='
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" slang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>

	<!-- General Metas -->
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	<!-- Force Latest IE rendering engine -->
	<title>'.$data['title'].'</title>
	<meta name="description" content="">
	<meta name="author" content="">
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	
	<!-- CSS -->

	<link href="htmlprint/ui/fonts/webfont.css" rel="stylesheet" />
	<link rel="stylesheet" href="htmlprint/ui-print/css/style-global.css" type="text/css" />
	<link rel="stylesheet" href="htmlprint/ui-print/css/style-paging.css" type="text/css" />
	
	<!-- BOOTSTRAP CSS -->
	<link rel="stylesheet" href="htmlprint/ui-print/bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" href="htmlprint/ui-print/dist/css/formValidation.css" />
    <!-- BOOTSTRAP MODIFY CSS -->
    <link rel="stylesheet" href="htmlprint/ui-print/bootstrap/css/bootstrap-modify.css" />
    <link rel="stylesheet" href="htmlprint/ui-print/css/style-print.css" />
    
	<!-- JQuery JS -->
	<script type="text/javascript" src="htmlprint/ui-print/jquery/jquery.min-1.10.2.js"></script>
	
	<!-- BOOTSTRAP JS -->
	<script type="text/javascript" src="htmlprint/ui-print/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="htmlprint/ui-print/bootstrap/js/moment/min/moment-with-locales.js"></script>
	
	<!-- <script src="https://cdn.jsdelivr.net/jsbarcode/3.6.0/JsBarcode.all.min.js"></script> -->

	

	
	<link rel="stylesheet" href="htmlprint/ui-print/fonts/font-style.css" type="text/css" />
	<style type="text/css">
		html { height: auto; }
	</style>
	
	<style type="text/css">
	html { height: auto; }
	body {
        margin: 0;
        padding: ;
        background-color: #eee;
        color: #000000;
    }
    * {
        box-sizing: border-box;
        -moz-box-sizing: border-box;
    }
    .page {
    	display: block;
	    width: 296mm;
	    height: 210mm;
	    max-height: 210mm;
	    padding: .5cm .5cm .5cm .5cm;
	    margin: .5cm auto;
	    border: 1px #D3D3D3 solid;
	    background: white;
	    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
	    font-family: \'THSarabunPSK\';
	    position: relative;
	}
	.page .text-bold { font-weight: bold; }
	.page .font24 { font-size: 1.5em; }
	.page .font20 { font-size: 1.25em; }
	.page .font18 { font-size: 1.125em; }
	.page .font16 { font-size: 1em; }
	.page .font14 { font-size: 0.875em; }
	.page .font13 { font-size: 0.8em; }
	.page .font12 { font-size: 0.75em; }
	.page .font11 { font-size: 0.6875em; }
	.page .font10 { font-size: 0.625em; }
	.page .font9 { font-size: 0.5625em; }
	.page .font8 { font-size: 0.5em; }
	.page .page-form { width: 100%;padding: 0px;border: 0px; }
	.page .page-form th { padding: 2px 0px 1px;border-bottom: 1px solid #000;text-align: center; }
	.page .page-form th.bl { border-left: 1px solid #000; }
	.page .page-form td { padding: 0px;vertical-align: top; }
	.page .page-form td.bl { border-left: 1px solid #000; }
	.page .page-form tbody tr:first-child td { padding-top: 4px; }
	
	.page .table-clean { width: 100%;padding: 0px; }
	.page .table-clean td { padding: 0px;vertical-align: top; }
	
	.wrapper-other {
	  display: inline-flex;
	  flex-direction: column;
	  flex-wrap: wrap;
	  max-height: 3cm;
	}

	@page {
        size: A4;
        margin: 0;
    }
    @media print {
        .page {
            margin: 0;
            border: initial;
            border-radius: initial;
            width: initial;
            min-height: initial;
            box-shadow: initial;
            background: initial;
            page-break-after: always;
        }
    }
}
</style>
    <style>
    .containerasd {
    display: grid;
    grid-template-columns: 50pt 150pt 15pt 15pt 15pt; /* กำหนดขนาดของแต่ละคอลัมน์ */
    width: 100%;
    height: 167mm;
    border: 1px solid #000; /* เส้นขอบรอบนอก */
}

.column {
    border-left: 1px solid #000; /* เส้นขอบซ้ายของแต่ละคอลัมน์ */
    height: 100%;
    display: flex;
    justify-content: center; /* จัดข้อความให้อยู่กึ่งกลางแนวนอน */
    align-items: center; /* จัดข้อความให้อยู่กึ่งกลางแนวตั้ง */
    font-family: \'THSarabunPSK\';
    font-size: 14pt;
}

.column:first-child {
    border-left: none; /* ไม่ต้องมีเส้นขอบซ้ายของคอลัมน์แรก */
}

.column:last-child {
    border-right: none; /* ไม่ต้องมีเส้นขอบขวาของคอลัมน์สุดท้าย */
}

p {
    margin: 0;
}
.subname span:first-child {
	float: left;
}
.subname span:last-child {
	float: right;
	text-align: right;
}

.row {
	display: flex;
	justify-content: space-between;
	width: 100%;
}
.column-item {
	padding: 0 5px;
}
.column-item:first-child {
	flex: 1;
	text-align: right;
	width: 20%;
}
.column-item:last-child {
	flex: 6;
	text-align: left;
	padding-left: 1px;
}
</style>
</head>
<body>
<div id="container">
	 <div class="hidden-print" style="width: 210mm;text-align: center;padding-bottom: 10px;margin: 5px auto;">
		<button type="button" class="btn btn-primary hidden-print" onclick="window.print();" style="margin-top: 5px;"><span class="glyphicon glyphicon-print"></span> &nbsp;พิมพ์</button>
	 </div>
    
   
	 <!-- Page 1 -->
     <div class="page">
     <p>พิมพ์ตารางสอนใส่ระบบ
     </p>
	'.$data['content'].'
    </div>
  		 
</div>
</body>
</html>	';

return $ret;
}