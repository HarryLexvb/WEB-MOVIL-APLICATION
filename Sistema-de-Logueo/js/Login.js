$(document).ready(function(){
	$("#Iniciar").click(function(){
		var Usuario=$('#usuario').val();
		var Contrasena=$("#contrasena").val();
		//console.log(Usuario,Contrasena);
		$.ajax({
			type:"POST",
			dataType:'json',
			url:'includes/LoginAjax.php',
			data:{Usuario:Usuario,Contrasena:Contrasena},
			success:function(response){
				if(response.respuesta==true){
					$("#mensaje").html(response.mensaje);
					window.location='principal.php';
				}else{
					$("#mensaje").html(response.mensaje);
				}
			},error:function(){
				alert('Error general en el sistema');
			}
		});
	});
});