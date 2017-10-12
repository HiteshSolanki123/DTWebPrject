var $loginForm =$('#loginForm');
if($loginForm.length){
	$loginForm.validate({
		
		
		rules : {
			
			username:{
				
				required:true,
				email:true
			},
			password:{
				required: true
			}
		},
		messages:{
			username:{
				required: 'please enter the username',
				email:'please anter valid email address'
			},
			password:{
				required: 'please enter the password'
			}
		}
	})
}