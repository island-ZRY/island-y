var flag=0;
function dispme(id){
	
	var aa="";
	aa=document.getElementById(id).value;
	var bb="";
	if(flag==0){
		bb=document.getElementById("t1").value;
		document.getElementById("t1").value=bb+aa;		
	}
	else{
		bb=document.getElementById("t3").value;
		document.getElementById("t3").value=bb+aa;		
	}
	
}

function sign(id){
	var aa="";
	aa=document.getElementById(id).value;
	document.getElementById("t2").value=aa;
	flag=1;
}

function  sub(){  
    var params=$('#Calculationid').serialize();
    console.log(params);
	$.ajax({   
    type:"post",
    dataType:"json",
    url:"http://localhost:8888/JavaEE01/Calculation",
    data:params,
    statusCode: {404: function() {  
         alert('page not found'); }  
      },      
    success:function(data){ 
    	//alter(data);
    	//$('#sp').html("<p>"+data+"</p>");
    	document.getElementById("t4").value=data;
    }  
    });  
  }  