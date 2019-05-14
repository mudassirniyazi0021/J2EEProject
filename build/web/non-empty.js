function required()
{
    var a=true;
    
var name = document.forms["form1"]["name"].value;
var mobno=document.forms["form1"]["mobno"].value;
var email=document.forms["form1"]["email"].value;
var pass=document.forms["form1"]["pass"].value;
 var phoneno = /^\d{10}$/;
if (name == '')
{
 alert("Please Enter Name") ;
 return false;
       }
 
 
 
if(mobno == '')
{
     alert("Please Enter Mobile No.") ;
     return false;
  }

    
 if(email == '')
{
       alert("Please Enter  Email Id") ;
       return false;
   }

if(pass == '')
{
       alert("Please Enter  Password") ;
       return false;
   }
     
     
      if(mobno.value.match(phoneno))
        {
      alert("Please Enter Proper Mobile No.") ;
      return false;
        }
    
     
 
else 
{
  return true;
}
}




function update()
{
    var a=true;
    
var name = document.forms["form1"]["name"].value;
var mobno=document.forms["form1"]["mobno"].value;
var email=document.forms["form1"]["email"].value;
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

if (name == '')
{
 alert("Please Enter Name") ;
 return false;
       }
 
 
 
if(mobno == '')
{
     alert("Please Enter Mobile No.") ;
     return false;
  }

    
 if(email == '')
{
       alert("Please Enter  Email Id") ;
       return false;
   }
   
if(!email.value.match(mailformat))
{
    alert("Please Enter Proper Email Id..") ;
return false ;
}


 






 
else 
{
  return true;
}

}











