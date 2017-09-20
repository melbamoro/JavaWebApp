/**
 * ExtendTree
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL)
 * This is available through the world-wide-web at this URL:
 * http://opensource.org/licenses/OSL-3.0
 *
 * DISCLAIMER**
 *
 * @category   Java basic Fronend Web project 
 * @package    ExtendTree-Simple Java Web project
 * @license    http://opensource.org/licenses/OSL-3.0  Open Software License (OSL)
 * @Website    http://www.extendtree.com/
 */

var xmlhttp;
    	if (window.XMLHttpRequest)
    	  {// code for IE7+, Firefox, Chrome, Opera, Safari
    	  xmlhttp=new XMLHttpRequest();
    	  }
    	else
    	  {// code for IE6, IE5
    	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    	  }


function checkLogin(frm)
{
	var username=frm.username.value;
	var password=frm.password.value;

	if(username.length<1 || password.length<1)
	{
		document.getElementById('error').innerHTML='<blink><font color="yellow"/>Please Enter valid username & password..</blink>';
		return false;
	}

}

function checkRegistration(frm)
{
	var firstname =frm.firstname.value;
	var username=frm.username.value;

	var bday=frm.bday.value;
	var bmonth=frm.bmonth.value;
	var byear=frm.byear.value;

    var gender=frm.gender;

	var password=frm.password.value;
	var cpassword=frm.cpassword.value;

	var terms=frm.terms;

	var filtername=/^[a-zA-Z]*$/;
	
	if(firstname.length<1)
	{
		document.getElementById('firstname').innerHTML='<blink><font color="yellow"/> Name is Required..!!</blink>';
		
		return false;
	}else if((!filtername.test(firstname))) {
		alert('Name must contains alphabets only !!');
		return false;
		}
	else{
		document.getElementById('firstname').innerHTML='';
		
	  }
		
	if(username.length<1)
	{
		document.getElementById('username').innerHTML='<blink><font color="yellow"/>Username Rquired..!!</blink>';
		return false;
	} else if(username.length<4)
	{
		document.getElementById('username').innerHTML='<blink><font color="yellow"/>Username must have atleast 4 characters..</blink>';
		return false;
	}
      else
	{
		document.getElementById('username').innerHTML='';
	}

	if(bmonth=="Month" || bday=="Day"||byear=="Year")
	{
		document.getElementById('dob').innerHTML='<blink><font color="yellow"/>Please select your Date of Birth..</blink>';
		return false;
	}else{
		document.getElementById('dob').innerHTML='';
		
	  }

	if(gender[0].checked==false && gender[1].checked==false && gender[2].checked==false)
	{
		document.getElementById('gender').innerHTML='<blink><font color="yellow"/>Please choose your Gender..</blink>';
		return false;
	}else{
		document.getElementById('gender').innerHTML='';
		
	  }

	if( password.length<1)
	{
		document.getElementById('password').innerHTML='<blink><font color="yellow"/>Enter password..</blink>';
		return false;
	}else if( password.length<4)
	{
		document.getElementById('password').innerHTML='<blink><font color="yellow"/>Too short..</blink>';
		return false;
	}
	else{
		document.getElementById('password').innerHTML='';
		
	  }

	if(cpassword.length<1)
	{
		document.getElementById('cpassword').innerHTML='<blink><font color="yellow"/>Re-Enter password..</blink>';
		return false;
	}else if(cpassword!=password)
	{
		document.getElementById('cpassword').innerHTML='<blink><font color="yellow"/>Password doesn not match..</blink>';
		return false;
	}else{
		document.getElementById('cpassword').innerHTML='';
		
	  }

	if(terms.checked==false)
	{
		alert("You must agree terms & Conditions..!!")
	 return false;	
	}
}
function checkUsername()
{
	var username=document.getElementById('checkusername').value
  if(username.length>=4)
   {
	//	alert('hii'+username)
	xmlhttp.open("POST","checkusername?username="+username,true);
	document.getElementById("username").innerHTML = '<img src="download.gif" border="0" alt="Loading, please wait..." />';
    xmlhttp.onreadystatechange=function()
    {   
        if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {
document.getElementById("username").innerHTML = xmlhttp.responseText;

         }
      }
      xmlhttp.send(null);
  }
  else
  {
		document.getElementById('username').innerHTML='<blink><font color="yellow"/>Username must have atleast 4 characters..</blink>';
	  
  }
} 

